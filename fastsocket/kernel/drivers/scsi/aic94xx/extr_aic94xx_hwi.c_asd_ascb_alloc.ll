; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_ascb_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.c_asd_ascb_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kmem_cache = type { i32 }
%struct.asd_ascb = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.asd_ha_struct = type { i32, %struct.asd_seq_data }
%struct.asd_seq_data = type { i32 }

@asd_ascb_cache = external dso_local global %struct.kmem_cache*, align 8
@.str = private unnamed_addr constant [19 x i8] c"no index for ascb\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.asd_ascb* (%struct.asd_ha_struct*, i32)* @asd_ascb_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.asd_ascb* @asd_ascb_alloc(%struct.asd_ha_struct* %0, i32 %1) #0 {
  %3 = alloca %struct.asd_ascb*, align 8
  %4 = alloca %struct.asd_ha_struct*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.asd_seq_data*, align 8
  %7 = alloca %struct.asd_ascb*, align 8
  %8 = alloca i64, align 8
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %10 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %9, i32 0, i32 1
  store %struct.asd_seq_data* %10, %struct.asd_seq_data** %6, align 8
  %11 = load %struct.kmem_cache*, %struct.kmem_cache** @asd_ascb_cache, align 8
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.asd_ascb* @kmem_cache_zalloc(%struct.kmem_cache* %11, i32 %12)
  store %struct.asd_ascb* %13, %struct.asd_ascb** %7, align 8
  %14 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %15 = icmp ne %struct.asd_ascb* %14, null
  br i1 %15, label %16, label %77

16:                                               ; preds = %2
  %17 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %18 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 4, i32* %19, align 4
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %21 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %25 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @dma_pool_alloc(i32 %22, i32 %23, i32* %26)
  %28 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %29 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 2
  store i32 %27, i32* %30, align 4
  %31 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %32 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %16
  %37 = load %struct.kmem_cache*, %struct.kmem_cache** @asd_ascb_cache, align 8
  %38 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %39 = call i32 @kmem_cache_free(%struct.kmem_cache* %37, %struct.asd_ascb* %38)
  store %struct.asd_ascb* null, %struct.asd_ascb** %3, align 8
  br label %96

40:                                               ; preds = %16
  %41 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %42 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @memset(i32 %44, i32 0, i32 4)
  %46 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %47 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %48 = call i32 @asd_init_ascb(%struct.asd_ha_struct* %46, %struct.asd_ascb* %47)
  %49 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %50 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %49, i32 0, i32 0
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @spin_lock_irqsave(i32* %50, i64 %51)
  %53 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %54 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %55 = call i32 @asd_tc_index_get(%struct.asd_seq_data* %53, %struct.asd_ascb* %54)
  %56 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %57 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.asd_seq_data*, %struct.asd_seq_data** %6, align 8
  %59 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %58, i32 0, i32 0
  %60 = load i64, i64* %8, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %63 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp eq i32 %64, -1
  br i1 %65, label %66, label %67

66:                                               ; preds = %40
  br label %79

67:                                               ; preds = %40
  %68 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %69 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @cpu_to_le16(i32 %70)
  %72 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %73 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %72, i32 0, i32 2
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  store i32 %71, i32* %76, align 4
  br label %77

77:                                               ; preds = %67, %2
  %78 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  store %struct.asd_ascb* %78, %struct.asd_ascb** %3, align 8
  br label %96

79:                                               ; preds = %66
  %80 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %4, align 8
  %81 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %84 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %88 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @dma_pool_free(i32 %82, i32 %86, i32 %90)
  %92 = load %struct.kmem_cache*, %struct.kmem_cache** @asd_ascb_cache, align 8
  %93 = load %struct.asd_ascb*, %struct.asd_ascb** %7, align 8
  %94 = call i32 @kmem_cache_free(%struct.kmem_cache* %92, %struct.asd_ascb* %93)
  %95 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  store %struct.asd_ascb* null, %struct.asd_ascb** %3, align 8
  br label %96

96:                                               ; preds = %79, %77, %36
  %97 = load %struct.asd_ascb*, %struct.asd_ascb** %3, align 8
  ret %struct.asd_ascb* %97
}

declare dso_local %struct.asd_ascb* @kmem_cache_zalloc(%struct.kmem_cache*, i32) #1

declare dso_local i32 @dma_pool_alloc(i32, i32, i32*) #1

declare dso_local i32 @kmem_cache_free(%struct.kmem_cache*, %struct.asd_ascb*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @asd_init_ascb(%struct.asd_ha_struct*, %struct.asd_ascb*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asd_tc_index_get(%struct.asd_seq_data*, %struct.asd_ascb*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @ASD_DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
