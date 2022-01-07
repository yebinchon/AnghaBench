; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_ps_fault.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_ps_fault.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.vm_area_struct = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.spu_context* }
%struct.spu_context = type { i64, %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { i64 }
%struct.vm_fault = type { i64, i64 }

@PAGE_SHIFT = common dso_local global i64 0, align 8
@spufs_ps_fault__enter = common dso_local global i32 0, align 4
@VM_FAULT_SIGBUS = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_9__* null, align 8
@SPU_STATE_SAVED = common dso_local global i64 0, align 8
@spufs_ps_fault__sleep = common dso_local global i32 0, align 4
@SPU_STATE_RUNNABLE = common dso_local global i64 0, align 8
@spufs_ps_fault__wake = common dso_local global i32 0, align 4
@spufs_ps_fault__insert = common dso_local global i32 0, align 4
@VM_FAULT_NOPAGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vm_area_struct*, %struct.vm_fault*, i64, i64)* @spufs_ps_fault to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_ps_fault(%struct.vm_area_struct* %0, %struct.vm_fault* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca %struct.vm_fault*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.spu_context*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.vm_area_struct* %0, %struct.vm_area_struct** %6, align 8
  store %struct.vm_fault* %1, %struct.vm_fault** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %14 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %15 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.spu_context*, %struct.spu_context** %17, align 8
  store %struct.spu_context* %18, %struct.spu_context** %10, align 8
  %19 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %20 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @PAGE_SHIFT, align 8
  %23 = shl i64 %21, %22
  store i64 %23, i64* %12, align 8
  store i32 0, i32* %13, align 4
  %24 = load i32, i32* @spufs_ps_fault__enter, align 4
  %25 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %26 = call i32 @spu_context_nospu_trace(i32 %24, %struct.spu_context* %25)
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* %9, align 8
  %29 = icmp uge i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %4
  %31 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %31, i32* %5, align 4
  br label %116

32:                                               ; preds = %4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %34 = call i64 @fatal_signal_pending(%struct.TYPE_9__* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %32
  %37 = load i32, i32* @VM_FAULT_SIGBUS, align 4
  store i32 %37, i32* %5, align 4
  br label %116

38:                                               ; preds = %32
  %39 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %40 = call i32 @get_spu_context(%struct.spu_context* %39)
  %41 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %42 = call i64 @spu_acquire(%struct.spu_context* %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %38
  br label %112

45:                                               ; preds = %38
  %46 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %47 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @SPU_STATE_SAVED, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %45
  %52 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %53 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = call i32 @up_read(i32* %55)
  %57 = load i32, i32* @spufs_ps_fault__sleep, align 4
  %58 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %59 = call i32 @spu_context_nospu_trace(i32 %57, %struct.spu_context* %58)
  %60 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %61 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %64 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SPU_STATE_RUNNABLE, align 8
  %67 = icmp eq i64 %65, %66
  %68 = zext i1 %67 to i32
  %69 = call i32 @spufs_wait(i32 %62, i32 %68)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* @spufs_ps_fault__wake, align 4
  %71 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %72 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %73 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i32 @spu_context_trace(i32 %70, %struct.spu_context* %71, %struct.TYPE_8__* %74)
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** @current, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = call i32 @down_read(i32* %79)
  br label %105

81:                                               ; preds = %45
  %82 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %83 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %82, i32 0, i32 1
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = add i64 %86, %87
  store i64 %88, i64* %11, align 8
  %89 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %90 = load %struct.vm_fault*, %struct.vm_fault** %7, align 8
  %91 = getelementptr inbounds %struct.vm_fault, %struct.vm_fault* %90, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = load i64, i64* %11, align 8
  %94 = load i64, i64* %12, align 8
  %95 = add i64 %93, %94
  %96 = load i64, i64* @PAGE_SHIFT, align 8
  %97 = lshr i64 %95, %96
  %98 = call i32 @vm_insert_pfn(%struct.vm_area_struct* %89, i64 %92, i64 %97)
  %99 = load i32, i32* @spufs_ps_fault__insert, align 4
  %100 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %101 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %102 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %101, i32 0, i32 1
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %102, align 8
  %104 = call i32 @spu_context_trace(i32 %99, %struct.spu_context* %100, %struct.TYPE_8__* %103)
  br label %105

105:                                              ; preds = %81, %51
  %106 = load i32, i32* %13, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %111, label %108

108:                                              ; preds = %105
  %109 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %110 = call i32 @spu_release(%struct.spu_context* %109)
  br label %111

111:                                              ; preds = %108, %105
  br label %112

112:                                              ; preds = %111, %44
  %113 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  %114 = call i32 @put_spu_context(%struct.spu_context* %113)
  %115 = load i32, i32* @VM_FAULT_NOPAGE, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %36, %30
  %117 = load i32, i32* %5, align 4
  ret i32 %117
}

declare dso_local i32 @spu_context_nospu_trace(i32, %struct.spu_context*) #1

declare dso_local i64 @fatal_signal_pending(%struct.TYPE_9__*) #1

declare dso_local i32 @get_spu_context(%struct.spu_context*) #1

declare dso_local i64 @spu_acquire(%struct.spu_context*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @spufs_wait(i32, i32) #1

declare dso_local i32 @spu_context_trace(i32, %struct.spu_context*, %struct.TYPE_8__*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @vm_insert_pfn(%struct.vm_area_struct*, i64, i64) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

declare dso_local i32 @put_spu_context(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
