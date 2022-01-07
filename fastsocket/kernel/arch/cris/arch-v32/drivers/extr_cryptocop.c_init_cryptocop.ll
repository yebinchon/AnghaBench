; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_init_cryptocop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/arch-v32/drivers/extr_cryptocop.c_init_cryptocop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@__const.init_cryptocop.dma_cfg = private unnamed_addr constant %struct.TYPE_6__ { i32 1, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@regk_dma_yes = common dso_local global i32 0, align 4
@__const.init_cryptocop.ack_intr = private unnamed_addr constant %struct.TYPE_6__ { i32 0, i32 1, i32 1, i32 0, i32 0, i32 0, i32 0, i32 0 }, align 4
@regk_strcop_e = common dso_local global i32 0, align 4
@regk_strcop_d = common dso_local global i32 0, align 4
@regk_strcop_little = common dso_local global i32 0, align 4
@DMA_IRQ = common dso_local global i32 0, align 4
@dma_done_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"stream co-processor DMA\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"request_irq stream co-processor irq dma9\00", align 1
@OUT_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c"strcop\00", align 1
@DMA_PANIC_ON_ERROR = common dso_local global i32 0, align 4
@dma_strp = common dso_local global i32 0, align 4
@IN_DMA = common dso_local global i32 0, align 4
@strcop = common dso_local global i32 0, align 4
@regi_strcop = common dso_local global i32 0, align 4
@rw_cfg = common dso_local global i32 0, align 4
@dma = common dso_local global i32 0, align 4
@IN_DMA_INST = common dso_local global i32 0, align 4
@OUT_DMA_INST = common dso_local global i32 0, align 4
@regk_dma_set_w_size4 = common dso_local global i32 0, align 4
@rw_intr_mask = common dso_local global i32 0, align 4
@rw_ack_intr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @init_cryptocop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_cryptocop() #0 {
  %1 = alloca i64, align 8
  %2 = alloca %struct.TYPE_6__, align 8
  %3 = alloca %struct.TYPE_6__, align 8
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  %6 = bitcast %struct.TYPE_6__* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_6__* @__const.init_cryptocop.dma_cfg to i8*), i64 32, i1 false)
  %7 = bitcast %struct.TYPE_6__* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 32, i1 false)
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %3, i32 0, i32 1
  %9 = load i32, i32* @regk_dma_yes, align 4
  store i32 %9, i32* %8, align 4
  %10 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.TYPE_6__* @__const.init_cryptocop.ack_intr to i8*), i64 32, i1 false)
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 0, i32* %12, align 4
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 2
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 3
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 4
  %16 = load i32, i32* @regk_strcop_e, align 4
  store i32 %16, i32* %15, align 4
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 5
  %18 = load i32, i32* @regk_strcop_d, align 4
  store i32 %18, i32* %17, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 6
  %20 = load i32, i32* @regk_strcop_e, align 4
  store i32 %20, i32* %19, align 4
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 7
  %22 = load i32, i32* @regk_strcop_little, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* @DMA_IRQ, align 4
  %24 = load i32, i32* @dma_done_interrupt, align 4
  %25 = call i64 @request_irq(i32 %23, i32 %24, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32* null)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %0
  %28 = call i32 @panic(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0))
  br label %29

29:                                               ; preds = %27, %0
  %30 = load i32, i32* @OUT_DMA, align 4
  %31 = load i32, i32* @DMA_PANIC_ON_ERROR, align 4
  %32 = load i32, i32* @dma_strp, align 4
  %33 = call i32 @crisv32_request_dma(i32 %30, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %31, i32 0, i32 %32)
  %34 = load i32, i32* @IN_DMA, align 4
  %35 = load i32, i32* @DMA_PANIC_ON_ERROR, align 4
  %36 = load i32, i32* @dma_strp, align 4
  %37 = call i32 @crisv32_request_dma(i32 %34, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %35, i32 0, i32 %36)
  %38 = load i64, i64* %1, align 8
  %39 = call i32 @local_irq_save(i64 %38)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 0, i32* %40, align 4
  %41 = load i32, i32* @strcop, align 4
  %42 = load i32, i32* @regi_strcop, align 4
  %43 = load i32, i32* @rw_cfg, align 4
  %44 = call i32 @REG_WR(i32 %41, i32 %42, i32 %43, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %5)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load i32, i32* @strcop, align 4
  %47 = load i32, i32* @regi_strcop, align 4
  %48 = load i32, i32* @rw_cfg, align 4
  %49 = call i32 @REG_WR(i32 %46, i32 %47, i32 %48, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %5)
  %50 = load i32, i32* @dma, align 4
  %51 = load i32, i32* @IN_DMA_INST, align 4
  %52 = load i32, i32* @rw_cfg, align 4
  %53 = call i32 @REG_WR(i32 %50, i32 %51, i32 %52, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2)
  %54 = load i32, i32* @dma, align 4
  %55 = load i32, i32* @OUT_DMA_INST, align 4
  %56 = load i32, i32* @rw_cfg, align 4
  %57 = call i32 @REG_WR(i32 %54, i32 %55, i32 %56, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %2)
  %58 = load i32, i32* @OUT_DMA_INST, align 4
  %59 = load i32, i32* @regk_dma_set_w_size4, align 4
  %60 = call i32 @DMA_WR_CMD(i32 %58, i32 %59)
  %61 = load i32, i32* @IN_DMA_INST, align 4
  %62 = load i32, i32* @regk_dma_set_w_size4, align 4
  %63 = call i32 @DMA_WR_CMD(i32 %61, i32 %62)
  %64 = load i32, i32* @dma, align 4
  %65 = load i32, i32* @IN_DMA_INST, align 4
  %66 = load i32, i32* @rw_intr_mask, align 4
  %67 = call i32 @REG_WR(i32 %64, i32 %65, i32 %66, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %3)
  %68 = load i32, i32* @dma, align 4
  %69 = load i32, i32* @IN_DMA_INST, align 4
  %70 = load i32, i32* @rw_ack_intr, align 4
  %71 = call i32 @REG_WR(i32 %68, i32 %69, i32 %70, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8 %4)
  %72 = load i64, i64* %1, align 8
  %73 = call i32 @local_irq_restore(i64 %72)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32*) #2

declare dso_local i32 @panic(i8*) #2

declare dso_local i32 @crisv32_request_dma(i32, i8*, i32, i32, i32) #2

declare dso_local i32 @local_irq_save(i64) #2

declare dso_local i32 @REG_WR(i32, i32, i32, %struct.TYPE_6__* byval(%struct.TYPE_6__) align 8) #2

declare dso_local i32 @DMA_WR_CMD(i32, i32) #2

declare dso_local i32 @local_irq_restore(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
