; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_track_pfn_vma_new.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/mm/extr_pat.c_track_pfn_vma_new.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i64, i64, i32, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@pat_enabled = common dso_local global i32 0, align 4
@_PAGE_CACHE_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @track_pfn_vma_new(%struct.vm_area_struct* %0, i32* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store i32* %1, i32** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %14 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %17 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = sub i64 %15, %18
  store i64 %19, i64* %12, align 8
  %20 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %21 = call i64 @is_linear_pfn_mapping(%struct.vm_area_struct* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %33

23:                                               ; preds = %4
  %24 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %25 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @PAGE_SHIFT, align 8
  %28 = shl i64 %26, %27
  store i64 %28, i64* %11, align 8
  %29 = load i64, i64* %11, align 8
  %30 = load i64, i64* %12, align 8
  %31 = load i32*, i32** %7, align 8
  %32 = call i32 @reserve_pfn_range(i64 %29, i64 %30, i32* %31, i32 0)
  store i32 %32, i32* %5, align 4
  br label %53

33:                                               ; preds = %4
  %34 = load i32, i32* @pat_enabled, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %33
  store i32 0, i32* %5, align 4
  br label %53

37:                                               ; preds = %33
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @PAGE_SHIFT, align 8
  %40 = shl i64 %38, %39
  %41 = call i64 @lookup_memtype(i64 %40)
  store i64 %41, i64* %10, align 8
  %42 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %43 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @pgprot_val(i32 %44)
  %46 = load i64, i64* @_PAGE_CACHE_MASK, align 8
  %47 = xor i64 %46, -1
  %48 = and i64 %45, %47
  %49 = load i64, i64* %10, align 8
  %50 = or i64 %48, %49
  %51 = call i32 @__pgprot(i64 %50)
  %52 = load i32*, i32** %7, align 8
  store i32 %51, i32* %52, align 4
  store i32 0, i32* %5, align 4
  br label %53

53:                                               ; preds = %37, %36, %23
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i64 @is_linear_pfn_mapping(%struct.vm_area_struct*) #1

declare dso_local i32 @reserve_pfn_range(i64, i64, i32*, i32) #1

declare dso_local i64 @lookup_memtype(i64) #1

declare dso_local i32 @__pgprot(i64) #1

declare dso_local i64 @pgprot_val(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
