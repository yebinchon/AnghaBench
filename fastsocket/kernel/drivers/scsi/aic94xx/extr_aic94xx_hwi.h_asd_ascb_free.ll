; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.h_asd_ascb_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/aic94xx/extr_aic94xx_hwi.h_asd_ascb_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ascb = type { %struct.TYPE_3__, %struct.asd_ha_struct*, i32, i32 }
%struct.TYPE_3__ = type { i32, i32 }
%struct.asd_ha_struct = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@asd_ascb_cache = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asd_ascb*)* @asd_ascb_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asd_ascb_free(%struct.asd_ascb* %0) #0 {
  %2 = alloca %struct.asd_ascb*, align 8
  %3 = alloca %struct.asd_ha_struct*, align 8
  %4 = alloca i64, align 8
  store %struct.asd_ascb* %0, %struct.asd_ascb** %2, align 8
  %5 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %6 = icmp ne %struct.asd_ascb* %5, null
  br i1 %6, label %7, label %55

7:                                                ; preds = %1
  %8 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %9 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %8, i32 0, i32 1
  %10 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %9, align 8
  store %struct.asd_ha_struct* %10, %struct.asd_ha_struct** %3, align 8
  %11 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %12 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %11, i32 0, i32 3
  %13 = call i32 @list_empty(i32* %12)
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %19 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %18, i32 0, i32 1
  %20 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %19, align 8
  %21 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %26 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %25, i32 0, i32 1
  %27 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %26, align 8
  %28 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %27, i32 0, i32 1
  %29 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %30 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @asd_tc_index_release(%struct.TYPE_4__* %28, i32 %31)
  %33 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %34 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %33, i32 0, i32 1
  %35 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %34, align 8
  %36 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i64, i64* %4, align 8
  %39 = call i32 @spin_unlock_irqrestore(i32* %37, i64 %38)
  %40 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %3, align 8
  %41 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %44 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %48 = getelementptr inbounds %struct.asd_ascb, %struct.asd_ascb* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @dma_pool_free(i32 %42, i32 %46, i32 %50)
  %52 = load i32, i32* @asd_ascb_cache, align 4
  %53 = load %struct.asd_ascb*, %struct.asd_ascb** %2, align 8
  %54 = call i32 @kmem_cache_free(i32 %52, %struct.asd_ascb* %53)
  br label %55

55:                                               ; preds = %7, %1
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @asd_tc_index_release(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @dma_pool_free(i32, i32, i32) #1

declare dso_local i32 @kmem_cache_free(i32, %struct.asd_ascb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
