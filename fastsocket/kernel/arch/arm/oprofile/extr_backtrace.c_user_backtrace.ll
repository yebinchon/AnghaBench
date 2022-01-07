; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_backtrace.c_user_backtrace.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/oprofile/extr_backtrace.c_user_backtrace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.frame_tail = type { %struct.frame_tail*, i32 }

@VERIFY_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.frame_tail* (%struct.frame_tail*)* @user_backtrace to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.frame_tail* @user_backtrace(%struct.frame_tail* %0) #0 {
  %2 = alloca %struct.frame_tail*, align 8
  %3 = alloca %struct.frame_tail*, align 8
  %4 = alloca [2 x %struct.frame_tail], align 16
  store %struct.frame_tail* %0, %struct.frame_tail** %3, align 8
  %5 = load i32, i32* @VERIFY_READ, align 4
  %6 = load %struct.frame_tail*, %struct.frame_tail** %3, align 8
  %7 = call i32 @access_ok(i32 %5, %struct.frame_tail* %6, i32 32)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  store %struct.frame_tail* null, %struct.frame_tail** %2, align 8
  br label %32

10:                                               ; preds = %1
  %11 = getelementptr inbounds [2 x %struct.frame_tail], [2 x %struct.frame_tail]* %4, i64 0, i64 0
  %12 = load %struct.frame_tail*, %struct.frame_tail** %3, align 8
  %13 = call i64 @__copy_from_user_inatomic(%struct.frame_tail* %11, %struct.frame_tail* %12, i32 32)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  store %struct.frame_tail* null, %struct.frame_tail** %2, align 8
  br label %32

16:                                               ; preds = %10
  %17 = getelementptr inbounds [2 x %struct.frame_tail], [2 x %struct.frame_tail]* %4, i64 0, i64 0
  %18 = getelementptr inbounds %struct.frame_tail, %struct.frame_tail* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = call i32 @oprofile_add_trace(i32 %19)
  %21 = load %struct.frame_tail*, %struct.frame_tail** %3, align 8
  %22 = getelementptr inbounds [2 x %struct.frame_tail], [2 x %struct.frame_tail]* %4, i64 0, i64 0
  %23 = getelementptr inbounds %struct.frame_tail, %struct.frame_tail* %22, i32 0, i32 0
  %24 = load %struct.frame_tail*, %struct.frame_tail** %23, align 16
  %25 = icmp uge %struct.frame_tail* %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %16
  store %struct.frame_tail* null, %struct.frame_tail** %2, align 8
  br label %32

27:                                               ; preds = %16
  %28 = getelementptr inbounds [2 x %struct.frame_tail], [2 x %struct.frame_tail]* %4, i64 0, i64 0
  %29 = getelementptr inbounds %struct.frame_tail, %struct.frame_tail* %28, i32 0, i32 0
  %30 = load %struct.frame_tail*, %struct.frame_tail** %29, align 16
  %31 = getelementptr inbounds %struct.frame_tail, %struct.frame_tail* %30, i64 -1
  store %struct.frame_tail* %31, %struct.frame_tail** %2, align 8
  br label %32

32:                                               ; preds = %27, %26, %15, %9
  %33 = load %struct.frame_tail*, %struct.frame_tail** %2, align 8
  ret %struct.frame_tail* %33
}

declare dso_local i32 @access_ok(i32, %struct.frame_tail*, i32) #1

declare dso_local i64 @__copy_from_user_inatomic(%struct.frame_tail*, %struct.frame_tail*, i32) #1

declare dso_local i32 @oprofile_add_trace(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
