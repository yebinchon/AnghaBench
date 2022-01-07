; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rfkill.c_rtl8187_is_radio_enabled.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rtl818x/rtl8187/extr_rfkill.c_rtl8187_is_radio_enabled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl8187_priv = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rtl8187_priv*)* @rtl8187_is_radio_enabled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtl8187_is_radio_enabled(%struct.rtl8187_priv* %0) #0 {
  %2 = alloca %struct.rtl8187_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.rtl8187_priv* %0, %struct.rtl8187_priv** %2, align 8
  %4 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %5 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %6 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %5, i32 0, i32 1
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %4, i32* %8)
  store i32 %9, i32* %3, align 4
  %10 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %11 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %12 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load i32, i32* %3, align 4
  %16 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %17 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = call i32 @rtl818x_iowrite8(%struct.rtl8187_priv* %10, i32* %14, i32 %20)
  %22 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %23 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %24 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %23, i32 0, i32 1
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = call i32 @rtl818x_ioread8(%struct.rtl8187_priv* %22, i32* %26)
  store i32 %27, i32* %3, align 4
  %28 = load i32, i32* %3, align 4
  %29 = load %struct.rtl8187_priv*, %struct.rtl8187_priv** %2, align 8
  %30 = getelementptr inbounds %struct.rtl8187_priv, %struct.rtl8187_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = and i32 %28, %31
  ret i32 %32
}

declare dso_local i32 @rtl818x_ioread8(%struct.rtl8187_priv*, i32*) #1

declare dso_local i32 @rtl818x_iowrite8(%struct.rtl8187_priv*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
