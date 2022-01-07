; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_change_mtu.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/stmmac/extr_stmmac_main.c_stmmac_change_mtu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i32 }
%struct.stmmac_priv = type { i64 }

@.str = private unnamed_addr constant [39 x i8] c"%s: must be stopped to change its MTU\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@JUMBO_LEN = common dso_local global i32 0, align 4
@ETH_DATA_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"%s: invalid MTU, max MTU is: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, i32)* @stmmac_change_mtu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stmmac_change_mtu(%struct.net_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stmmac_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.stmmac_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.stmmac_priv* %9, %struct.stmmac_priv** %6, align 8
  %10 = load %struct.net_device*, %struct.net_device** %4, align 8
  %11 = call i64 @netif_running(%struct.net_device* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %20

13:                                               ; preds = %2
  %14 = load %struct.net_device*, %struct.net_device** %4, align 8
  %15 = getelementptr inbounds %struct.net_device, %struct.net_device* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* @EBUSY, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %48

20:                                               ; preds = %2
  %21 = load %struct.stmmac_priv*, %struct.stmmac_priv** %6, align 8
  %22 = getelementptr inbounds %struct.stmmac_priv, %struct.stmmac_priv* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = load i32, i32* @JUMBO_LEN, align 4
  store i32 %26, i32* %7, align 4
  br label %29

27:                                               ; preds = %20
  %28 = load i32, i32* @ETH_DATA_LEN, align 4
  store i32 %28, i32* %7, align 4
  br label %29

29:                                               ; preds = %27, %25
  %30 = load i32, i32* %5, align 4
  %31 = icmp slt i32 %30, 46
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %44

36:                                               ; preds = %32, %29
  %37 = load %struct.net_device*, %struct.net_device** %4, align 8
  %38 = getelementptr inbounds %struct.net_device, %struct.net_device* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = call i32 (i8*, i32, ...) @pr_err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %39, i32 %40)
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %48

44:                                               ; preds = %32
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.net_device*, %struct.net_device** %4, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %44, %36, %13
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local %struct.stmmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @pr_err(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
