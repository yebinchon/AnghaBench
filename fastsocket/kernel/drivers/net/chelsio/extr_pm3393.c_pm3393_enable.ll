; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_CONFIG_1 = common dso_local global i32 0, align 4
@RXXG_CONF1_VAL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_RXXG_RXEN = common dso_local global i32 0, align 4
@MAC_DIRECTION_TX = common dso_local global i32 0, align 4
@TXXG_CONF1_VAL = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TXXG_TXEN0 = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TXXG_FCRX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_TXXG_FCTX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_TXXG_CONFIG_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, i32)* @pm3393_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_enable(%struct.cmac* %0, i32 %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %17

10:                                               ; preds = %2
  %11 = load %struct.cmac*, %struct.cmac** %3, align 8
  %12 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_CONFIG_1, align 4
  %13 = load i32, i32* @RXXG_CONF1_VAL, align 4
  %14 = load i32, i32* @SUNI1x10GEXP_BITMSK_RXXG_RXEN, align 4
  %15 = or i32 %13, %14
  %16 = call i32 @pmwrite(%struct.cmac* %11, i32 %12, i32 %15)
  br label %17

17:                                               ; preds = %10, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @MAC_DIRECTION_TX, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %56

22:                                               ; preds = %17
  %23 = load i32, i32* @TXXG_CONF1_VAL, align 4
  %24 = load i32, i32* @SUNI1x10GEXP_BITMSK_TXXG_TXEN0, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  %26 = load %struct.cmac*, %struct.cmac** %3, align 8
  %27 = getelementptr inbounds %struct.cmac, %struct.cmac* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @PAUSE_RX, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %22
  %35 = load i32, i32* @SUNI1x10GEXP_BITMSK_TXXG_FCRX, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %38

38:                                               ; preds = %34, %22
  %39 = load %struct.cmac*, %struct.cmac** %3, align 8
  %40 = getelementptr inbounds %struct.cmac, %struct.cmac* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @PAUSE_TX, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load i32, i32* @SUNI1x10GEXP_BITMSK_TXXG_FCTX, align 4
  %49 = load i32, i32* %5, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %47, %38
  %52 = load %struct.cmac*, %struct.cmac** %3, align 8
  %53 = load i32, i32* @SUNI1x10GEXP_REG_TXXG_CONFIG_1, align 4
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @pmwrite(%struct.cmac* %52, i32 %53, i32 %54)
  br label %56

56:                                               ; preds = %51, %17
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.cmac*, %struct.cmac** %3, align 8
  %59 = getelementptr inbounds %struct.cmac, %struct.cmac* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = or i32 %62, %57
  store i32 %63, i32* %61, align 4
  ret i32 0
}

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
