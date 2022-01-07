; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_pv_mmu_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_mmu.c_kvm_pv_mmu_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }

@EFAULT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kvm_vcpu*, i32, i32)* @kvm_pv_mmu_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kvm_pv_mmu_write(%struct.kvm_vcpu* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kvm_vcpu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 8, i32* %8, align 4
  %10 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %11 = call i32 @is_long_mode(%struct.kvm_vcpu* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %3
  %14 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %15 = call i32 @is_pae(%struct.kvm_vcpu* %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %13
  store i32 4, i32* %8, align 4
  br label %18

18:                                               ; preds = %17, %13, %3
  %19 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %20 = call i32 @mmu_topup_memory_caches(%struct.kvm_vcpu* %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  store i32 %24, i32* %4, align 4
  br label %35

25:                                               ; preds = %18
  %26 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %8, align 4
  %29 = call i32 @emulator_write_phys(%struct.kvm_vcpu* %26, i32 %27, i32* %7, i32 %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @EFAULT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %35

34:                                               ; preds = %25
  store i32 1, i32* %4, align 4
  br label %35

35:                                               ; preds = %34, %31, %23
  %36 = load i32, i32* %4, align 4
  ret i32 %36
}

declare dso_local i32 @is_long_mode(%struct.kvm_vcpu*) #1

declare dso_local i32 @is_pae(%struct.kvm_vcpu*) #1

declare dso_local i32 @mmu_topup_memory_caches(%struct.kvm_vcpu*) #1

declare dso_local i32 @emulator_write_phys(%struct.kvm_vcpu*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
