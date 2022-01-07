; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_rionet.c_rionet_rx_clean.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_rionet.c_rionet_rx_clean.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.rionet_private = type { i32, %struct.TYPE_6__**, i32 }
%struct.TYPE_6__ = type { i32, i8* }

@RIONET_MAILBOX = common dso_local global i32 0, align 4
@RIO_MAX_MSG_SIZE = common dso_local global i64 0, align 8
@NET_RX_DROP = common dso_local global i32 0, align 4
@RIONET_RX_RING_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @rionet_rx_clean to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rionet_rx_clean(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rionet_private*, align 8
  %6 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  store i32 0, i32* %4, align 4
  %7 = load %struct.net_device*, %struct.net_device** %2, align 8
  %8 = call %struct.rionet_private* @netdev_priv(%struct.net_device* %7)
  store %struct.rionet_private* %8, %struct.rionet_private** %5, align 8
  %9 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %10 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %3, align 4
  br label %12

12:                                               ; preds = %98, %1
  %13 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %14 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %13, i32 0, i32 1
  %15 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %14, align 8
  %16 = load i32, i32* %3, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %15, i64 %17
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %12
  br label %98

22:                                               ; preds = %12
  %23 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %24 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RIONET_MAILBOX, align 4
  %27 = call i8* @rio_get_inb_message(i32 %25, i32 %26)
  store i8* %27, i8** %6, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %22
  br label %107

30:                                               ; preds = %22
  %31 = load i8*, i8** %6, align 8
  %32 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %33 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %32, i32 0, i32 1
  %34 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %33, align 8
  %35 = load i32, i32* %3, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %34, i64 %36
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  store i8* %31, i8** %39, align 8
  %40 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %41 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %40, i32 0, i32 1
  %42 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %41, align 8
  %43 = load i32, i32* %3, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %42, i64 %44
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %48 = call i32 @skb_put(%struct.TYPE_6__* %46, i64 %47)
  %49 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %50 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %49, i32 0, i32 1
  %51 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %50, align 8
  %52 = load i32, i32* %3, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %51, i64 %53
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %54, align 8
  %56 = load %struct.net_device*, %struct.net_device** %2, align 8
  %57 = call i32 @eth_type_trans(%struct.TYPE_6__* %55, %struct.net_device* %56)
  %58 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %59 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %59, align 8
  %61 = load i32, i32* %3, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %60, i64 %62
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store i32 %57, i32* %65, align 8
  %66 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %67 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %66, i32 0, i32 1
  %68 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %67, align 8
  %69 = load i32, i32* %3, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %68, i64 %70
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = call i32 @netif_rx(%struct.TYPE_6__* %72)
  store i32 %73, i32* %4, align 4
  %74 = load i32, i32* %4, align 4
  %75 = load i32, i32* @NET_RX_DROP, align 4
  %76 = icmp eq i32 %74, %75
  br i1 %76, label %77, label %83

77:                                               ; preds = %30
  %78 = load %struct.net_device*, %struct.net_device** %2, align 8
  %79 = getelementptr inbounds %struct.net_device, %struct.net_device* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %80, align 4
  br label %97

83:                                               ; preds = %30
  %84 = load %struct.net_device*, %struct.net_device** %2, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load i64, i64* @RIO_MAX_MSG_SIZE, align 8
  %90 = load %struct.net_device*, %struct.net_device** %2, align 8
  %91 = getelementptr inbounds %struct.net_device, %struct.net_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = sext i32 %93 to i64
  %95 = add nsw i64 %94, %89
  %96 = trunc i64 %95 to i32
  store i32 %96, i32* %92, align 4
  br label %97

97:                                               ; preds = %83, %77
  br label %98

98:                                               ; preds = %97, %21
  %99 = load i32, i32* %3, align 4
  %100 = add nsw i32 %99, 1
  %101 = load i32, i32* @RIONET_RX_RING_SIZE, align 4
  %102 = srem i32 %100, %101
  store i32 %102, i32* %3, align 4
  %103 = load %struct.rionet_private*, %struct.rionet_private** %5, align 8
  %104 = getelementptr inbounds %struct.rionet_private, %struct.rionet_private* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %102, %105
  br i1 %106, label %12, label %107

107:                                              ; preds = %98, %29
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local %struct.rionet_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i8* @rio_get_inb_message(i32, i32) #1

declare dso_local i32 @skb_put(%struct.TYPE_6__*, i64) #1

declare dso_local i32 @eth_type_trans(%struct.TYPE_6__*, %struct.net_device*) #1

declare dso_local i32 @netif_rx(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
