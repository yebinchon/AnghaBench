; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_set_rx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_ioc4_serial.c_set_rx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ioc4_port = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@IOC4_SSCR_RX_THRESHOLD = common dso_local global i32 0, align 4
@IOC4_SRTR_HZ = common dso_local global i32 0, align 4
@IOC4_SRTR_CNT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ioc4_port*, i32)* @set_rx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_rx_timeout(%struct.ioc4_port* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ioc4_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ioc4_port* %0, %struct.ioc4_port** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %9 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %12 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = mul nsw i32 %10, %13
  %15 = sdiv i32 %14, 4000
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %19

19:                                               ; preds = %18, %2
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @IOC4_SSCR_RX_THRESHOLD, align 4
  %22 = icmp ugt i32 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32 1, i32* %3, align 4
  br label %60

24:                                               ; preds = %19
  %25 = load i32, i32* @IOC4_SSCR_RX_THRESHOLD, align 4
  %26 = xor i32 %25, -1
  %27 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %28 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = and i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %6, align 4
  %32 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %33 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 8
  %36 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %37 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %40 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %39, i32 0, i32 3
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  %43 = call i32 @writel(i32 %38, i32* %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @IOC4_SRTR_HZ, align 4
  %46 = mul nsw i32 %44, %45
  %47 = sdiv i32 %46, 100
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @IOC4_SRTR_CNT, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %24
  %52 = load i32, i32* @IOC4_SRTR_CNT, align 4
  store i32 %52, i32* %5, align 4
  br label %53

53:                                               ; preds = %51, %24
  %54 = load i32, i32* %5, align 4
  %55 = load %struct.ioc4_port*, %struct.ioc4_port** %4, align 8
  %56 = getelementptr inbounds %struct.ioc4_port, %struct.ioc4_port* %55, i32 0, i32 3
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = call i32 @writel(i32 %54, i32* %58)
  store i32 0, i32* %3, align 4
  br label %60

60:                                               ; preds = %53, %23
  %61 = load i32, i32* %3, align 4
  ret i32 %61
}

declare dso_local i32 @writel(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
