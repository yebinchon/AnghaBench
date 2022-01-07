; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_dev_ioctl_check_extension.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_dev_ioctl_check_extension.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@KVM_COALESCED_MMIO_PAGE_OFFSET = common dso_local global i32 0, align 4
@kvm_x86_ops = common dso_local global %struct.TYPE_2__* null, align 8
@KVM_MAX_VCPUS = common dso_local global i32 0, align 4
@KVM_MEMORY_SLOTS = common dso_local global i32 0, align 4
@KVM_MAX_MCE_BANKS = common dso_local global i32 0, align 4
@cpu_has_xsave = common dso_local global i32 0, align 4
@kvm_has_tsc_control = common dso_local global i32 0, align 4
@X86_FEATURE_TSC_DEADLINE_TIMER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_dev_ioctl_check_extension(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  switch i64 %4, label %32 [
    i64 151, label %5
    i64 155, label %5
    i64 146, label %5
    i64 135, label %5
    i64 157, label %5
    i64 159, label %5
    i64 141, label %5
    i64 144, label %5
    i64 145, label %5
    i64 134, label %5
    i64 137, label %5
    i64 149, label %5
    i64 160, label %5
    i64 150, label %5
    i64 153, label %5
    i64 140, label %5
    i64 139, label %5
    i64 136, label %5
    i64 161, label %5
    i64 130, label %5
    i64 154, label %5
    i64 128, label %5
    i64 156, label %5
    i64 148, label %5
    i64 158, label %6
    i64 131, label %8
    i64 142, label %16
    i64 143, label %18
    i64 138, label %20
    i64 152, label %21
    i64 147, label %23
    i64 129, label %25
    i64 133, label %27
    i64 132, label %29
  ]

5:                                                ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1
  store i32 1, i32* %3, align 4
  br label %33

6:                                                ; preds = %1
  %7 = load i32, i32* @KVM_COALESCED_MMIO_PAGE_OFFSET, align 4
  store i32 %7, i32* %3, align 4
  br label %33

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @kvm_x86_ops, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32 (...)*, i32 (...)** %10, align 8
  %12 = call i32 (...) %11()
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  store i32 %15, i32* %3, align 4
  br label %33

16:                                               ; preds = %1
  %17 = load i32, i32* @KVM_MAX_VCPUS, align 4
  store i32 %17, i32* %3, align 4
  br label %33

18:                                               ; preds = %1
  %19 = load i32, i32* @KVM_MEMORY_SLOTS, align 4
  store i32 %19, i32* %3, align 4
  br label %33

20:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %33

21:                                               ; preds = %1
  %22 = call i32 (...) @iommu_found()
  store i32 %22, i32* %3, align 4
  br label %33

23:                                               ; preds = %1
  %24 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  store i32 %24, i32* %3, align 4
  br label %33

25:                                               ; preds = %1
  %26 = load i32, i32* @cpu_has_xsave, align 4
  store i32 %26, i32* %3, align 4
  br label %33

27:                                               ; preds = %1
  %28 = load i32, i32* @kvm_has_tsc_control, align 4
  store i32 %28, i32* %3, align 4
  br label %33

29:                                               ; preds = %1
  %30 = load i32, i32* @X86_FEATURE_TSC_DEADLINE_TIMER, align 4
  %31 = call i32 @boot_cpu_has(i32 %30)
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %29, %27, %25, %23, %21, %20, %18, %16, %8, %6, %5
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @iommu_found(...) #1

declare dso_local i32 @boot_cpu_has(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
