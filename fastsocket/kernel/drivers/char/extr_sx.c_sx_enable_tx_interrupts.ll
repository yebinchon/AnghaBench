; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_enable_tx_interrupts.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_sx.c_sx_enable_tx_interrupts.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sx_port = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@hi_txipos = common dso_local global i32 0, align 4
@hi_txopos = common dso_local global i32 0, align 4
@LOW_WATER = common dso_local global i32 0, align 4
@GS_TX_INTEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @sx_enable_tx_interrupts to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sx_enable_tx_interrupts(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sx_port*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.sx_port*
  store %struct.sx_port* %6, %struct.sx_port** %3, align 8
  %7 = call i32 (...) @func_enter2()
  %8 = load %struct.sx_port*, %struct.sx_port** %3, align 8
  %9 = call i32 @sx_transmit_chars(%struct.sx_port* %8)
  %10 = load %struct.sx_port*, %struct.sx_port** %3, align 8
  %11 = load i32, i32* @hi_txipos, align 4
  %12 = call i32 @sx_read_channel_byte(%struct.sx_port* %10, i32 %11)
  %13 = load %struct.sx_port*, %struct.sx_port** %3, align 8
  %14 = load i32, i32* @hi_txopos, align 4
  %15 = call i32 @sx_read_channel_byte(%struct.sx_port* %13, i32 %14)
  %16 = sub nsw i32 %12, %15
  %17 = and i32 %16, 255
  store i32 %17, i32* %4, align 4
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @LOW_WATER, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %30

21:                                               ; preds = %1
  %22 = load i32, i32* @GS_TX_INTEN, align 4
  %23 = xor i32 %22, -1
  %24 = load %struct.sx_port*, %struct.sx_port** %3, align 8
  %25 = getelementptr inbounds %struct.sx_port, %struct.sx_port* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %23
  store i32 %29, i32* %27, align 4
  br label %30

30:                                               ; preds = %21, %1
  %31 = call i32 (...) @func_exit()
  ret void
}

declare dso_local i32 @func_enter2(...) #1

declare dso_local i32 @sx_transmit_chars(%struct.sx_port*) #1

declare dso_local i32 @sx_read_channel_byte(%struct.sx_port*, i32) #1

declare dso_local i32 @func_exit(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
