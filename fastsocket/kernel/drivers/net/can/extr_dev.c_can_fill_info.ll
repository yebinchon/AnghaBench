; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_fill_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_dev.c_can_fill_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_device = type { i32 }
%struct.can_priv = type { i32, i32, %struct.can_ctrlmode*, %struct.can_ctrlmode, %struct.can_ctrlmode, i32 (%struct.net_device*, i32*)*, i32 }
%struct.can_ctrlmode = type { i32 }

@IFLA_CAN_STATE = common dso_local global i32 0, align 4
@IFLA_CAN_CTRLMODE = common dso_local global i32 0, align 4
@IFLA_CAN_RESTART_MS = common dso_local global i32 0, align 4
@IFLA_CAN_BITTIMING = common dso_local global i32 0, align 4
@IFLA_CAN_CLOCK = common dso_local global i32 0, align 4
@IFLA_CAN_BITTIMING_CONST = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_device*)* @can_fill_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @can_fill_info(%struct.sk_buff* %0, %struct.net_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.can_priv*, align 8
  %7 = alloca %struct.can_ctrlmode, align 4
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %5, align 8
  %10 = call %struct.can_priv* @netdev_priv(%struct.net_device* %9)
  store %struct.can_priv* %10, %struct.can_priv** %6, align 8
  %11 = getelementptr inbounds %struct.can_ctrlmode, %struct.can_ctrlmode* %7, i32 0, i32 0
  %12 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %13 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %12, i32 0, i32 6
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %11, align 4
  %15 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %16 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %8, align 4
  %18 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %19 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %18, i32 0, i32 5
  %20 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %19, align 8
  %21 = icmp ne i32 (%struct.net_device*, i32*)* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %2
  %23 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %24 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %23, i32 0, i32 5
  %25 = load i32 (%struct.net_device*, i32*)*, i32 (%struct.net_device*, i32*)** %24, align 8
  %26 = load %struct.net_device*, %struct.net_device** %5, align 8
  %27 = call i32 %25(%struct.net_device* %26, i32* %8)
  br label %28

28:                                               ; preds = %22, %2
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @IFLA_CAN_STATE, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call i32 @NLA_PUT_U32(%struct.sk_buff* %29, i32 %30, i32 %31)
  %33 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %34 = load i32, i32* @IFLA_CAN_CTRLMODE, align 4
  %35 = call i32 @NLA_PUT(%struct.sk_buff* %33, i32 %34, i32 4, %struct.can_ctrlmode* %7)
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @IFLA_CAN_RESTART_MS, align 4
  %38 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %39 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @NLA_PUT_U32(%struct.sk_buff* %36, i32 %37, i32 %40)
  %42 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %43 = load i32, i32* @IFLA_CAN_BITTIMING, align 4
  %44 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %45 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %44, i32 0, i32 4
  %46 = call i32 @NLA_PUT(%struct.sk_buff* %42, i32 %43, i32 4, %struct.can_ctrlmode* %45)
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i32, i32* @IFLA_CAN_CLOCK, align 4
  %49 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %50 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %49, i32 0, i32 3
  %51 = call i32 @NLA_PUT(%struct.sk_buff* %47, i32 %48, i32 4, %struct.can_ctrlmode* %50)
  %52 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %53 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %52, i32 0, i32 2
  %54 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %53, align 8
  %55 = icmp ne %struct.can_ctrlmode* %54, null
  br i1 %55, label %56, label %63

56:                                               ; preds = %28
  %57 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %58 = load i32, i32* @IFLA_CAN_BITTIMING_CONST, align 4
  %59 = load %struct.can_priv*, %struct.can_priv** %6, align 8
  %60 = getelementptr inbounds %struct.can_priv, %struct.can_priv* %59, i32 0, i32 2
  %61 = load %struct.can_ctrlmode*, %struct.can_ctrlmode** %60, align 8
  %62 = call i32 @NLA_PUT(%struct.sk_buff* %57, i32 %58, i32 4, %struct.can_ctrlmode* %61)
  br label %63

63:                                               ; preds = %56, %28
  store i32 0, i32* %3, align 4
  br label %67

64:                                               ; No predecessors!
  %65 = load i32, i32* @EMSGSIZE, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %64, %63
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local %struct.can_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @NLA_PUT_U32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @NLA_PUT(%struct.sk_buff*, i32, i32, %struct.can_ctrlmode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
