; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_net_kern.c_uml_net_rx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/drivers/extr_net_kern.c_uml_net_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff.1 = type { i64, i32, %struct.net_device* }
%struct.net_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.uml_net_private = type { i32 (i32, %struct.sk_buff*, %struct.uml_net_private*)*, i32 (%struct.sk_buff.0*)*, i32, i32 }
%struct.sk_buff = type opaque
%struct.sk_buff.0 = type opaque

@drop_skb = common dso_local global %struct.sk_buff.1* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @uml_net_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uml_net_rx(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.uml_net_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff.1*, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.uml_net_private* @netdev_priv(%struct.net_device* %7)
  store %struct.uml_net_private* %8, %struct.uml_net_private** %4, align 8
  %9 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %10 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.sk_buff.1* @dev_alloc_skb(i32 %11)
  store %struct.sk_buff.1* %12, %struct.sk_buff.1** %6, align 8
  %13 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %14 = icmp eq %struct.sk_buff.1* %13, null
  br i1 %14, label %15, label %34

15:                                               ; preds = %1
  %16 = load %struct.net_device*, %struct.net_device** %3, align 8
  %17 = load %struct.sk_buff.1*, %struct.sk_buff.1** @drop_skb, align 8
  %18 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %17, i32 0, i32 2
  store %struct.net_device* %16, %struct.net_device** %18, align 8
  %19 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %20 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %19, i32 0, i32 0
  %21 = load i32 (i32, %struct.sk_buff*, %struct.uml_net_private*)*, i32 (i32, %struct.sk_buff*, %struct.uml_net_private*)** %20, align 8
  %22 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %23 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.sk_buff.1*, %struct.sk_buff.1** @drop_skb, align 8
  %26 = bitcast %struct.sk_buff.1* %25 to %struct.sk_buff*
  %27 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %28 = call i32 %21(i32 %24, %struct.sk_buff* %26, %struct.uml_net_private* %27)
  %29 = load %struct.net_device*, %struct.net_device** %3, align 8
  %30 = getelementptr inbounds %struct.net_device, %struct.net_device* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  store i32 0, i32* %2, align 4
  br label %91

34:                                               ; preds = %1
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %37 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %36, i32 0, i32 2
  store %struct.net_device* %35, %struct.net_device** %37, align 8
  %38 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %39 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %40 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @skb_put(%struct.sk_buff.1* %38, i32 %41)
  %43 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %44 = call i32 @skb_reset_mac_header(%struct.sk_buff.1* %43)
  %45 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %46 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %45, i32 0, i32 0
  %47 = load i32 (i32, %struct.sk_buff*, %struct.uml_net_private*)*, i32 (i32, %struct.sk_buff*, %struct.uml_net_private*)** %46, align 8
  %48 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %49 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 8
  %51 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %52 = bitcast %struct.sk_buff.1* %51 to %struct.sk_buff*
  %53 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %54 = call i32 %47(i32 %50, %struct.sk_buff* %52, %struct.uml_net_private* %53)
  store i32 %54, i32* %5, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %87

57:                                               ; preds = %34
  %58 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call i32 @skb_trim(%struct.sk_buff.1* %58, i32 %59)
  %61 = load %struct.uml_net_private*, %struct.uml_net_private** %4, align 8
  %62 = getelementptr inbounds %struct.uml_net_private, %struct.uml_net_private* %61, i32 0, i32 1
  %63 = load i32 (%struct.sk_buff.0*)*, i32 (%struct.sk_buff.0*)** %62, align 8
  %64 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %65 = bitcast %struct.sk_buff.1* %64 to %struct.sk_buff.0*
  %66 = call i32 %63(%struct.sk_buff.0* %65)
  %67 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %68 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %67, i32 0, i32 1
  store i32 %66, i32* %68, align 8
  %69 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %70 = getelementptr inbounds %struct.sk_buff.1, %struct.sk_buff.1* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.net_device*, %struct.net_device** %3, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sext i32 %75 to i64
  %77 = add nsw i64 %76, %71
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %74, align 4
  %79 = load %struct.net_device*, %struct.net_device** %3, align 8
  %80 = getelementptr inbounds %struct.net_device, %struct.net_device* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %81, align 4
  %84 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %85 = call i32 @netif_rx(%struct.sk_buff.1* %84)
  %86 = load i32, i32* %5, align 4
  store i32 %86, i32* %2, align 4
  br label %91

87:                                               ; preds = %34
  %88 = load %struct.sk_buff.1*, %struct.sk_buff.1** %6, align 8
  %89 = call i32 @kfree_skb(%struct.sk_buff.1* %88)
  %90 = load i32, i32* %5, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %87, %57, %15
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.uml_net_private* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.sk_buff.1* @dev_alloc_skb(i32) #1

declare dso_local i32 @skb_put(%struct.sk_buff.1*, i32) #1

declare dso_local i32 @skb_reset_mac_header(%struct.sk_buff.1*) #1

declare dso_local i32 @skb_trim(%struct.sk_buff.1*, i32) #1

declare dso_local i32 @netif_rx(%struct.sk_buff.1*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff.1*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
