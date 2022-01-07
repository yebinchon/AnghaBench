; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_backtrace.c_dump_user_backtrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/avr32/oprofile/extr_backtrace.c_dump_user_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_head = type { %struct.frame_head*, i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame_head* (%struct.frame_head*)* @dump_user_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame_head* @dump_user_backtrace(%struct.frame_head* %0) #0 {
  %2 = alloca %struct.frame_head*, align 8
  %3 = alloca %struct.frame_head*, align 8
  %4 = alloca [2 x %struct.frame_head], align 16
  store %struct.frame_head* %0, %struct.frame_head** %3, align 8
  %5 = load i32, i32* @VERIFY_READ, align 4
  %6 = load %struct.frame_head*, %struct.frame_head** %3, align 8
  %7 = call i32 @access_ok(i32 %5, %struct.frame_head* %6, i32 32)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.frame_head* null, %struct.frame_head** %2, align 8
  br label %31

10:                                               ; preds = %1
  %11 = getelementptr inbounds [2 x %struct.frame_head], [2 x %struct.frame_head]* %4, i64 0, i64 0
  %12 = load %struct.frame_head*, %struct.frame_head** %3, align 8
  %13 = call i64 @__copy_from_user_inatomic(%struct.frame_head* %11, %struct.frame_head* %12, i32 32)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.frame_head* null, %struct.frame_head** %2, align 8
  br label %31

16:                                               ; preds = %10
  %17 = getelementptr inbounds [2 x %struct.frame_head], [2 x %struct.frame_head]* %4, i64 0, i64 0
  %18 = getelementptr inbounds %struct.frame_head, %struct.frame_head* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @oprofile_add_trace(i32 %19)
  %21 = getelementptr inbounds [2 x %struct.frame_head], [2 x %struct.frame_head]* %4, i64 0, i64 0
  %22 = getelementptr inbounds %struct.frame_head, %struct.frame_head* %21, i32 0, i32 0
  %23 = load %struct.frame_head*, %struct.frame_head** %22, align 16
  %24 = load %struct.frame_head*, %struct.frame_head** %3, align 8
  %25 = icmp ule %struct.frame_head* %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store %struct.frame_head* null, %struct.frame_head** %2, align 8
  br label %31

27:                                               ; preds = %16
  %28 = getelementptr inbounds [2 x %struct.frame_head], [2 x %struct.frame_head]* %4, i64 0, i64 0
  %29 = getelementptr inbounds %struct.frame_head, %struct.frame_head* %28, i32 0, i32 0
  %30 = load %struct.frame_head*, %struct.frame_head** %29, align 16
  store %struct.frame_head* %30, %struct.frame_head** %2, align 8
  br label %31

31:                                               ; preds = %27, %26, %15, %9
  %32 = load %struct.frame_head*, %struct.frame_head** %2, align 8
  ret %struct.frame_head* %32
}

declare dso_local i32 @access_ok(i32, %struct.frame_head*, i32) #1

declare dso_local i64 @__copy_from_user_inatomic(%struct.frame_head*, %struct.frame_head*, i32) #1

declare dso_local i32 @oprofile_add_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
