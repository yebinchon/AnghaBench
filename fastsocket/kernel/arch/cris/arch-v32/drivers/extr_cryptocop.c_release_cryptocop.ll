; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_release_cryptocop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_release_cryptocop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@__const.release_cryptocop.ack_intr = private unnamed_addr constant %struct.TYPE_5__ { i32 1, i32 1, i32 0, i32 0 }, align 4
@dma = common dso_local global i32 0, align 4
@IN_DMA_INST = common dso_local global i32 0, align 4
@rw_ack_intr = common dso_local global i32 0, align 4
@rw_cfg = common dso_local global i32 0, align 4
@OUT_DMA_INST = common dso_local global i32 0, align 4
@rw_intr_mask = common dso_local global i32 0, align 4
@DMA_IRQ = common dso_local global i32 0, align 4
@OUT_DMA = common dso_local global i32 0, align 4
@IN_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @release_cryptocop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_cryptocop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_5__, align 4
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca %struct.TYPE_5__, align 4
  %5 = bitcast %struct.TYPE_5__* %2 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %5, i8 0, i64 16, i1 false)
  %6 = bitcast %struct.TYPE_5__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %6, i8 0, i64 16, i1 false)
  %7 = bitcast %struct.TYPE_5__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.TYPE_5__* @__const.release_cryptocop.ack_intr to i8*), i64 16, i1 false)
  %8 = load i64, i64* %1, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i32, i32* @dma, align 4
  %11 = load i32, i32* @IN_DMA_INST, align 4
  %12 = load i32, i32* @rw_ack_intr, align 4
  %13 = bitcast %struct.TYPE_5__* %4 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 4
  %16 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  %17 = load i64, i64* %16, align 4
  %18 = call i32 @REG_WR(i32 %10, i32 %11, i32 %12, i64 %15, i64 %17)
  %19 = load i32, i32* @dma, align 4
  %20 = load i32, i32* @IN_DMA_INST, align 4
  %21 = load i32, i32* @rw_cfg, align 4
  %22 = bitcast %struct.TYPE_5__* %2 to { i64, i64 }*
  %23 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 4
  %25 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %22, i32 0, i32 1
  %26 = load i64, i64* %25, align 4
  %27 = call i32 @REG_WR(i32 %19, i32 %20, i32 %21, i64 %24, i64 %26)
  %28 = load i32, i32* @dma, align 4
  %29 = load i32, i32* @OUT_DMA_INST, align 4
  %30 = load i32, i32* @rw_cfg, align 4
  %31 = bitcast %struct.TYPE_5__* %2 to { i64, i64 }*
  %32 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 4
  %34 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %31, i32 0, i32 1
  %35 = load i64, i64* %34, align 4
  %36 = call i32 @REG_WR(i32 %28, i32 %29, i32 %30, i64 %33, i64 %35)
  %37 = load i32, i32* @dma, align 4
  %38 = load i32, i32* @IN_DMA_INST, align 4
  %39 = load i32, i32* @rw_intr_mask, align 4
  %40 = bitcast %struct.TYPE_5__* %3 to { i64, i64 }*
  %41 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 4
  %43 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %40, i32 0, i32 1
  %44 = load i64, i64* %43, align 4
  %45 = call i32 @REG_WR(i32 %37, i32 %38, i32 %39, i64 %42, i64 %44)
  %46 = load i64, i64* %1, align 8
  %47 = call i32 @local_irq_restore(i64 %46)
  %48 = load i32, i32* @DMA_IRQ, align 4
  %49 = call i32 @free_irq(i32 %48, i32* null)
  %50 = load i32, i32* @OUT_DMA, align 4
  %51 = call i32 @crisv32_free_dma(i32 %50)
  %52 = load i32, i32* @IN_DMA, align 4
  %53 = call i32 @crisv32_free_dma(i32 %52)
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i32 @REG_WR(i32, i32, i32, i64, i64) #2

declare dso_local i32 @local_irq_restore(i64) #2

declare dso_local i32 @free_irq(i32, i32*) #2

declare dso_local i32 @crisv32_free_dma(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
