; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@INT_MASK_ALL = common dso_local global i32 0, align 4
@INT_SOURCE = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@INT_MASK_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"packet dropped\0A\00", align 1
@INT_MASK_RX = common dso_local global i32 0, align 4
@INT_MASK_TX = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ethoc_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca %struct.ethoc*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %6, align 8
  %12 = call %struct.ethoc* @netdev_priv(%struct.net_device* %11)
  store %struct.ethoc* %12, %struct.ethoc** %7, align 8
  %13 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %14 = load i32, i32* @INT_MASK_ALL, align 4
  %15 = call i32 @ethoc_disable_irq(%struct.ethoc* %13, i32 %14)
  %16 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %17 = load i32, i32* @INT_SOURCE, align 4
  %18 = call i32 @ethoc_read(%struct.ethoc* %16, i32 %17)
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* %8, align 4
  %20 = icmp eq i32 %19, 0
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %2
  %25 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %26 = load i32, i32* @INT_MASK_ALL, align 4
  %27 = call i32 @ethoc_enable_irq(%struct.ethoc* %25, i32 %26)
  %28 = load i32, i32* @IRQ_NONE, align 4
  store i32 %28, i32* %3, align 4
  br label %81

29:                                               ; preds = %2
  %30 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @ethoc_ack_irq(%struct.ethoc* %30, i32 %31)
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @INT_MASK_BUSY, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.net_device*, %struct.net_device** %6, align 8
  %39 = getelementptr inbounds %struct.net_device, %struct.net_device* %38, i32 0, i32 0
  %40 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %41 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %42 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  br label %46

46:                                               ; preds = %37, %29
  %47 = load i32, i32* %8, align 4
  %48 = load i32, i32* @INT_MASK_RX, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %61

51:                                               ; preds = %46
  %52 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %53 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %52, i32 0, i32 0
  %54 = call i64 @napi_schedule_prep(i32* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %58 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %57, i32 0, i32 0
  %59 = call i32 @__napi_schedule(i32* %58)
  br label %60

60:                                               ; preds = %56, %51
  br label %65

61:                                               ; preds = %46
  %62 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %63 = load i32, i32* @INT_MASK_RX, align 4
  %64 = call i32 @ethoc_enable_irq(%struct.ethoc* %62, i32 %63)
  br label %65

65:                                               ; preds = %61, %60
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* @INT_MASK_TX, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %65
  %71 = load %struct.net_device*, %struct.net_device** %6, align 8
  %72 = call i32 @ethoc_tx(%struct.net_device* %71)
  br label %73

73:                                               ; preds = %70, %65
  %74 = load %struct.ethoc*, %struct.ethoc** %7, align 8
  %75 = load i32, i32* @INT_MASK_ALL, align 4
  %76 = load i32, i32* @INT_MASK_RX, align 4
  %77 = xor i32 %76, -1
  %78 = and i32 %75, %77
  %79 = call i32 @ethoc_enable_irq(%struct.ethoc* %74, i32 %78)
  %80 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %80, i32* %3, align 4
  br label %81

81:                                               ; preds = %73, %24
  %82 = load i32, i32* %3, align 4
  ret i32 %82
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_disable_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_read(%struct.ethoc*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ethoc_enable_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @ethoc_ack_irq(%struct.ethoc*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i64 @napi_schedule_prep(i32*) #1

declare dso_local i32 @__napi_schedule(i32*) #1

declare dso_local i32 @ethoc_tx(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
