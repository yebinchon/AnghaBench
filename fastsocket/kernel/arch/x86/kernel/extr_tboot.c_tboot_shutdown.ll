; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tboot.c_tboot_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_tboot.c_tboot_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i64 }

@tboot_pg_dir = common dso_local global i32 0, align 4
@TB_SHUTDOWN_S3 = common dso_local global i64 0, align 8
@tboot = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tboot_shutdown(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca void ()*, align 8
  store i64 %0, i64* %2, align 8
  %4 = call i32 (...) @tboot_enabled()
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  br label %32

7:                                                ; preds = %1
  %8 = load i32, i32* @tboot_pg_dir, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  br label %32

11:                                               ; preds = %7
  %12 = load i64, i64* %2, align 8
  %13 = load i64, i64* @TB_SHUTDOWN_S3, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = call i64 (...) @tboot_setup_sleep()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %32

19:                                               ; preds = %15
  br label %20

20:                                               ; preds = %19, %11
  %21 = load i64, i64* %2, align 8
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tboot, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  store i64 %21, i64* %23, align 8
  %24 = call i32 (...) @switch_to_tboot_pt()
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** @tboot, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to void ()*
  store void ()* %28, void ()** %3, align 8
  %29 = load void ()*, void ()** %3, align 8
  call void %29()
  br label %30

30:                                               ; preds = %20, %30
  %31 = call i32 (...) @halt()
  br label %30

32:                                               ; preds = %18, %10, %6
  ret void
}

declare dso_local i32 @tboot_enabled(...) #1

declare dso_local i64 @tboot_setup_sleep(...) #1

declare dso_local i32 @switch_to_tboot_pt(...) #1

declare dso_local i32 @halt(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
