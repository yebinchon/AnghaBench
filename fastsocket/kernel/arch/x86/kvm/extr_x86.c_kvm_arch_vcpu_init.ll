; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_x86.c_kvm_arch_vcpu_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__, %struct.kvm* }
%struct.TYPE_4__ = type { i32, i32, i64, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.kvm = type { i32 }
%struct.page = type { i32 }

@INVALID_PAGE = common dso_local global i32 0, align 4
@KVM_MP_STATE_RUNNABLE = common dso_local global i32 0, align 4
@KVM_MP_STATE_UNINITIALIZED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@max_tsc_khz = common dso_local global i32 0, align 4
@KVM_MAX_MCE_BANKS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kvm_arch_vcpu_init(%struct.kvm_vcpu* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.page*, align 8
  %5 = alloca %struct.kvm*, align 8
  %6 = alloca i32, align 4
  store %struct.kvm_vcpu* %0, %struct.kvm_vcpu** %3, align 8
  %7 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %8 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %7, i32 0, i32 1
  %9 = load %struct.kvm*, %struct.kvm** %8, align 8
  %10 = icmp eq %struct.kvm* %9, null
  %11 = zext i1 %10 to i32
  %12 = call i32 @BUG_ON(i32 %11)
  %13 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %14 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %13, i32 0, i32 1
  %15 = load %struct.kvm*, %struct.kvm** %14, align 8
  store %struct.kvm* %15, %struct.kvm** %5, align 8
  %16 = load i32, i32* @INVALID_PAGE, align 4
  %17 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %18 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 5
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  store i32 %16, i32* %20, align 8
  %21 = load %struct.kvm*, %struct.kvm** %5, align 8
  %22 = call i64 @irqchip_in_kernel(%struct.kvm* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %1
  %25 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %26 = call i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %24, %1
  %29 = load i32, i32* @KVM_MP_STATE_RUNNABLE, align 4
  %30 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %31 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 4
  store i32 %29, i32* %32, align 4
  br label %38

33:                                               ; preds = %24
  %34 = load i32, i32* @KVM_MP_STATE_UNINITIALIZED, align 4
  %35 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %36 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 4
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %33, %28
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = load i32, i32* @__GFP_ZERO, align 4
  %41 = or i32 %39, %40
  %42 = call %struct.page* @alloc_page(i32 %41)
  store %struct.page* %42, %struct.page** %4, align 8
  %43 = load %struct.page*, %struct.page** %4, align 8
  %44 = icmp ne %struct.page* %43, null
  br i1 %44, label %48, label %45

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %6, align 4
  br label %114

48:                                               ; preds = %38
  %49 = load %struct.page*, %struct.page** %4, align 8
  %50 = call i64 @page_address(%struct.page* %49)
  %51 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %52 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 2
  store i64 %50, i64* %53, align 8
  %54 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %55 = load i32, i32* @max_tsc_khz, align 4
  %56 = call i32 @kvm_init_tsc_catchup(%struct.kvm_vcpu* %54, i32 %55)
  %57 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %58 = call i32 @kvm_mmu_create(%struct.kvm_vcpu* %57)
  store i32 %58, i32* %6, align 4
  %59 = load i32, i32* %6, align 4
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %48
  br label %108

62:                                               ; preds = %48
  %63 = load %struct.kvm*, %struct.kvm** %5, align 8
  %64 = call i64 @irqchip_in_kernel(%struct.kvm* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %73

66:                                               ; preds = %62
  %67 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %68 = call i32 @kvm_create_lapic(%struct.kvm_vcpu* %67)
  store i32 %68, i32* %6, align 4
  %69 = load i32, i32* %6, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  br label %105

72:                                               ; preds = %66
  br label %73

73:                                               ; preds = %72, %62
  %74 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  %75 = sext i32 %74 to i64
  %76 = mul i64 %75, 4
  %77 = mul i64 %76, 4
  %78 = trunc i64 %77 to i32
  %79 = load i32, i32* @GFP_KERNEL, align 4
  %80 = call i32 @kzalloc(i32 %78, i32 %79)
  %81 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %82 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  store i32 %80, i32* %83, align 8
  %84 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %85 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 3
  %87 = load i32, i32* %86, align 8
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %73
  %90 = load i32, i32* @ENOMEM, align 4
  %91 = sub nsw i32 0, %90
  store i32 %91, i32* %6, align 4
  br label %102

92:                                               ; preds = %73
  %93 = load i32, i32* @KVM_MAX_MCE_BANKS, align 4
  %94 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %95 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  store i32 %93, i32* %96, align 8
  %97 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %98 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 1
  store i32 0, i32* %99, align 4
  %100 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %101 = call i32 @kvm_pmu_init(%struct.kvm_vcpu* %100)
  store i32 0, i32* %2, align 4
  br label %116

102:                                              ; preds = %89
  %103 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %104 = call i32 @kvm_free_lapic(%struct.kvm_vcpu* %103)
  br label %105

105:                                              ; preds = %102, %71
  %106 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %107 = call i32 @kvm_mmu_destroy(%struct.kvm_vcpu* %106)
  br label %108

108:                                              ; preds = %105, %61
  %109 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  %110 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = call i32 @free_page(i64 %112)
  br label %114

114:                                              ; preds = %108, %45
  %115 = load i32, i32* %6, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %92
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @irqchip_in_kernel(%struct.kvm*) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu*) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local i64 @page_address(%struct.page*) #1

declare dso_local i32 @kvm_init_tsc_catchup(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @kvm_mmu_create(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_create_lapic(%struct.kvm_vcpu*) #1

declare dso_local i32 @kzalloc(i32, i32) #1

declare dso_local i32 @kvm_pmu_init(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_free_lapic(%struct.kvm_vcpu*) #1

declare dso_local i32 @kvm_mmu_destroy(%struct.kvm_vcpu*) #1

declare dso_local i32 @free_page(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
