; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_dscc4.c_dscc4_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.dscc4_dev_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@jiffies = common dso_local global i64 0, align 8
@TX_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @dscc4_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dscc4_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.dscc4_dev_priv*, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.net_device*
  store %struct.net_device* %6, %struct.net_device** %3, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device* %7)
  store %struct.dscc4_dev_priv* %8, %struct.dscc4_dev_priv** %4, align 8
  br label %9

9:                                                ; preds = %1
  %10 = load i64, i64* @jiffies, align 8
  %11 = load i64, i64* @TX_TIMEOUT, align 8
  %12 = add nsw i64 %10, %11
  %13 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %4, align 8
  %14 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i64 %12, i64* %15, align 8
  %16 = load %struct.dscc4_dev_priv*, %struct.dscc4_dev_priv** %4, align 8
  %17 = getelementptr inbounds %struct.dscc4_dev_priv, %struct.dscc4_dev_priv* %16, i32 0, i32 0
  %18 = call i32 @add_timer(%struct.TYPE_2__* %17)
  ret void
}

declare dso_local %struct.dscc4_dev_priv* @dscc4_priv(%struct.net_device*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
