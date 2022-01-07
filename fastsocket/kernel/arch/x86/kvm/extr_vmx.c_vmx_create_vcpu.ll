; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_create_vcpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_vmx.c_vmx_create_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { i32 }
%struct.kvm = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.vcpu_vmx = type { %struct.kvm_vcpu, i32, i32 }

@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@enable_ept = common dso_local global i64 0, align 8
@VMX_EPT_IDENTITY_PAGETABLE_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.kvm*, i32)* @vmx_create_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @vmx_create_vcpu(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vcpu_vmx*, align 8
  %8 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @kvm_vcpu_cache, align 4
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.vcpu_vmx* @kmem_cache_zalloc(i32 %9, i32 %10)
  store %struct.vcpu_vmx* %11, %struct.vcpu_vmx** %7, align 8
  %12 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %13 = icmp ne %struct.vcpu_vmx* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @ENOMEM, align 4
  %16 = sub nsw i32 0, %15
  %17 = call %struct.kvm_vcpu* @ERR_PTR(i32 %16)
  store %struct.kvm_vcpu* %17, %struct.kvm_vcpu** %3, align 8
  br label %136

18:                                               ; preds = %2
  %19 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %20 = call i32 @allocate_vpid(%struct.vcpu_vmx* %19)
  %21 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %22 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %21, i32 0, i32 0
  %23 = load %struct.kvm*, %struct.kvm** %4, align 8
  %24 = load i32, i32* %5, align 4
  %25 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %22, %struct.kvm* %23, i32 %24)
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %6, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %18
  br label %128

29:                                               ; preds = %18
  %30 = load i32, i32* @PAGE_SIZE, align 4
  %31 = load i32, i32* @GFP_KERNEL, align 4
  %32 = call i32 @kmalloc(i32 %30, i32 %31)
  %33 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %34 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %36 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %29
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %124

42:                                               ; preds = %29
  %43 = call i32 (...) @alloc_vmcs()
  %44 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %45 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 4
  %46 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %47 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %51, label %50

50:                                               ; preds = %42
  br label %119

51:                                               ; preds = %42
  %52 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %53 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @vmcs_init(i32 %54)
  %56 = call i32 (...) @get_cpu()
  store i32 %56, i32* %8, align 4
  %57 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %58 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %57, i32 0, i32 0
  %59 = load i32, i32* %8, align 4
  %60 = call i32 @vmx_vcpu_load(%struct.kvm_vcpu* %58, i32 %59)
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %63 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 4
  %65 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %66 = call i32 @vmx_vcpu_setup(%struct.vcpu_vmx* %65)
  store i32 %66, i32* %6, align 4
  %67 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %68 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %67, i32 0, i32 0
  %69 = call i32 @vmx_vcpu_put(%struct.kvm_vcpu* %68)
  %70 = call i32 (...) @put_cpu()
  %71 = load i32, i32* %6, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %51
  br label %114

74:                                               ; preds = %51
  %75 = load %struct.kvm*, %struct.kvm** %4, align 8
  %76 = call i64 @vm_need_virtualize_apic_accesses(%struct.kvm* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %74
  %79 = load %struct.kvm*, %struct.kvm** %4, align 8
  %80 = call i64 @alloc_apic_access_page(%struct.kvm* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %83

82:                                               ; preds = %78
  br label %114

83:                                               ; preds = %78
  br label %84

84:                                               ; preds = %83, %74
  %85 = load i64, i64* @enable_ept, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %111

87:                                               ; preds = %84
  %88 = load %struct.kvm*, %struct.kvm** %4, align 8
  %89 = getelementptr inbounds %struct.kvm, %struct.kvm* %88, i32 0, i32 0
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %87
  %94 = load i64, i64* @VMX_EPT_IDENTITY_PAGETABLE_ADDR, align 8
  %95 = load %struct.kvm*, %struct.kvm** %4, align 8
  %96 = getelementptr inbounds %struct.kvm, %struct.kvm* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  store i64 %94, i64* %97, align 8
  br label %98

98:                                               ; preds = %93, %87
  %99 = load i32, i32* @ENOMEM, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %6, align 4
  %101 = load %struct.kvm*, %struct.kvm** %4, align 8
  %102 = call i64 @alloc_identity_pagetable(%struct.kvm* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %98
  br label %114

105:                                              ; preds = %98
  %106 = load %struct.kvm*, %struct.kvm** %4, align 8
  %107 = call i32 @init_rmode_identity_map(%struct.kvm* %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %110, label %109

109:                                              ; preds = %105
  br label %114

110:                                              ; preds = %105
  br label %111

111:                                              ; preds = %110, %84
  %112 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %113 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %112, i32 0, i32 0
  store %struct.kvm_vcpu* %113, %struct.kvm_vcpu** %3, align 8
  br label %136

114:                                              ; preds = %109, %104, %82, %73
  %115 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %116 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @free_vmcs(i32 %117)
  br label %119

119:                                              ; preds = %114, %50
  %120 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %121 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @kfree(i32 %122)
  br label %124

124:                                              ; preds = %119, %39
  %125 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %126 = getelementptr inbounds %struct.vcpu_vmx, %struct.vcpu_vmx* %125, i32 0, i32 0
  %127 = call i32 @kvm_vcpu_uninit(%struct.kvm_vcpu* %126)
  br label %128

128:                                              ; preds = %124, %28
  %129 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %130 = call i32 @free_vpid(%struct.vcpu_vmx* %129)
  %131 = load i32, i32* @kvm_vcpu_cache, align 4
  %132 = load %struct.vcpu_vmx*, %struct.vcpu_vmx** %7, align 8
  %133 = call i32 @kmem_cache_free(i32 %131, %struct.vcpu_vmx* %132)
  %134 = load i32, i32* %6, align 4
  %135 = call %struct.kvm_vcpu* @ERR_PTR(i32 %134)
  store %struct.kvm_vcpu* %135, %struct.kvm_vcpu** %3, align 8
  br label %136

136:                                              ; preds = %128, %111, %14
  %137 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %137
}

declare dso_local %struct.vcpu_vmx* @kmem_cache_zalloc(i32, i32) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

declare dso_local i32 @allocate_vpid(%struct.vcpu_vmx*) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local i32 @kmalloc(i32, i32) #1

declare dso_local i32 @alloc_vmcs(...) #1

declare dso_local i32 @vmcs_init(i32) #1

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @vmx_vcpu_load(%struct.kvm_vcpu*, i32) #1

declare dso_local i32 @vmx_vcpu_setup(%struct.vcpu_vmx*) #1

declare dso_local i32 @vmx_vcpu_put(%struct.kvm_vcpu*) #1

declare dso_local i32 @put_cpu(...) #1

declare dso_local i64 @vm_need_virtualize_apic_accesses(%struct.kvm*) #1

declare dso_local i64 @alloc_apic_access_page(%struct.kvm*) #1

declare dso_local i64 @alloc_identity_pagetable(%struct.kvm*) #1

declare dso_local i32 @init_rmode_identity_map(%struct.kvm*) #1

declare dso_local i32 @free_vmcs(i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @kvm_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @free_vpid(%struct.vcpu_vmx*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vcpu_vmx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
