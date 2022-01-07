; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_pio_tx_frame_4byte_queue.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_pio_tx_frame_4byte_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_txpacket = type { %struct.TYPE_2__*, %struct.b43_pio_txqueue* }
%struct.TYPE_2__ = type { i8*, i32 }
%struct.b43_pio_txqueue = type { i32 }

@B43_PIO8_TXCTL = common dso_local global i32 0, align 4
@B43_PIO8_TXCTL_FREADY = common dso_local global i32 0, align 4
@B43_PIO8_TXCTL_EOF = common dso_local global i32 0, align 4
@B43_PIO_TXCTL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_pio_txpacket*, i8*, i32)* @pio_tx_frame_4byte_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pio_tx_frame_4byte_queue(%struct.b43_pio_txpacket* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.b43_pio_txpacket*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_pio_txqueue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.b43_pio_txpacket* %0, %struct.b43_pio_txpacket** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %11 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %4, align 8
  %12 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %11, i32 0, i32 1
  %13 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %12, align 8
  store %struct.b43_pio_txqueue* %13, %struct.b43_pio_txqueue** %7, align 8
  %14 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %4, align 8
  %15 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  store i8* %18, i8** %8, align 8
  %19 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %4, align 8
  %20 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  store i32 %23, i32* %9, align 4
  %24 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %7, align 8
  %25 = load i32, i32* @B43_PIO8_TXCTL, align 4
  %26 = call i32 @b43_piotx_read32(%struct.b43_pio_txqueue* %24, i32 %25)
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* @B43_PIO8_TXCTL_FREADY, align 4
  %28 = load i32, i32* %10, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* @B43_PIO8_TXCTL_EOF, align 4
  %31 = xor i32 %30, -1
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, %31
  store i32 %33, i32* %10, align 4
  %34 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %7, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i8*, i8** %5, align 8
  %37 = load i32, i32* %6, align 4
  %38 = call i32 @tx_write_4byte_queue(%struct.b43_pio_txqueue* %34, i32 %35, i8* %36, i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %7, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @tx_write_4byte_queue(%struct.b43_pio_txqueue* %39, i32 %40, i8* %41, i32 %42)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* @B43_PIO8_TXCTL_EOF, align 4
  %45 = load i32, i32* %10, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %10, align 4
  %47 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %7, align 8
  %48 = load i32, i32* @B43_PIO_TXCTL, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @b43_piotx_write32(%struct.b43_pio_txqueue* %47, i32 %48, i32 %49)
  ret void
}

declare dso_local i32 @b43_piotx_read32(%struct.b43_pio_txqueue*, i32) #1

declare dso_local i32 @tx_write_4byte_queue(%struct.b43_pio_txqueue*, i32, i8*, i32) #1

declare dso_local i32 @b43_piotx_write32(%struct.b43_pio_txqueue*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
