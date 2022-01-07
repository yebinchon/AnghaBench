; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_fec.c_fec_enet_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.fec_enet_private = type { i64 }

@IRQ_NONE = common dso_local global i32 0, align 4
@FEC_IEVENT = common dso_local global i64 0, align 8
@FEC_ENET_RXF = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@FEC_ENET_TXF = common dso_local global i32 0, align 4
@FEC_ENET_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @fec_enet_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fec_enet_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.fec_enet_private*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.net_device*
  store %struct.net_device* %10, %struct.net_device** %5, align 8
  %11 = load %struct.net_device*, %struct.net_device** %5, align 8
  %12 = call %struct.fec_enet_private* @netdev_priv(%struct.net_device* %11)
  store %struct.fec_enet_private* %12, %struct.fec_enet_private** %6, align 8
  %13 = load i32, i32* @IRQ_NONE, align 4
  store i32 %13, i32* %8, align 4
  br label %14

14:                                               ; preds = %55, %2
  %15 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %16 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @FEC_IEVENT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @readl(i64 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = load %struct.fec_enet_private*, %struct.fec_enet_private** %6, align 8
  %23 = getelementptr inbounds %struct.fec_enet_private, %struct.fec_enet_private* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FEC_IEVENT, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @writel(i32 %21, i64 %26)
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* @FEC_ENET_RXF, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %14
  %33 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %33, i32* %8, align 4
  %34 = load %struct.net_device*, %struct.net_device** %5, align 8
  %35 = call i32 @fec_enet_rx(%struct.net_device* %34)
  br label %36

36:                                               ; preds = %32, %14
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* @FEC_ENET_TXF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %42, i32* %8, align 4
  %43 = load %struct.net_device*, %struct.net_device** %5, align 8
  %44 = call i32 @fec_enet_tx(%struct.net_device* %43)
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %7, align 4
  %47 = load i32, i32* @FEC_ENET_MII, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %51, i32* %8, align 4
  %52 = load %struct.net_device*, %struct.net_device** %5, align 8
  %53 = call i32 @fec_enet_mii(%struct.net_device* %52)
  br label %54

54:                                               ; preds = %50, %45
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %14, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  ret i32 %59
}

declare dso_local %struct.fec_enet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @fec_enet_rx(%struct.net_device*) #1

declare dso_local i32 @fec_enet_tx(%struct.net_device*) #1

declare dso_local i32 @fec_enet_mii(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
