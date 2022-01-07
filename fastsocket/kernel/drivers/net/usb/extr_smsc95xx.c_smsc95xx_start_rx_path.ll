; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_start_rx_path.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_smsc95xx.c_smsc95xx_start_rx_path.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { i64* }
%struct.smsc95xx_priv = type { i32, i32 }

@MAC_CR_RXEN_ = common dso_local global i32 0, align 4
@MAC_CR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @smsc95xx_start_rx_path to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smsc95xx_start_rx_path(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca %struct.smsc95xx_priv*, align 8
  %4 = alloca i64, align 8
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %6 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %5, i32 0, i32 0
  %7 = load i64*, i64** %6, align 8
  %8 = getelementptr inbounds i64, i64* %7, i64 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.smsc95xx_priv*
  store %struct.smsc95xx_priv* %10, %struct.smsc95xx_priv** %3, align 8
  %11 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %12 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %11, i32 0, i32 1
  %13 = load i64, i64* %4, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load i32, i32* @MAC_CR_RXEN_, align 4
  %16 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %17 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = or i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %21 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %20, i32 0, i32 1
  %22 = load i64, i64* %4, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %25 = load i32, i32* @MAC_CR, align 4
  %26 = load %struct.smsc95xx_priv*, %struct.smsc95xx_priv** %3, align 8
  %27 = getelementptr inbounds %struct.smsc95xx_priv, %struct.smsc95xx_priv* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @smsc95xx_write_reg(%struct.usbnet* %24, i32 %25, i32 %28)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @smsc95xx_write_reg(%struct.usbnet*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
