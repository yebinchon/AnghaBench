; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_read_rx_len.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_btmrvl_sdio.c_btmrvl_sdio_read_rx_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btmrvl_sdio_card = type { i32, i32 }

@CARD_RX_LEN_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.btmrvl_sdio_card*, i32*)* @btmrvl_sdio_read_rx_len to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @btmrvl_sdio_read_rx_len(%struct.btmrvl_sdio_card* %0, i32* %1) #0 {
  %3 = alloca %struct.btmrvl_sdio_card*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.btmrvl_sdio_card* %0, %struct.btmrvl_sdio_card** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %8 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @CARD_RX_LEN_REG, align 4
  %11 = call i64 @sdio_readb(i32 %9, i32 %10, i32* %6)
  store i64 %11, i64* %5, align 8
  %12 = load i32, i32* %6, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %22, label %14

14:                                               ; preds = %2
  %15 = load i64, i64* %5, align 8
  %16 = trunc i64 %15 to i32
  %17 = load %struct.btmrvl_sdio_card*, %struct.btmrvl_sdio_card** %3, align 8
  %18 = getelementptr inbounds %struct.btmrvl_sdio_card, %struct.btmrvl_sdio_card* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 %16, %19
  %21 = load i32*, i32** %4, align 8
  store i32 %20, i32* %21, align 4
  br label %22

22:                                               ; preds = %14, %2
  %23 = load i32, i32* %6, align 4
  ret i32 %23
}

declare dso_local i64 @sdio_readb(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
