; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_scc_readl_star.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_scc_readl_star.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i64 }
%struct.net_device = type { i32 }

@STAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dscc4_dev_priv*, %struct.net_device*)* @scc_readl_star to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scc_readl_star(%struct.dscc4_dev_priv* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.dscc4_dev_priv*, align 8
  %4 = alloca %struct.net_device*, align 8
  store %struct.dscc4_dev_priv* %0, %struct.dscc4_dev_priv** %3, align 8
  store %struct.net_device* %1, %struct.net_device** %4, align 8
  %5 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %6 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %9 = call i64 @SCC_REG_START(%struct.dscc4_dev_priv* %8)
  %10 = add nsw i64 %7, %9
  %11 = load i64, i64* @STAR, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %15 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %3, align 8
  %18 = call i64 @SCC_REG_START(%struct.dscc4_dev_priv* %17)
  %19 = add nsw i64 %16, %18
  %20 = load i64, i64* @STAR, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @readl(i64 %21)
  ret i32 %22
}

declare dso_local i32 @readl(i64) #1

declare dso_local i64 @SCC_REG_START(%struct.dscc4_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
