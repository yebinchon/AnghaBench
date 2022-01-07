; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_lanai_shutdown_rx_vci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_lanai.c_lanai_shutdown_rx_vci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lanai_vcc = type { i32* }

@RMMODE_TRASH = common dso_local global i32 0, align 4
@RXMODE_TRASH = common dso_local global i32 0, align 4
@vcc_rxaddr1 = common dso_local global i32 0, align 4
@vcc_rxaddr2 = common dso_local global i32 0, align 4
@vcc_rxcrc1 = common dso_local global i32 0, align 4
@vcc_rxcrc2 = common dso_local global i32 0, align 4
@vcc_rxwriteptr = common dso_local global i32 0, align 4
@vcc_rxbufstart = common dso_local global i32 0, align 4
@vcc_rxreadptr = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.lanai_vcc*)* @lanai_shutdown_rx_vci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lanai_shutdown_rx_vci(%struct.lanai_vcc* %0) #0 {
  %2 = alloca %struct.lanai_vcc*, align 8
  store %struct.lanai_vcc* %0, %struct.lanai_vcc** %2, align 8
  %3 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %4 = getelementptr inbounds %struct.lanai_vcc, %struct.lanai_vcc* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %36

8:                                                ; preds = %1
  %9 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %10 = load i32, i32* @RMMODE_TRASH, align 4
  %11 = call i32 @RXADDR1_SET_RMMODE(i32 %10)
  %12 = load i32, i32* @RXMODE_TRASH, align 4
  %13 = call i32 @RXADDR1_SET_MODE(i32 %12)
  %14 = or i32 %11, %13
  %15 = load i32, i32* @vcc_rxaddr1, align 4
  %16 = call i32 @cardvcc_write(%struct.lanai_vcc* %9, i32 %14, i32 %15)
  %17 = call i32 @udelay(i32 15)
  %18 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %19 = load i32, i32* @vcc_rxaddr2, align 4
  %20 = call i32 @cardvcc_write(%struct.lanai_vcc* %18, i32 0, i32 %19)
  %21 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %22 = load i32, i32* @vcc_rxcrc1, align 4
  %23 = call i32 @cardvcc_write(%struct.lanai_vcc* %21, i32 0, i32 %22)
  %24 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %25 = load i32, i32* @vcc_rxcrc2, align 4
  %26 = call i32 @cardvcc_write(%struct.lanai_vcc* %24, i32 0, i32 %25)
  %27 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %28 = load i32, i32* @vcc_rxwriteptr, align 4
  %29 = call i32 @cardvcc_write(%struct.lanai_vcc* %27, i32 0, i32 %28)
  %30 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %31 = load i32, i32* @vcc_rxbufstart, align 4
  %32 = call i32 @cardvcc_write(%struct.lanai_vcc* %30, i32 0, i32 %31)
  %33 = load %struct.lanai_vcc*, %struct.lanai_vcc** %2, align 8
  %34 = load i32, i32* @vcc_rxreadptr, align 4
  %35 = call i32 @cardvcc_write(%struct.lanai_vcc* %33, i32 0, i32 %34)
  br label %36

36:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @cardvcc_write(%struct.lanai_vcc*, i32, i32) #1

declare dso_local i32 @RXADDR1_SET_RMMODE(i32) #1

declare dso_local i32 @RXADDR1_SET_MODE(i32) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
