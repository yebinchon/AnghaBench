; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_32.c_profile_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_time_32.c_profile_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64, i64* }

@__copy_user_begin = external dso_local global [0 x i8], align 1
@__copy_user_end = external dso_local global [0 x i8], align 1
@__atomic_begin = external dso_local global [0 x i8], align 1
@__atomic_end = external dso_local global [0 x i8], align 1
@__bzero_begin = external dso_local global [0 x i8], align 1
@__bzero_end = external dso_local global [0 x i8], align 1
@UREG_RETPC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @profile_pc(%struct.pt_regs* %0) #0 {
  %2 = alloca %struct.pt_regs*, align 8
  %3 = alloca i64, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %2, align 8
  %4 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %5 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  store i64 %6, i64* %3, align 8
  %7 = load i64, i64* %3, align 8
  %8 = call i64 @in_lock_functions(i64 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %28, label %10

10:                                               ; preds = %1
  %11 = load i64, i64* %3, align 8
  %12 = icmp uge i64 %11, ptrtoint ([0 x i8]* @__copy_user_begin to i64)
  br i1 %12, label %13, label %16

13:                                               ; preds = %10
  %14 = load i64, i64* %3, align 8
  %15 = icmp ult i64 %14, ptrtoint ([0 x i8]* @__copy_user_end to i64)
  br i1 %15, label %28, label %16

16:                                               ; preds = %13, %10
  %17 = load i64, i64* %3, align 8
  %18 = icmp uge i64 %17, ptrtoint ([0 x i8]* @__atomic_begin to i64)
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* %3, align 8
  %21 = icmp ult i64 %20, ptrtoint ([0 x i8]* @__atomic_end to i64)
  br i1 %21, label %28, label %22

22:                                               ; preds = %19, %16
  %23 = load i64, i64* %3, align 8
  %24 = icmp uge i64 %23, ptrtoint ([0 x i8]* @__bzero_begin to i64)
  br i1 %24, label %25, label %35

25:                                               ; preds = %22
  %26 = load i64, i64* %3, align 8
  %27 = icmp ult i64 %26, ptrtoint ([0 x i8]* @__bzero_end to i64)
  br i1 %27, label %28, label %35

28:                                               ; preds = %25, %19, %13, %1
  %29 = load %struct.pt_regs*, %struct.pt_regs** %2, align 8
  %30 = getelementptr inbounds %struct.pt_regs, %struct.pt_regs* %29, i32 0, i32 1
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* @UREG_RETPC, align 8
  %33 = getelementptr inbounds i64, i64* %31, i64 %32
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %3, align 8
  br label %35

35:                                               ; preds = %28, %25, %22
  %36 = load i64, i64* %3, align 8
  ret i64 %36
}

declare dso_local i64 @in_lock_functions(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
