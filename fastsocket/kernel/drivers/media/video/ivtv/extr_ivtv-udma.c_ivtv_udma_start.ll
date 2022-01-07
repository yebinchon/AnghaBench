; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-udma.c_ivtv_udma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"start UDMA\0A\00", align 1
@IVTV_REG_DECDMAADDR = common dso_local global i32 0, align 4
@IVTV_REG_DMAXFER = common dso_local global i32 0, align 4
@IVTV_F_I_DMA = common dso_local global i32 0, align 4
@IVTV_F_I_UDMA = common dso_local global i32 0, align 4
@IVTV_F_I_UDMA_PENDING = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ivtv_udma_start(%struct.ivtv* %0) #0 {
  %2 = alloca %struct.ivtv*, align 8
  store %struct.ivtv* %0, %struct.ivtv** %2, align 8
  %3 = call i32 @IVTV_DEBUG_DMA(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %5 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %4, i32 0, i32 1
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @IVTV_REG_DECDMAADDR, align 4
  %9 = call i32 @write_reg(i32 %7, i32 %8)
  %10 = load i32, i32* @IVTV_REG_DMAXFER, align 4
  %11 = call i32 @read_reg(i32 %10)
  %12 = or i32 %11, 1
  %13 = load i32, i32* @IVTV_REG_DMAXFER, align 4
  %14 = call i32 @write_reg_sync(i32 %12, i32 %13)
  %15 = load i32, i32* @IVTV_F_I_DMA, align 4
  %16 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %17 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %16, i32 0, i32 0
  %18 = call i32 @set_bit(i32 %15, i32* %17)
  %19 = load i32, i32* @IVTV_F_I_UDMA, align 4
  %20 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %21 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %20, i32 0, i32 0
  %22 = call i32 @set_bit(i32 %19, i32* %21)
  %23 = load i32, i32* @IVTV_F_I_UDMA_PENDING, align 4
  %24 = load %struct.ivtv*, %struct.ivtv** %2, align 8
  %25 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %24, i32 0, i32 0
  %26 = call i32 @clear_bit(i32 %23, i32* %25)
  ret void
}

declare dso_local i32 @IVTV_DEBUG_DMA(i8*) #1

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @write_reg_sync(i32, i32) #1

declare dso_local i32 @read_reg(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
