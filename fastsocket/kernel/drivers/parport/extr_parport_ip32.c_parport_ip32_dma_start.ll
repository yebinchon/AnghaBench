; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c_parport_ip32_dma_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/parport/extr_parport_ip32.c_parport_ip32_dma_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i32, i64, i64 }

@.str = private unnamed_addr constant [10 x i8] c"(%d, %lu)\00", align 1
@DMA_TO_DEVICE = common dso_local global i32 0, align 4
@MACEPAR_CTLSTAT_RESET = common dso_local global i32 0, align 4
@mace = common dso_local global %struct.TYPE_10__* null, align 8
@parport_ip32_dma = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@MACEISA_PAR_CTXA_IRQ = common dso_local global i32 0, align 4
@MACEISA_PAR_CTXB_IRQ = common dso_local global i32 0, align 4
@MACEPAR_CTLSTAT_DIRECTION = common dso_local global i32 0, align 4
@MACEPAR_CONTEXT_DATA_BOUND = common dso_local global i32 0, align 4
@MACEPAR_CTLSTAT_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*, i64)* @parport_ip32_dma_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parport_ip32_dma_start(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @pr_trace(i32* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %9, i64 %10)
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @DMA_TO_DEVICE, align 4
  %14 = icmp ne i32 %12, %13
  %15 = zext i1 %14 to i32
  %16 = call i32 @BUG_ON(i32 %15)
  %17 = load i32, i32* @MACEPAR_CTLSTAT_RESET, align 4
  store i32 %17, i32* %8, align 4
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = call i32 @writeq(i32 %18, i32* %23)
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 0), align 8
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = call i32 @WARN_ON(i32 1)
  %29 = load i32, i32* @MACEISA_PAR_CTXA_IRQ, align 4
  %30 = call i32 @enable_irq(i32 %29)
  %31 = load i32, i32* @MACEISA_PAR_CTXB_IRQ, align 4
  %32 = call i32 @enable_irq(i32 %31)
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 0), align 8
  br label %33

33:                                               ; preds = %27, %3
  %34 = load i32, i32* %4, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 1), align 4
  %35 = load i8*, i8** %5, align 8
  %36 = load i64, i64* %6, align 8
  %37 = load i32, i32* %4, align 4
  %38 = call i32 @dma_map_single(i32* null, i8* %35, i64 %36, i32 %37)
  store i32 %38, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 2), align 8
  %39 = load i64, i64* %6, align 8
  store i64 %39, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 3), align 8
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 2), align 8
  store i32 %40, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 4), align 8
  %41 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 3), align 8
  store i64 %41, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 5), align 8
  store i64 0, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 6), align 8
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @DMA_TO_DEVICE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %33
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* @MACEPAR_CTLSTAT_DIRECTION, align 4
  br label %48

48:                                               ; preds = %46, %45
  %49 = phi i32 [ 0, %45 ], [ %47, %46 ]
  store i32 %49, i32* %8, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @writeq(i32 %50, i32* %55)
  %57 = load i32, i32* @MACEPAR_CONTEXT_DATA_BOUND, align 4
  %58 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @parport_ip32_dma, i32 0, i32 4), align 8
  %59 = load i32, i32* @MACEPAR_CONTEXT_DATA_BOUND, align 4
  %60 = sub nsw i32 %59, 1
  %61 = and i32 %58, %60
  %62 = sub nsw i32 %57, %61
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @parport_ip32_dma_setup_context(i32 %63)
  %65 = load i32, i32* @MACEPAR_CONTEXT_DATA_BOUND, align 4
  %66 = call i32 @parport_ip32_dma_setup_context(i32 %65)
  %67 = load i32, i32* @MACEPAR_CTLSTAT_ENABLE, align 4
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.TYPE_10__*, %struct.TYPE_10__** @mace, align 8
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = call i32 @writeq(i32 %70, i32* %75)
  ret i32 0
}

declare dso_local i32 @pr_trace(i32*, i8*, i32, i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @writeq(i32, i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @enable_irq(i32) #1

declare dso_local i32 @dma_map_single(i32*, i8*, i64, i32) #1

declare dso_local i32 @parport_ip32_dma_setup_context(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
