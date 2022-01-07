; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_tx_octet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_tx_octet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pioqueue = type { i64 }

@B43legacy_PIO_TXDATA = common dso_local global i32 0, align 4
@B43legacy_PIO_TXCTL = common dso_local global i32 0, align 4
@B43legacy_PIO_TXCTL_WRITELO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43legacy_pioqueue*, i32)* @tx_octet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tx_octet(%struct.b43legacy_pioqueue* %0, i32 %1) #0 {
  %3 = alloca %struct.b43legacy_pioqueue*, align 8
  %4 = alloca i32, align 4
  store %struct.b43legacy_pioqueue* %0, %struct.b43legacy_pioqueue** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %3, align 8
  %6 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %3, align 8
  %11 = load i32, i32* @B43legacy_PIO_TXDATA, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %10, i32 %11, i32 %12)
  %14 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %3, align 8
  %15 = load i32, i32* @B43legacy_PIO_TXCTL, align 4
  %16 = load i32, i32* @B43legacy_PIO_TXCTL_WRITELO, align 4
  %17 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %14, i32 %15, i32 %16)
  br label %27

18:                                               ; preds = %2
  %19 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %3, align 8
  %20 = load i32, i32* @B43legacy_PIO_TXCTL, align 4
  %21 = load i32, i32* @B43legacy_PIO_TXCTL_WRITELO, align 4
  %22 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %19, i32 %20, i32 %21)
  %23 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %3, align 8
  %24 = load i32, i32* @B43legacy_PIO_TXDATA, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %18, %9
  ret void
}

declare dso_local i32 @b43legacy_pio_write(%struct.b43legacy_pioqueue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
