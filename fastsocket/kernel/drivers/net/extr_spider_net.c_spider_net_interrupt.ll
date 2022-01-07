; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_spider_net.c_spider_net_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.spider_net_card = type { i32, i32 }

@SPIDER_NET_GHIINT0STS = common dso_local global i32 0, align 4
@SPIDER_NET_GHIINT1STS = common dso_local global i32 0, align 4
@SPIDER_NET_GHIINT2STS = common dso_local global i32 0, align 4
@SPIDER_NET_INT0_MASK_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_INT1_MASK_VALUE = common dso_local global i32 0, align 4
@SPIDER_NET_INT2_MASK_VALUE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@SPIDER_NET_RXINT = common dso_local global i32 0, align 4
@SPIDER_NET_TXINT = common dso_local global i32 0, align 4
@SPIDER_NET_LINKINT = common dso_local global i32 0, align 4
@SPIDER_NET_ERRINT = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @spider_net_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spider_net_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.spider_net_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = call %struct.spider_net_card* @netdev_priv(%struct.net_device* %13)
  store %struct.spider_net_card* %14, %struct.spider_net_card** %7, align 8
  %15 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %16 = load i32, i32* @SPIDER_NET_GHIINT0STS, align 4
  %17 = call i32 @spider_net_read_reg(%struct.spider_net_card* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %19 = load i32, i32* @SPIDER_NET_GHIINT1STS, align 4
  %20 = call i32 @spider_net_read_reg(%struct.spider_net_card* %18, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %22 = load i32, i32* @SPIDER_NET_GHIINT2STS, align 4
  %23 = call i32 @spider_net_read_reg(%struct.spider_net_card* %21, i32 %22)
  store i32 %23, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load i32, i32* @SPIDER_NET_INT0_MASK_VALUE, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %40, label %28

28:                                               ; preds = %2
  %29 = load i32, i32* %9, align 4
  %30 = load i32, i32* @SPIDER_NET_INT1_MASK_VALUE, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %28
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* @SPIDER_NET_INT2_MASK_VALUE, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %33
  %39 = load i32, i32* @IRQ_NONE, align 4
  store i32 %39, i32* %3, align 4
  br label %89

40:                                               ; preds = %33, %28, %2
  %41 = load i32, i32* %8, align 4
  %42 = load i32, i32* @SPIDER_NET_RXINT, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %55

45:                                               ; preds = %40
  %46 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %47 = call i32 @spider_net_rx_irq_off(%struct.spider_net_card* %46)
  %48 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %49 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %48, i32 0, i32 0
  %50 = call i32 @napi_schedule(i32* %49)
  %51 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %52 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %45, %40
  %56 = load i32, i32* %8, align 4
  %57 = load i32, i32* @SPIDER_NET_TXINT, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %55
  %61 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %62 = getelementptr inbounds %struct.spider_net_card, %struct.spider_net_card* %61, i32 0, i32 0
  %63 = call i32 @napi_schedule(i32* %62)
  br label %64

64:                                               ; preds = %60, %55
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* @SPIDER_NET_LINKINT, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %64
  %70 = load %struct.net_device*, %struct.net_device** %6, align 8
  %71 = call i32 @spider_net_link_reset(%struct.net_device* %70)
  br label %72

72:                                               ; preds = %69, %64
  %73 = load i32, i32* %8, align 4
  %74 = load i32, i32* @SPIDER_NET_ERRINT, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %72
  %78 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %79 = load i32, i32* %8, align 4
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @spider_net_handle_error_irq(%struct.spider_net_card* %78, i32 %79, i32 %80, i32 %81)
  br label %83

83:                                               ; preds = %77, %72
  %84 = load %struct.spider_net_card*, %struct.spider_net_card** %7, align 8
  %85 = load i32, i32* @SPIDER_NET_GHIINT0STS, align 4
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @spider_net_write_reg(%struct.spider_net_card* %84, i32 %85, i32 %86)
  %88 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %83, %38
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.spider_net_card* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spider_net_read_reg(%struct.spider_net_card*, i32) #1

declare dso_local i32 @spider_net_rx_irq_off(%struct.spider_net_card*) #1

declare dso_local i32 @napi_schedule(i32*) #1

declare dso_local i32 @spider_net_link_reset(%struct.net_device*) #1

declare dso_local i32 @spider_net_handle_error_irq(%struct.spider_net_card*, i32, i32, i32) #1

declare dso_local i32 @spider_net_write_reg(%struct.spider_net_card*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
