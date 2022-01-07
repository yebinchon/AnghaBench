; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mem_mmap_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_mem_mmap_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vm_area_struct = type { i32, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.spu_context* }
%struct.spu_context = type { i64, %struct.TYPE_6__*, %struct.spu_state }
%struct.TYPE_6__ = type { i64 }
%struct.spu_state = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.vm_fault = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@LS_SIZE = common dso_local global i64 0, align 8
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"spufs_mem_mmap_fault address=0x%lx, offset=0x%lx\0A\00", align 1
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@SPU_STATE_SAVED = common dso_local global i64 0, align 8
@MMU_PAGE_64K = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*)* @spufs_mem_mmap_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_mem_mmap_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vm_area_struct*, align 8
  %5 = alloca %struct.vm_fault*, align 8
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %4, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %5, align 8
  %10 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %11 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %10, i32 0, i32 3
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.spu_context*, %struct.spu_context** %13, align 8
  store %struct.spu_context* %14, %struct.spu_context** %6, align 8
  %15 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %16 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  store i64 %17, i64* %7, align 8
  %18 = load %struct.vm_fault*, %struct.vm_fault** %5, align 8
  %19 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @PAGE_SHIFT, align 8
  %22 = shl i64 %20, %21
  store i64 %22, i64* %9, align 8
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* @LS_SIZE, align 8
  %25 = icmp uge i64 %23, %24
  br i1 %25, label %26, label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %27, i32* %3, align 4
  br label %83

28:                                               ; preds = %2
  %29 = load i64, i64* %7, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i64 %29, i64 %30)
  %32 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %33 = call i64 @spu_acquire(%struct.spu_context* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %36, i32* %3, align 4
  br label %83

37:                                               ; preds = %28
  %38 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %39 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @SPU_STATE_SAVED, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %45 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @pgprot_cached(i32 %46)
  %48 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %49 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %51 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %9, align 8
  %57 = add i64 %55, %56
  %58 = call i64 @vmalloc_to_pfn(i64 %57)
  store i64 %58, i64* %8, align 8
  br label %75

59:                                               ; preds = %37
  %60 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %61 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @pgprot_noncached_wc(i32 %62)
  %64 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %65 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %67 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* %9, align 8
  %72 = add i64 %70, %71
  %73 = load i64, i64* @PAGE_SHIFT, align 8
  %74 = lshr i64 %72, %73
  store i64 %74, i64* %8, align 8
  br label %75

75:                                               ; preds = %59, %43
  %76 = load %struct.vm_area_struct*, %struct.vm_area_struct** %4, align 8
  %77 = load i64, i64* %7, align 8
  %78 = load i64, i64* %8, align 8
  %79 = call i32 @vm_insert_pfn(%struct.vm_area_struct* %76, i64 %77, i64 %78)
  %80 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %81 = call i32 @spu_release(%struct.spu_context* %80)
  %82 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %75, %35, %26
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @pr_debug(i8*, i64, i64) #1

declare dso_local i64 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @pgprot_cached(i32) #1

declare dso_local i64 @vmalloc_to_pfn(i64) #1

declare dso_local i32 @pgprot_noncached_wc(i32) #1

declare dso_local i32 @vm_insert_pfn(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
