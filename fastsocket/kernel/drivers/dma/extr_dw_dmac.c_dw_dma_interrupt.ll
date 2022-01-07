; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/dma/extr_dw_dmac.c_dw_dma_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32, i32, i32 }
%struct.dw_dma = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"interrupt: status=0x%x\0A\00", align 1
@STATUS_INT = common dso_local global i32 0, align 4
@MASK = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"BUG: Unexpected interrupts pending: 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @dw_dma_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dw_dma_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.dw_dma*, align 8
  %6 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.dw_dma*
  store %struct.dw_dma* %8, %struct.dw_dma** %5, align 8
  %9 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %10 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %9, i32 0, i32 2
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %14 = load i32, i32* @STATUS_INT, align 4
  %15 = call i64 @dma_readl(%struct.dw_dma* %13, i32 %14)
  %16 = call i32 @dev_vdbg(i32 %12, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i64 %15)
  %17 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %18 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 4), align 4
  %19 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %20 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @channel_clear_bit(%struct.dw_dma* %17, i32 %18, i32 %21)
  %23 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 3), align 4
  %25 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %26 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @channel_clear_bit(%struct.dw_dma* %23, i32 %24, i32 %27)
  %29 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %30 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 0), align 4
  %31 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %32 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @channel_clear_bit(%struct.dw_dma* %29, i32 %30, i32 %33)
  %35 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %36 = load i32, i32* @STATUS_INT, align 4
  %37 = call i64 @dma_readl(%struct.dw_dma* %35, i32 %36)
  store i64 %37, i64* %6, align 8
  %38 = load i64, i64* %6, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %62

40:                                               ; preds = %2
  %41 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %42 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %41, i32 0, i32 2
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %6, align 8
  %46 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %45)
  %47 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 4), align 4
  %49 = call i32 @channel_clear_bit(%struct.dw_dma* %47, i32 %48, i32 255)
  %50 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %51 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 3), align 4
  %52 = call i32 @channel_clear_bit(%struct.dw_dma* %50, i32 %51, i32 255)
  %53 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 2), align 4
  %55 = call i32 @channel_clear_bit(%struct.dw_dma* %53, i32 %54, i32 255)
  %56 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 1), align 4
  %58 = call i32 @channel_clear_bit(%struct.dw_dma* %56, i32 %57, i32 255)
  %59 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @MASK, i32 0, i32 0), align 4
  %61 = call i32 @channel_clear_bit(%struct.dw_dma* %59, i32 %60, i32 255)
  br label %62

62:                                               ; preds = %40, %2
  %63 = load %struct.dw_dma*, %struct.dw_dma** %5, align 8
  %64 = getelementptr inbounds %struct.dw_dma, %struct.dw_dma* %63, i32 0, i32 1
  %65 = call i32 @tasklet_schedule(i32* %64)
  %66 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %66
}

declare dso_local i32 @dev_vdbg(i32, i8*, i64) #1

declare dso_local i64 @dma_readl(%struct.dw_dma*, i32) #1

declare dso_local i32 @channel_clear_bit(%struct.dw_dma*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i64) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
