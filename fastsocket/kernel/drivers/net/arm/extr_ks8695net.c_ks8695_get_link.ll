; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_get_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_get_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ks8695_priv = type { i32, i64 }

@KS8695_WMC = common dso_local global i64 0, align 8
@WMC_WLS = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*)* @ks8695_get_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_get_link(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ks8695_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ks8695_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ks8695_priv* %7, %struct.ks8695_priv** %4, align 8
  %8 = load %struct.ks8695_priv*, %struct.ks8695_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %25 [
    i32 130, label %11
    i32 128, label %12
    i32 129, label %22
  ]

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %26

12:                                               ; preds = %1
  %13 = load %struct.ks8695_priv*, %struct.ks8695_priv** %4, align 8
  %14 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @KS8695_WMC, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @readl(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @WMC_WLS, align 4
  %21 = and i32 %19, %20
  store i32 %21, i32* %2, align 4
  br label %26

22:                                               ; preds = %1
  %23 = load i32, i32* @EOPNOTSUPP, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %2, align 4
  br label %26

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %26

26:                                               ; preds = %25, %22, %12, %11
  %27 = load i32, i32* %2, align 4
  ret i32 %27
}

declare dso_local %struct.ks8695_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
