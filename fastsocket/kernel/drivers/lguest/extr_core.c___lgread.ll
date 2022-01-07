; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_core.c___lgread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/lguest/extr_core.c___lgread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lg_cpu = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [29 x i8] c"bad read address %#lx len %u\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @__lgread(%struct.lg_cpu* %0, i8* %1, i64 %2, i32 %3) #0 {
  %5 = alloca %struct.lg_cpu*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.lg_cpu* %0, %struct.lg_cpu** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %10 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @lguest_address_ok(%struct.TYPE_2__* %11, i64 %12, i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %28

16:                                               ; preds = %4
  %17 = load i8*, i8** %6, align 8
  %18 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %19 = getelementptr inbounds %struct.lg_cpu, %struct.lg_cpu* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = add i64 %22, %23
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @copy_from_user(i8* %17, i64 %24, i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %16, %4
  %29 = load i8*, i8** %6, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32 @memset(i8* %29, i32 0, i32 %30)
  %32 = load %struct.lg_cpu*, %struct.lg_cpu** %5, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i32, i32* %8, align 4
  %35 = call i32 @kill_guest(%struct.lg_cpu* %32, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %33, i32 %34)
  br label %36

36:                                               ; preds = %28, %16
  ret void
}

declare dso_local i32 @lguest_address_ok(%struct.TYPE_2__*, i64, i32) #1

declare dso_local i64 @copy_from_user(i8*, i64, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @kill_guest(%struct.lg_cpu*, i8*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
