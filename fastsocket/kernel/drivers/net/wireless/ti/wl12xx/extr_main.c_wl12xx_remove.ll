; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_main.c_wl12xx_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ti/wl12xx/extr_main.c_wl12xx_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.wl1271 = type { %struct.wl12xx_priv* }
%struct.wl12xx_priv = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @wl12xx_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wl12xx_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.wl1271*, align 8
  %4 = alloca %struct.wl12xx_priv*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.wl1271* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.wl1271* %6, %struct.wl1271** %3, align 8
  %7 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %8 = icmp ne %struct.wl1271* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %18

10:                                               ; preds = %1
  %11 = load %struct.wl1271*, %struct.wl1271** %3, align 8
  %12 = getelementptr inbounds %struct.wl1271, %struct.wl1271* %11, i32 0, i32 0
  %13 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %12, align 8
  store %struct.wl12xx_priv* %13, %struct.wl12xx_priv** %4, align 8
  %14 = load %struct.wl12xx_priv*, %struct.wl12xx_priv** %4, align 8
  %15 = getelementptr inbounds %struct.wl12xx_priv, %struct.wl12xx_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @kfree(i32 %16)
  br label %18

18:                                               ; preds = %10, %9
  %19 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %20 = call i32 @wlcore_remove(%struct.platform_device* %19)
  ret i32 %20
}

declare dso_local %struct.wl1271* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @wlcore_remove(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
