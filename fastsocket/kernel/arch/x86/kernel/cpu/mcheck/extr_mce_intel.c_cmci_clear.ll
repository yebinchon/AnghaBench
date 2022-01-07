; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce_intel.c_cmci_clear.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kernel/cpu/mcheck/extr_mce_intel.c_cmci_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmci_discover_lock = common dso_local global i32 0, align 4
@mce_banks_owned = common dso_local global i32 0, align 4
@MCI_CTL2_CMCI_EN = common dso_local global i32 0, align 4
@MCI_CTL2_CMCI_THRESHOLD_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cmci_clear() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = call i32 @cmci_supported(i32* %3)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %0
  br label %47

8:                                                ; preds = %0
  %9 = load i64, i64* %1, align 8
  %10 = call i32 @spin_lock_irqsave(i32* @cmci_discover_lock, i64 %9)
  store i32 0, i32* %2, align 4
  br label %11

11:                                               ; preds = %41, %8
  %12 = load i32, i32* %2, align 4
  %13 = load i32, i32* %3, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %44

15:                                               ; preds = %11
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @mce_banks_owned, align 4
  %18 = call i32 @__get_cpu_var(i32 %17)
  %19 = call i32 @test_bit(i32 %16, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %15
  br label %41

22:                                               ; preds = %15
  %23 = load i32, i32* %2, align 4
  %24 = call i32 @MSR_IA32_MCx_CTL2(i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @rdmsrl(i32 %24, i32 %25)
  %27 = load i32, i32* @MCI_CTL2_CMCI_EN, align 4
  %28 = load i32, i32* @MCI_CTL2_CMCI_THRESHOLD_MASK, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %4, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @MSR_IA32_MCx_CTL2(i32 %33)
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @wrmsrl(i32 %34, i32 %35)
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @mce_banks_owned, align 4
  %39 = call i32 @__get_cpu_var(i32 %38)
  %40 = call i32 @__clear_bit(i32 %37, i32 %39)
  br label %41

41:                                               ; preds = %22, %21
  %42 = load i32, i32* %2, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %2, align 4
  br label %11

44:                                               ; preds = %11
  %45 = load i64, i64* %1, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* @cmci_discover_lock, i64 %45)
  br label %47

47:                                               ; preds = %44, %7
  ret void
}

declare dso_local i32 @cmci_supported(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @test_bit(i32, i32) #1

declare dso_local i32 @__get_cpu_var(i32) #1

declare dso_local i32 @rdmsrl(i32, i32) #1

declare dso_local i32 @MSR_IA32_MCx_CTL2(i32) #1

declare dso_local i32 @wrmsrl(i32, i32) #1

declare dso_local i32 @__clear_bit(i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
