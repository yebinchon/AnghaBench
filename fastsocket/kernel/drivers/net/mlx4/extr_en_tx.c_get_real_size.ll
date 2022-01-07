; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_get_real_size.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_tx.c_get_real_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.mlx4_en_priv = type { i32 }
%struct.TYPE_2__ = type { i32 }

@CTRL_SIZE = common dso_local global i32 0, align 4
@DS_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Non-linear headers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*, i32*)* @get_real_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_real_size(%struct.sk_buff* %0, %struct.net_device* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.mlx4_en_priv*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.net_device* %1, %struct.net_device** %6, align 8
  store i32* %2, i32** %7, align 8
  %10 = load %struct.net_device*, %struct.net_device** %6, align 8
  %11 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %10)
  store %struct.mlx4_en_priv* %11, %struct.mlx4_en_priv** %8, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i64 @skb_is_gso(%struct.sk_buff* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %3
  %16 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %17 = call i32 @skb_transport_offset(%struct.sk_buff* %16)
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call i32 @tcp_hdrlen(%struct.sk_buff* %18)
  %20 = add nsw i32 %17, %19
  %21 = load i32*, i32** %7, align 8
  store i32 %20, i32* %21, align 4
  %22 = load i32, i32* @CTRL_SIZE, align 4
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @DS_SIZE, align 4
  %28 = mul nsw i32 %26, %27
  %29 = add nsw i32 %22, %28
  %30 = load i32*, i32** %7, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 4
  %33 = load i32, i32* @DS_SIZE, align 4
  %34 = call i32 @ALIGN(i32 %32, i32 %33)
  %35 = add nsw i32 %29, %34
  store i32 %35, i32* %9, align 4
  %36 = load i32*, i32** %7, align 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %39 = call i32 @skb_headlen(%struct.sk_buff* %38)
  %40 = icmp ne i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %15
  %45 = load i32*, i32** %7, align 8
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @skb_headlen(%struct.sk_buff* %47)
  %49 = icmp slt i32 %46, %48
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i32, i32* @DS_SIZE, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  br label %62

54:                                               ; preds = %44
  %55 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %56 = call i64 @netif_msg_tx_err(%struct.mlx4_en_priv* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %54
  %59 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %8, align 8
  %60 = call i32 @en_warn(%struct.mlx4_en_priv* %59, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %61

61:                                               ; preds = %58, %54
  store i32 0, i32* %4, align 4
  br label %85

62:                                               ; preds = %50
  br label %63

63:                                               ; preds = %62, %15
  br label %83

64:                                               ; preds = %3
  %65 = load i32*, i32** %7, align 8
  store i32 0, i32* %65, align 4
  %66 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %67 = call i32 @is_inline(%struct.sk_buff* %66, i32* null)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %79, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* @CTRL_SIZE, align 4
  %71 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %72 = call %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff* %71)
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 %74, 1
  %76 = load i32, i32* @DS_SIZE, align 4
  %77 = mul nsw i32 %75, %76
  %78 = add nsw i32 %70, %77
  store i32 %78, i32* %9, align 4
  br label %82

79:                                               ; preds = %64
  %80 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %81 = call i32 @inline_size(%struct.sk_buff* %80)
  store i32 %81, i32* %9, align 4
  br label %82

82:                                               ; preds = %79, %69
  br label %83

83:                                               ; preds = %82, %63
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %4, align 4
  br label %85

85:                                               ; preds = %83, %61
  %86 = load i32, i32* %4, align 4
  ret i32 %86
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @skb_is_gso(%struct.sk_buff*) #1

declare dso_local i32 @skb_transport_offset(%struct.sk_buff*) #1

declare dso_local i32 @tcp_hdrlen(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_headlen(%struct.sk_buff*) #1

declare dso_local i64 @netif_msg_tx_err(%struct.mlx4_en_priv*) #1

declare dso_local i32 @en_warn(%struct.mlx4_en_priv*, i8*) #1

declare dso_local i32 @is_inline(%struct.sk_buff*, i32*) #1

declare dso_local i32 @inline_size(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
