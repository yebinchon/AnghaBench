; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_selftest.c_mlx4_en_test_loopback_xmit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_selftest.c_mlx4_en_test_loopback_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlx4_en_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ethhdr = type { i32, i32, i32 }

@MLX4_LOOPBACK_TEST_PAYLOAD = common dso_local global i32 0, align 4
@ETH_HLEN = common dso_local global i64 0, align 8
@NET_IP_ALIGN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"-LOOPBACK_TEST_XMIT- failed to create skb for xmit\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@ETH_P_ARP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlx4_en_priv*)* @mlx4_en_test_loopback_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_test_loopback_xmit(%struct.mlx4_en_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlx4_en_priv*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.ethhdr*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mlx4_en_priv* %0, %struct.mlx4_en_priv** %3, align 8
  %10 = load i32, i32* @MLX4_LOOPBACK_TEST_PAYLOAD, align 4
  store i32 %10, i32* %7, align 4
  %11 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %12 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = load i32, i32* @MLX4_LOOPBACK_TEST_PAYLOAD, align 4
  %15 = zext i32 %14 to i64
  %16 = load i64, i64* @ETH_HLEN, align 8
  %17 = add nsw i64 %15, %16
  %18 = load i64, i64* @NET_IP_ALIGN, align 8
  %19 = add nsw i64 %17, %18
  %20 = call %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_3__* %13, i64 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %4, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %1
  %24 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %25 = call i32 @en_err(%struct.mlx4_en_priv* %24, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %2, align 4
  br label %82

28:                                               ; preds = %1
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i64, i64* @NET_IP_ALIGN, align 8
  %31 = call i32 @skb_reserve(%struct.sk_buff* %29, i64 %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = call i64 @skb_put(%struct.sk_buff* %32, i32 12)
  %34 = inttoptr i64 %33 to %struct.ethhdr*
  store %struct.ethhdr* %34, %struct.ethhdr** %5, align 8
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @skb_put(%struct.sk_buff* %35, i32 %36)
  %38 = inttoptr i64 %37 to i8*
  store i8* %38, i8** %6, align 8
  %39 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %40 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %43 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(i32 %41, i32 %46, i32 %47)
  %49 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %50 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* @ETH_ALEN, align 4
  %53 = call i32 @memset(i32 %51, i32 0, i32 %52)
  %54 = load i32, i32* @ETH_P_ARP, align 4
  %55 = call i32 @htons(i32 %54)
  %56 = load %struct.ethhdr*, %struct.ethhdr** %5, align 8
  %57 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %59 = call i32 @skb_set_mac_header(%struct.sk_buff* %58, i32 0)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %72, %28
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %7, align 4
  %63 = icmp ult i32 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %60
  %65 = load i32, i32* %8, align 4
  %66 = and i32 %65, 255
  %67 = trunc i32 %66 to i8
  %68 = load i8*, i8** %6, align 8
  %69 = load i32, i32* %8, align 4
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %68, i64 %70
  store i8 %67, i8* %71, align 1
  br label %72

72:                                               ; preds = %64
  %73 = load i32, i32* %8, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %8, align 4
  br label %60

75:                                               ; preds = %60
  %76 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %77 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %3, align 8
  %78 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %77, i32 0, i32 0
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %78, align 8
  %80 = call i32 @mlx4_en_xmit(%struct.sk_buff* %76, %struct.TYPE_3__* %79)
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %2, align 4
  br label %82

82:                                               ; preds = %75, %23
  %83 = load i32, i32* %2, align 4
  ret i32 %83
}

declare dso_local %struct.sk_buff* @netdev_alloc_skb(%struct.TYPE_3__*, i64) #1

declare dso_local i32 @en_err(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i64) #1

declare dso_local i64 @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @skb_set_mac_header(%struct.sk_buff*, i32) #1

declare dso_local i32 @mlx4_en_xmit(%struct.sk_buff*, %struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
