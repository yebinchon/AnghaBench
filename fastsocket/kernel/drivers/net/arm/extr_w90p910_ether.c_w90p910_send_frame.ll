; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_send_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_w90p910_ether.c_w90p910_send_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.w90p910_ether = type { i64, %struct.TYPE_2__*, %struct.platform_device* }
%struct.TYPE_2__ = type { i8**, %struct.w90p910_txbd* }
%struct.w90p910_txbd = type { i32, i32 }
%struct.platform_device = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"send data %d bytes, check it\0A\00", align 1
@TX_OWEN_DMA = common dso_local global i32 0, align 4
@PADDINGMODE = common dso_local global i32 0, align 4
@CRCMODE = common dso_local global i32 0, align 4
@MACTXINTEN = common dso_local global i32 0, align 4
@TX_DESC_SIZE = common dso_local global i64 0, align 8
@jiffies = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i8*, i32)* @w90p910_send_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @w90p910_send_frame(%struct.net_device* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.w90p910_ether*, align 8
  %8 = alloca %struct.w90p910_txbd*, align 8
  %9 = alloca %struct.platform_device*, align 8
  %10 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.w90p910_ether* @netdev_priv(%struct.net_device* %11)
  store %struct.w90p910_ether* %12, %struct.w90p910_ether** %7, align 8
  %13 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %14 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %13, i32 0, i32 2
  %15 = load %struct.platform_device*, %struct.platform_device** %14, align 8
  store %struct.platform_device* %15, %struct.platform_device** %9, align 8
  %16 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %17 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load %struct.w90p910_txbd*, %struct.w90p910_txbd** %19, align 8
  %21 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %22 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.w90p910_txbd, %struct.w90p910_txbd* %20, i64 %23
  store %struct.w90p910_txbd* %24, %struct.w90p910_txbd** %8, align 8
  %25 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %26 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i8**, i8*** %28, align 8
  %30 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %31 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds i8*, i8** %29, i64 %32
  %34 = load i8*, i8** %33, align 8
  store i8* %34, i8** %10, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1514
  br i1 %36, label %37, label %42

37:                                               ; preds = %3
  %38 = load %struct.platform_device*, %struct.platform_device** %9, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %40)
  store i32 1514, i32* %6, align 4
  br label %42

42:                                               ; preds = %37, %3
  %43 = load i32, i32* %6, align 4
  %44 = and i32 %43, 65535
  %45 = load %struct.w90p910_txbd*, %struct.w90p910_txbd** %8, align 8
  %46 = getelementptr inbounds %struct.w90p910_txbd, %struct.w90p910_txbd* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i8*, i8** %10, align 8
  %48 = load i8*, i8** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = call i32 @memcpy(i8* %47, i8* %48, i32 %49)
  %51 = load i32, i32* @TX_OWEN_DMA, align 4
  %52 = load i32, i32* @PADDINGMODE, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @CRCMODE, align 4
  %55 = or i32 %53, %54
  %56 = load i32, i32* @MACTXINTEN, align 4
  %57 = or i32 %55, %56
  %58 = load %struct.w90p910_txbd*, %struct.w90p910_txbd** %8, align 8
  %59 = getelementptr inbounds %struct.w90p910_txbd, %struct.w90p910_txbd* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  %60 = load %struct.net_device*, %struct.net_device** %4, align 8
  %61 = call i32 @w90p910_enable_tx(%struct.net_device* %60, i32 1)
  %62 = load %struct.net_device*, %struct.net_device** %4, align 8
  %63 = call i32 @w90p910_trigger_tx(%struct.net_device* %62)
  %64 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %65 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %65, align 8
  %68 = load i64, i64* @TX_DESC_SIZE, align 8
  %69 = icmp uge i64 %67, %68
  br i1 %69, label %70, label %73

70:                                               ; preds = %42
  %71 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %72 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %71, i32 0, i32 0
  store i64 0, i64* %72, align 8
  br label %73

73:                                               ; preds = %70, %42
  %74 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %75 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 1
  %78 = load %struct.w90p910_txbd*, %struct.w90p910_txbd** %77, align 8
  %79 = load %struct.w90p910_ether*, %struct.w90p910_ether** %7, align 8
  %80 = getelementptr inbounds %struct.w90p910_ether, %struct.w90p910_ether* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = getelementptr inbounds %struct.w90p910_txbd, %struct.w90p910_txbd* %78, i64 %81
  store %struct.w90p910_txbd* %82, %struct.w90p910_txbd** %8, align 8
  %83 = load i32, i32* @jiffies, align 4
  %84 = load %struct.net_device*, %struct.net_device** %4, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 4
  %86 = load %struct.w90p910_txbd*, %struct.w90p910_txbd** %8, align 8
  %87 = getelementptr inbounds %struct.w90p910_txbd, %struct.w90p910_txbd* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @TX_OWEN_DMA, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %73
  %93 = load %struct.net_device*, %struct.net_device** %4, align 8
  %94 = call i32 @netif_stop_queue(%struct.net_device* %93)
  br label %95

95:                                               ; preds = %92, %73
  ret i32 0
}

declare dso_local %struct.w90p910_ether* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @w90p910_enable_tx(%struct.net_device*, i32) #1

declare dso_local i32 @w90p910_trigger_tx(%struct.net_device*) #1

declare dso_local i32 @netif_stop_queue(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
