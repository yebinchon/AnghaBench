; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_init_pscr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_init_pscr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32* }

@PORT_SERIAL_CONTROL = common dso_local global i32 0, align 4
@SERIAL_PORT_ENABLE = common dso_local global i32 0, align 4
@MAX_RX_PACKET_9700BYTE = common dso_local global i32 0, align 4
@SERIAL_PORT_CONTROL_RESERVED = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_SPEED_GMII = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@SET_GMII_SPEED_TO_1000 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SET_MII_SPEED_TO_100 = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_FOR_FLOW_CTRL = common dso_local global i32 0, align 4
@DISABLE_AUTO_NEG_FOR_DUPLEX = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@SET_FULL_DUPLEX_MODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mv643xx_eth_private*, i32, i32)* @init_pscr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_pscr(%struct.mv643xx_eth_private* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mv643xx_eth_private*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %9 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %10 = call i32 @rdlp(%struct.mv643xx_eth_private* %8, i32 %9)
  store i32 %10, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @SERIAL_PORT_ENABLE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %3
  %16 = load i32, i32* @SERIAL_PORT_ENABLE, align 4
  %17 = xor i32 %16, -1
  %18 = load i32, i32* %7, align 4
  %19 = and i32 %18, %17
  store i32 %19, i32* %7, align 4
  %20 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %21 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @wrlp(%struct.mv643xx_eth_private* %20, i32 %21, i32 %22)
  br label %24

24:                                               ; preds = %15, %3
  %25 = load i32, i32* @MAX_RX_PACKET_9700BYTE, align 4
  %26 = load i32, i32* @SERIAL_PORT_CONTROL_RESERVED, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  %28 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %29 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = icmp eq i32* %30, null
  br i1 %31, label %32, label %67

32:                                               ; preds = %24
  %33 = load i32, i32* @DISABLE_AUTO_NEG_SPEED_GMII, align 4
  %34 = load i32, i32* %7, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %7, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @SPEED_1000, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @SET_GMII_SPEED_TO_1000, align 4
  %41 = load i32, i32* %7, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %7, align 4
  br label %52

43:                                               ; preds = %32
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @SPEED_100, align 4
  %46 = icmp eq i32 %44, %45
  br i1 %46, label %47, label %51

47:                                               ; preds = %43
  %48 = load i32, i32* @SET_MII_SPEED_TO_100, align 4
  %49 = load i32, i32* %7, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %47, %43
  br label %52

52:                                               ; preds = %51, %39
  %53 = load i32, i32* @DISABLE_AUTO_NEG_FOR_FLOW_CTRL, align 4
  %54 = load i32, i32* %7, align 4
  %55 = or i32 %54, %53
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* @DISABLE_AUTO_NEG_FOR_DUPLEX, align 4
  %57 = load i32, i32* %7, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %7, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @DUPLEX_FULL, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %66

62:                                               ; preds = %52
  %63 = load i32, i32* @SET_FULL_DUPLEX_MODE, align 4
  %64 = load i32, i32* %7, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %62, %52
  br label %67

67:                                               ; preds = %66, %24
  %68 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %4, align 8
  %69 = load i32, i32* @PORT_SERIAL_CONTROL, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @wrlp(%struct.mv643xx_eth_private* %68, i32 %69, i32 %70)
  ret void
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
