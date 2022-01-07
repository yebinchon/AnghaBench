; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ethoc.c_ethoc_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethoc = type { i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ethoc_bd = type { i32, i32 }
%struct.sk_buff = type { i32 }

@RX_BD_EMPTY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"low on memory - packet dropped\0A\00", align 1
@RX_BD_STATS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @ethoc_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ethoc_rx(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ethoc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ethoc_bd, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i8*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.net_device*, %struct.net_device** %3, align 8
  %13 = call %struct.ethoc* @netdev_priv(%struct.net_device* %12)
  store %struct.ethoc* %13, %struct.ethoc** %5, align 8
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %116, %2
  %15 = load i32, i32* %6, align 4
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %119

18:                                               ; preds = %14
  %19 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %20 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %23 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %26 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = urem i32 %24, %27
  %29 = add i32 %21, %28
  store i32 %29, i32* %7, align 4
  %30 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ethoc_read_bd(%struct.ethoc* %30, i32 %31, %struct.ethoc_bd* %8)
  %33 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @RX_BD_EMPTY, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %18
  br label %119

39:                                               ; preds = %18
  %40 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %41 = call i64 @ethoc_update_rx_stats(%struct.ethoc* %40, %struct.ethoc_bd* %8)
  %42 = icmp eq i64 %41, 0
  br i1 %42, label %43, label %99

43:                                               ; preds = %39
  %44 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = ashr i32 %45, 16
  store i32 %46, i32* %9, align 4
  %47 = load %struct.net_device*, %struct.net_device** %3, align 8
  %48 = load i32, i32* %9, align 4
  %49 = call %struct.sk_buff* @netdev_alloc_skb(%struct.net_device* %47, i32 %48)
  store %struct.sk_buff* %49, %struct.sk_buff** %10, align 8
  %50 = load i32, i32* %9, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %9, align 4
  %52 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %53 = call i32 @skb_reserve(%struct.sk_buff* %52, i32 2)
  %54 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %55 = call i64 @likely(%struct.sk_buff* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %85

57:                                               ; preds = %43
  %58 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i8* @phys_to_virt(i32 %59)
  store i8* %60, i8** %11, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @skb_put(%struct.sk_buff* %61, i32 %62)
  %64 = load i8*, i8** %11, align 8
  %65 = load i32, i32* %9, align 4
  %66 = call i32 @memcpy_fromio(i32 %63, i8* %64, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %68 = load %struct.net_device*, %struct.net_device** %3, align 8
  %69 = call i32 @eth_type_trans(%struct.sk_buff* %67, %struct.net_device* %68)
  %70 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %71 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  %72 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %73 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %79 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %78, i32 0, i32 3
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = add nsw i32 %81, %77
  store i32 %82, i32* %80, align 4
  %83 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %84 = call i32 @netif_receive_skb(%struct.sk_buff* %83)
  br label %98

85:                                               ; preds = %43
  %86 = call i64 (...) @net_ratelimit()
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %92

88:                                               ; preds = %85
  %89 = load %struct.net_device*, %struct.net_device** %3, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = call i32 @dev_warn(i32* %90, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %92

92:                                               ; preds = %88, %85
  %93 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %94 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %95, align 4
  br label %119

98:                                               ; preds = %57
  br label %99

99:                                               ; preds = %98, %39
  %100 = load i32, i32* @RX_BD_STATS, align 4
  %101 = xor i32 %100, -1
  %102 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = and i32 %103, %101
  store i32 %104, i32* %102, align 4
  %105 = load i32, i32* @RX_BD_EMPTY, align 4
  %106 = getelementptr inbounds %struct.ethoc_bd, %struct.ethoc_bd* %8, i32 0, i32 0
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %107, %105
  store i32 %108, i32* %106, align 4
  %109 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %110 = load i32, i32* %7, align 4
  %111 = call i32 @ethoc_write_bd(%struct.ethoc* %109, i32 %110, %struct.ethoc_bd* %8)
  %112 = load %struct.ethoc*, %struct.ethoc** %5, align 8
  %113 = getelementptr inbounds %struct.ethoc, %struct.ethoc* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = add i32 %114, 1
  store i32 %115, i32* %113, align 4
  br label %116

116:                                              ; preds = %99
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %6, align 4
  br label %14

119:                                              ; preds = %92, %38, %14
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

declare dso_local %struct.ethoc* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ethoc_read_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

declare dso_local i64 @ethoc_update_rx_stats(%struct.ethoc*, %struct.ethoc_bd*) #1

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.net_device*, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i64 @likely(%struct.sk_buff*) #1

declare dso_local i8* @phys_to_virt(i32) #1

declare dso_local i32 @memcpy_fromio(i32, i8*, i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @eth_type_trans(%struct.sk_buff*, %struct.net_device*) #1

declare dso_local i32 @netif_receive_skb(%struct.sk_buff*) #1

declare dso_local i64 @net_ratelimit(...) #1

declare dso_local i32 @dev_warn(i32*, i8*) #1

declare dso_local i32 @ethoc_write_bd(%struct.ethoc*, i32, %struct.ethoc_bd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
