; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_rx_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_rx_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i32, i32, i64, i64, i64 }
%struct.net_device = type { i32 }

@RX_RING_SIZE = common dso_local global i32 0, align 4
@CH0LRDA = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dscc4_dev_priv*, %struct.net_device*)* @dscc4_rx_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dscc4_rx_update(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %6 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %5, i32 0, i32 4
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = sub nsw i32 %10, 1
  %12 = load i32, i32* @RX_RING_SIZE, align 4
  %13 = srem i32 %11, %12
  %14 = sext i32 %13 to i64
  %15 = mul i64 %14, 4
  %16 = add i64 %7, %15
  %17 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %18 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %17, i32 0, i32 3
  store i64 %16, i64* %18, align 8
  %19 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %20 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %19, i32 0, i32 3
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %23 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @CH0LRDA, align 8
  %26 = add nsw i64 %24, %25
  %27 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %28 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = mul nsw i32 %29, 4
  %31 = sext i32 %30 to i64
  %32 = add nsw i64 %26, %31
  %33 = call i32 @writel(i64 %21, i64 %32)
  ret void
}

declare dso_local i32 @writel(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
