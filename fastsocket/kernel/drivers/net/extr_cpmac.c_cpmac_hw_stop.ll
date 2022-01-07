; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_hw_stop.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cpmac.c_cpmac_hw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.cpmac_priv = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.plat_cpmac_data* }
%struct.plat_cpmac_data = type { i32 }

@CPMAC_RX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_TX_CONTROL = common dso_local global i32 0, align 4
@CPMAC_UNICAST_CLEAR = common dso_local global i32 0, align 4
@CPMAC_RX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_TX_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_INT_CLEAR = common dso_local global i32 0, align 4
@CPMAC_MAC_CONTROL = common dso_local global i32 0, align 4
@MAC_MII = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @cpmac_hw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpmac_hw_stop(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.cpmac_priv*, align 8
  %5 = alloca %struct.plat_cpmac_data*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %6 = load %struct.net_device*, %struct.net_device** %2, align 8
  %7 = call %struct.cpmac_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.cpmac_priv* %7, %struct.cpmac_priv** %4, align 8
  %8 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %9 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %12, align 8
  store %struct.plat_cpmac_data* %13, %struct.plat_cpmac_data** %5, align 8
  %14 = load %struct.plat_cpmac_data*, %struct.plat_cpmac_data** %5, align 8
  %15 = getelementptr inbounds %struct.plat_cpmac_data, %struct.plat_cpmac_data* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ar7_device_reset(i32 %16)
  %18 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %19 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %22 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %23 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @CPMAC_RX_CONTROL, align 4
  %26 = call i32 @cpmac_read(i32 %24, i32 %25)
  %27 = and i32 %26, -2
  %28 = call i32 @cpmac_write(i32 %20, i32 %21, i32 %27)
  %29 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %30 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %33 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %34 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @CPMAC_TX_CONTROL, align 4
  %37 = call i32 @cpmac_read(i32 %35, i32 %36)
  %38 = and i32 %37, -2
  %39 = call i32 @cpmac_write(i32 %31, i32 %32, i32 %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %56, %1
  %41 = load i32, i32* %3, align 4
  %42 = icmp slt i32 %41, 8
  br i1 %42, label %43, label %59

43:                                               ; preds = %40
  %44 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %45 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* %3, align 4
  %48 = call i32 @CPMAC_TX_PTR(i32 %47)
  %49 = call i32 @cpmac_write(i32 %46, i32 %48, i32 0)
  %50 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %51 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* %3, align 4
  %54 = call i32 @CPMAC_RX_PTR(i32 %53)
  %55 = call i32 @cpmac_write(i32 %52, i32 %54, i32 0)
  br label %56

56:                                               ; preds = %43
  %57 = load i32, i32* %3, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %3, align 4
  br label %40

59:                                               ; preds = %40
  %60 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %61 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @CPMAC_UNICAST_CLEAR, align 4
  %64 = call i32 @cpmac_write(i32 %62, i32 %63, i32 255)
  %65 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %66 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @CPMAC_RX_INT_CLEAR, align 4
  %69 = call i32 @cpmac_write(i32 %67, i32 %68, i32 255)
  %70 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %71 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @CPMAC_TX_INT_CLEAR, align 4
  %74 = call i32 @cpmac_write(i32 %72, i32 %73, i32 255)
  %75 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %76 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @CPMAC_MAC_INT_CLEAR, align 4
  %79 = call i32 @cpmac_write(i32 %77, i32 %78, i32 255)
  %80 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %81 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %84 = load %struct.cpmac_priv*, %struct.cpmac_priv** %4, align 8
  %85 = getelementptr inbounds %struct.cpmac_priv, %struct.cpmac_priv* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @CPMAC_MAC_CONTROL, align 4
  %88 = call i32 @cpmac_read(i32 %86, i32 %87)
  %89 = load i32, i32* @MAC_MII, align 4
  %90 = xor i32 %89, -1
  %91 = and i32 %88, %90
  %92 = call i32 @cpmac_write(i32 %82, i32 %83, i32 %91)
  ret void
}

declare dso_local %struct.cpmac_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @ar7_device_reset(i32) #1

declare dso_local i32 @cpmac_write(i32, i32, i32) #1

declare dso_local i32 @cpmac_read(i32, i32) #1

declare dso_local i32 @CPMAC_TX_PTR(i32) #1

declare dso_local i32 @CPMAC_RX_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
