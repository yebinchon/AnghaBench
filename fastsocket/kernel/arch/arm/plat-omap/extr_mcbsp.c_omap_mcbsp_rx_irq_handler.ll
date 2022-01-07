; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mcbsp.c_omap_mcbsp_rx_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/plat-omap/extr_mcbsp.c_omap_mcbsp_rx_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_mcbsp = type { i32, i32, i32 }

@SPCR1 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"RX IRQ callback : 0x%x\0A\00", align 1
@RSYNC_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"RX Frame Sync Error! : 0x%x\0A\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @omap_mcbsp_rx_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @omap_mcbsp_rx_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.omap_mcbsp*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.omap_mcbsp*
  store %struct.omap_mcbsp* %8, %struct.omap_mcbsp** %5, align 8
  %9 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %10 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @SPCR1, align 4
  %13 = call i32 @OMAP_MCBSP_READ(i32 %11, i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %15 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @dev_dbg(i32 %16, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @RSYNC_ERR, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %38

23:                                               ; preds = %2
  %24 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %25 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %27)
  %29 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %30 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SPCR1, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @RSYNC_ERR, align 4
  %35 = xor i32 %34, -1
  %36 = and i32 %33, %35
  %37 = call i32 @OMAP_MCBSP_WRITE(i32 %31, i32 %32, i32 %36)
  br label %42

38:                                               ; preds = %2
  %39 = load %struct.omap_mcbsp*, %struct.omap_mcbsp** %5, align 8
  %40 = getelementptr inbounds %struct.omap_mcbsp, %struct.omap_mcbsp* %39, i32 0, i32 0
  %41 = call i32 @complete(i32* %40)
  br label %42

42:                                               ; preds = %38, %23
  %43 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %43
}

declare dso_local i32 @OMAP_MCBSP_READ(i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @OMAP_MCBSP_WRITE(i32, i32, i32) #1

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
