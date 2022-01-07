; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_local_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_local_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_port = type { i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@PORT_ACTIVE = common dso_local global i32 0, align 4
@IOC4_SSCR_DMA_EN = common dso_local global i32 0, align 4
@IOC4_SSCR_DMA_PAUSE = common dso_local global i32 0, align 4
@IOC4_SSCR_PAUSE_STATE = common dso_local global i32 0, align 4
@MAXITER = common dso_local global i32 0, align 4
@PORT_INACTIVE = common dso_local global i32 0, align 4
@UART_FCR_ENABLE_FIFO = common dso_local global i32 0, align 4
@UART_FCR_CLEAR_RCVR = common dso_local global i32 0, align 4
@UART_LCR_WLEN8 = common dso_local global i32 0, align 4
@IOC4_SSCR_RX_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc4_port*)* @local_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @local_open(%struct.ioc4_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ioc4_port*, align 8
  %4 = alloca i32, align 4
  store %struct.ioc4_port* %0, %struct.ioc4_port** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load i32, i32* @PORT_ACTIVE, align 4
  %6 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %7 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %6, i32 0, i32 4
  store i32 %5, i32* %7, align 8
  %8 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %9 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @IOC4_SSCR_DMA_EN, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %46

14:                                               ; preds = %1
  %15 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %16 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @IOC4_SSCR_DMA_PAUSE, align 4
  %19 = or i32 %17, %18
  %20 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %21 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = call i32 @writel(i32 %19, i32* %23)
  br label %25

25:                                               ; preds = %44, %14
  %26 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %27 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %26, i32 0, i32 2
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = call i32 @readl(i32* %29)
  %31 = load i32, i32* @IOC4_SSCR_PAUSE_STATE, align 4
  %32 = and i32 %30, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %25
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @MAXITER, align 4
  %39 = icmp sgt i32 %37, %38
  br i1 %39, label %40, label %44

40:                                               ; preds = %34
  %41 = load i32, i32* @PORT_INACTIVE, align 4
  %42 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %43 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %42, i32 0, i32 4
  store i32 %41, i32* %43, align 8
  store i32 -1, i32* %2, align 4
  br label %81

44:                                               ; preds = %34
  br label %25

45:                                               ; preds = %25
  br label %46

46:                                               ; preds = %45, %1
  %47 = load i32, i32* @UART_FCR_ENABLE_FIFO, align 4
  %48 = load i32, i32* @UART_FCR_CLEAR_RCVR, align 4
  %49 = or i32 %47, %48
  %50 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %51 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %50, i32 0, i32 3
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  %54 = call i32 @writeb(i32 %49, i32* %53)
  %55 = load i32, i32* @UART_LCR_WLEN8, align 4
  %56 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %57 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %56, i32 0, i32 3
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @writeb(i32 %55, i32* %59)
  %61 = load i32, i32* @IOC4_SSCR_RX_THRESHOLD, align 4
  %62 = xor i32 %61, -1
  %63 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %64 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = and i32 %65, %62
  store i32 %66, i32* %64, align 8
  %67 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %68 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = or i32 %69, 1
  store i32 %70, i32* %68, align 8
  %71 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %72 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %75 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %74, i32 0, i32 2
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = call i32 @writel(i32 %73, i32* %77)
  %79 = load %struct.ioc4_port*, %struct.ioc4_port** %3, align 8
  %80 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %79, i32 0, i32 1
  store i32 1, i32* %80, align 4
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %46, %40
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local i32 @writel(i32, i32*) #1

declare dso_local i32 @readl(i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
