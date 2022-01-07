; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_scc_writel.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_scc_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dscc4_dev_priv = type { i64, i32* }
%struct.net_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.dscc4_dev_priv*, %struct.net_device*, i32)* @scc_writel to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scc_writel(i32 %0, %struct.dscc4_dev_priv* %1, %struct.net_device* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.dscc4_dev_priv*, align 8
  %7 = alloca %struct.net_device*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.dscc4_dev_priv* %1, %struct.dscc4_dev_priv** %6, align 8
  store %struct.net_device* %2, %struct.net_device** %7, align 8
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %6, align 8
  %11 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = load i32, i32* %8, align 4
  %14 = ashr i32 %13, 2
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %12, i64 %15
  store i32 %9, i32* %16, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %6, align 8
  %19 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %6, align 8
  %22 = call i64 @SCC_REG_START(%struct.dscc4_dev_priv* %21)
  %23 = add nsw i64 %20, %22
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %23, %25
  %27 = call i32 @writel(i32 %17, i64 %26)
  ret void
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i64 @SCC_REG_START(%struct.dscc4_dev_priv*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
