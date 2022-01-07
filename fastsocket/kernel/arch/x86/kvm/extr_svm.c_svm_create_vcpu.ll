; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_create_vcpu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/kvm/extr_svm.c_svm_create_vcpu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kvm_vcpu = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.kvm = type { i32 }
%struct.vcpu_svm = type { i32, %struct.kvm_vcpu, i64, i8*, %struct.TYPE_3__, i8*, i32 }
%struct.TYPE_3__ = type { i8*, i8* }
%struct.page = type { i32 }

@kvm_vcpu_cache = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TSC_RATIO_DEFAULT = common dso_local global i32 0, align 4
@MSRPM_ALLOC_ORDER = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_ENABLE = common dso_local global i32 0, align 4
@MSR_IA32_APICBASE_BSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kvm_vcpu* (%struct.kvm*, i32)* @svm_create_vcpu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kvm_vcpu* @svm_create_vcpu(%struct.kvm* %0, i32 %1) #0 {
  %3 = alloca %struct.kvm_vcpu*, align 8
  %4 = alloca %struct.kvm*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.vcpu_svm*, align 8
  %7 = alloca %struct.page*, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca i32, align 4
  store %struct.kvm* %0, %struct.kvm** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load i32, i32* @kvm_vcpu_cache, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.vcpu_svm* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.vcpu_svm* %14, %struct.vcpu_svm** %6, align 8
  %15 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %16 = icmp ne %struct.vcpu_svm* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %11, align 4
  br label %140

20:                                               ; preds = %2
  %21 = load i32, i32* @TSC_RATIO_DEFAULT, align 4
  %22 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %23 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %22, i32 0, i32 6
  store i32 %21, i32* %23, align 8
  %24 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %25 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %24, i32 0, i32 1
  %26 = load %struct.kvm*, %struct.kvm** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @kvm_vcpu_init(%struct.kvm_vcpu* %25, %struct.kvm* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  br label %136

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call %struct.page* @alloc_page(i32 %35)
  store %struct.page* %36, %struct.page** %7, align 8
  %37 = load %struct.page*, %struct.page** %7, align 8
  %38 = icmp ne %struct.page* %37, null
  br i1 %38, label %40, label %39

39:                                               ; preds = %32
  br label %132

40:                                               ; preds = %32
  %41 = load i32, i32* @GFP_KERNEL, align 4
  %42 = load i32, i32* @MSRPM_ALLOC_ORDER, align 4
  %43 = call %struct.page* @alloc_pages(i32 %41, i32 %42)
  store %struct.page* %43, %struct.page** %8, align 8
  %44 = load %struct.page*, %struct.page** %8, align 8
  %45 = icmp ne %struct.page* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %129

47:                                               ; preds = %40
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load i32, i32* @MSRPM_ALLOC_ORDER, align 4
  %50 = call %struct.page* @alloc_pages(i32 %48, i32 %49)
  store %struct.page* %50, %struct.page** %10, align 8
  %51 = load %struct.page*, %struct.page** %10, align 8
  %52 = icmp ne %struct.page* %51, null
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  br label %125

54:                                               ; preds = %47
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.page* @alloc_page(i32 %55)
  store %struct.page* %56, %struct.page** %9, align 8
  %57 = load %struct.page*, %struct.page** %9, align 8
  %58 = icmp ne %struct.page* %57, null
  br i1 %58, label %60, label %59

59:                                               ; preds = %54
  br label %121

60:                                               ; preds = %54
  %61 = load %struct.page*, %struct.page** %9, align 8
  %62 = call i8* @page_address(%struct.page* %61)
  %63 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %64 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %63, i32 0, i32 4
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i8* %62, i8** %65, align 8
  %66 = load %struct.page*, %struct.page** %8, align 8
  %67 = call i8* @page_address(%struct.page* %66)
  %68 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %69 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %68, i32 0, i32 5
  store i8* %67, i8** %69, align 8
  %70 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %71 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %70, i32 0, i32 5
  %72 = load i8*, i8** %71, align 8
  %73 = call i32 @svm_vcpu_init_msrpm(i8* %72)
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = call i8* @page_address(%struct.page* %74)
  %76 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %77 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %76, i32 0, i32 4
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  store i8* %75, i8** %78, align 8
  %79 = load %struct.page*, %struct.page** %7, align 8
  %80 = call i8* @page_address(%struct.page* %79)
  %81 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %82 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %81, i32 0, i32 3
  store i8* %80, i8** %82, align 8
  %83 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %84 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %83, i32 0, i32 3
  %85 = load i8*, i8** %84, align 8
  %86 = call i32 @clear_page(i8* %85)
  %87 = load %struct.page*, %struct.page** %7, align 8
  %88 = call i32 @page_to_pfn(%struct.page* %87)
  %89 = load i32, i32* @PAGE_SHIFT, align 4
  %90 = shl i32 %88, %89
  %91 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %92 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  %93 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %94 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %93, i32 0, i32 2
  store i64 0, i64* %94, align 8
  %95 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %96 = call i32 @init_vmcb(%struct.vcpu_svm* %95)
  %97 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %98 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %97, i32 0, i32 1
  %99 = call i32 @fx_init(%struct.kvm_vcpu* %98)
  %100 = load i32, i32* @MSR_IA32_APICBASE_ENABLE, align 4
  %101 = or i32 -18874368, %100
  %102 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %103 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  store i32 %101, i32* %105, align 4
  %106 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %107 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %106, i32 0, i32 1
  %108 = call i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu* %107)
  %109 = icmp ne i64 %108, 0
  br i1 %109, label %110, label %118

110:                                              ; preds = %60
  %111 = load i32, i32* @MSR_IA32_APICBASE_BSP, align 4
  %112 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %113 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %112, i32 0, i32 1
  %114 = getelementptr inbounds %struct.kvm_vcpu, %struct.kvm_vcpu* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %116, %111
  store i32 %117, i32* %115, align 4
  br label %118

118:                                              ; preds = %110, %60
  %119 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %120 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %119, i32 0, i32 1
  store %struct.kvm_vcpu* %120, %struct.kvm_vcpu** %3, align 8
  br label %143

121:                                              ; preds = %59
  %122 = load %struct.page*, %struct.page** %10, align 8
  %123 = load i32, i32* @MSRPM_ALLOC_ORDER, align 4
  %124 = call i32 @__free_pages(%struct.page* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %53
  %126 = load %struct.page*, %struct.page** %8, align 8
  %127 = load i32, i32* @MSRPM_ALLOC_ORDER, align 4
  %128 = call i32 @__free_pages(%struct.page* %126, i32 %127)
  br label %129

129:                                              ; preds = %125, %46
  %130 = load %struct.page*, %struct.page** %7, align 8
  %131 = call i32 @__free_page(%struct.page* %130)
  br label %132

132:                                              ; preds = %129, %39
  %133 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %134 = getelementptr inbounds %struct.vcpu_svm, %struct.vcpu_svm* %133, i32 0, i32 1
  %135 = call i32 @kvm_vcpu_uninit(%struct.kvm_vcpu* %134)
  br label %136

136:                                              ; preds = %132, %31
  %137 = load i32, i32* @kvm_vcpu_cache, align 4
  %138 = load %struct.vcpu_svm*, %struct.vcpu_svm** %6, align 8
  %139 = call i32 @kmem_cache_free(i32 %137, %struct.vcpu_svm* %138)
  br label %140

140:                                              ; preds = %136, %17
  %141 = load i32, i32* %11, align 4
  %142 = call %struct.kvm_vcpu* @ERR_PTR(i32 %141)
  store %struct.kvm_vcpu* %142, %struct.kvm_vcpu** %3, align 8
  br label %143

143:                                              ; preds = %140, %118
  %144 = load %struct.kvm_vcpu*, %struct.kvm_vcpu** %3, align 8
  ret %struct.kvm_vcpu* %144
}

declare dso_local %struct.vcpu_svm* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kvm_vcpu_init(%struct.kvm_vcpu*, %struct.kvm*, i32) #1

declare dso_local %struct.page* @alloc_page(i32) #1

declare dso_local %struct.page* @alloc_pages(i32, i32) #1

declare dso_local i8* @page_address(%struct.page*) #1

declare dso_local i32 @svm_vcpu_init_msrpm(i8*) #1

declare dso_local i32 @clear_page(i8*) #1

declare dso_local i32 @page_to_pfn(%struct.page*) #1

declare dso_local i32 @init_vmcb(%struct.vcpu_svm*) #1

declare dso_local i32 @fx_init(%struct.kvm_vcpu*) #1

declare dso_local i64 @kvm_vcpu_is_bsp(%struct.kvm_vcpu*) #1

declare dso_local i32 @__free_pages(%struct.page*, i32) #1

declare dso_local i32 @__free_page(%struct.page*) #1

declare dso_local i32 @kvm_vcpu_uninit(%struct.kvm_vcpu*) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.vcpu_svm*) #1

declare dso_local %struct.kvm_vcpu* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
