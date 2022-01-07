; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_setup_mailboxes.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/can/extr_at91_can.c_at91_setup_mailboxes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.at91_priv = type { i64, i64, i64 }

@AT91_MB_RX_FIRST = common dso_local global i32 0, align 4
@AT91_MB_RX_LAST = common dso_local global i32 0, align 4
@AT91_MB_MODE_RX = common dso_local global i32 0, align 4
@AT91_MB_MODE_RX_OVRWR = common dso_local global i32 0, align 4
@AT91_MB_TX_FIRST = common dso_local global i32 0, align 4
@AT91_MB_TX_LAST = common dso_local global i32 0, align 4
@AT91_MB_MODE_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @at91_setup_mailboxes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @at91_setup_mailboxes(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.at91_priv*, align 8
  %4 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %5 = load %struct.net_device*, %struct.net_device** %2, align 8
  %6 = call %struct.at91_priv* @netdev_priv(%struct.net_device* %5)
  store %struct.at91_priv* %6, %struct.at91_priv** %3, align 8
  %7 = load i32, i32* @AT91_MB_RX_FIRST, align 4
  store i32 %7, i32* %4, align 4
  br label %8

8:                                                ; preds = %17, %1
  %9 = load i32, i32* %4, align 4
  %10 = load i32, i32* @AT91_MB_RX_LAST, align 4
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %20

12:                                               ; preds = %8
  %13 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @AT91_MB_MODE_RX, align 4
  %16 = call i32 @set_mb_mode(%struct.at91_priv* %13, i32 %14, i32 %15)
  br label %17

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = add i32 %18, 1
  store i32 %19, i32* %4, align 4
  br label %8

20:                                               ; preds = %8
  %21 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %22 = load i32, i32* @AT91_MB_RX_LAST, align 4
  %23 = load i32, i32* @AT91_MB_MODE_RX_OVRWR, align 4
  %24 = call i32 @set_mb_mode(%struct.at91_priv* %21, i32 %22, i32 %23)
  %25 = load i32, i32* @AT91_MB_TX_FIRST, align 4
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %35, %20
  %27 = load i32, i32* %4, align 4
  %28 = load i32, i32* @AT91_MB_TX_LAST, align 4
  %29 = icmp ule i32 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %26
  %31 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @AT91_MB_MODE_TX, align 4
  %34 = call i32 @set_mb_mode_prio(%struct.at91_priv* %31, i32 %32, i32 %33, i32 0)
  br label %35

35:                                               ; preds = %30
  %36 = load i32, i32* %4, align 4
  %37 = add i32 %36, 1
  store i32 %37, i32* %4, align 4
  br label %26

38:                                               ; preds = %26
  %39 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %40 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %42 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.at91_priv*, %struct.at91_priv** %3, align 8
  %44 = getelementptr inbounds %struct.at91_priv, %struct.at91_priv* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  ret void
}

declare dso_local %struct.at91_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @set_mb_mode(%struct.at91_priv*, i32, i32) #1

declare dso_local i32 @set_mb_mode_prio(%struct.at91_priv*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
