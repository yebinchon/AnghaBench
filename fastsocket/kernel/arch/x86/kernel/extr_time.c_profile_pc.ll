; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_time.c_profile_pc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/extr_time.c_profile_pc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @profile_pc(%struct.pt_regs* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.pt_regs*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64*, align 8
  store %struct.pt_regs* %0, %struct.pt_regs** %3, align 8
  %6 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %7 = call i64 @instruction_pointer(%struct.pt_regs* %6)
  store i64 %7, i64* %4, align 8
  %8 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %9 = call i32 @user_mode_vm(%struct.pt_regs* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %39, label %11

11:                                               ; preds = %1
  %12 = load i64, i64* %4, align 8
  %13 = call i64 @in_lock_functions(i64 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %39

15:                                               ; preds = %11
  %16 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %17 = call i64 @kernel_stack_pointer(%struct.pt_regs* %16)
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %5, align 8
  %19 = load i64*, i64** %5, align 8
  %20 = getelementptr inbounds i64, i64* %19, i64 0
  %21 = load i64, i64* %20, align 8
  %22 = lshr i64 %21, 22
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i64*, i64** %5, align 8
  %26 = getelementptr inbounds i64, i64* %25, i64 0
  %27 = load i64, i64* %26, align 8
  store i64 %27, i64* %2, align 8
  br label %41

28:                                               ; preds = %15
  %29 = load i64*, i64** %5, align 8
  %30 = getelementptr inbounds i64, i64* %29, i64 1
  %31 = load i64, i64* %30, align 8
  %32 = lshr i64 %31, 22
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %28
  %35 = load i64*, i64** %5, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 1
  %37 = load i64, i64* %36, align 8
  store i64 %37, i64* %2, align 8
  br label %41

38:                                               ; preds = %28
  br label %39

39:                                               ; preds = %38, %11, %1
  %40 = load i64, i64* %4, align 8
  store i64 %40, i64* %2, align 8
  br label %41

41:                                               ; preds = %39, %34, %24
  %42 = load i64, i64* %2, align 8
  ret i64 %42
}

declare dso_local i64 @instruction_pointer(%struct.pt_regs*) #1

declare dso_local i32 @user_mode_vm(%struct.pt_regs*) #1

declare dso_local i64 @in_lock_functions(i64) #1

declare dso_local i64 @kernel_stack_pointer(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
