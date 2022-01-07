; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_set_rx_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/chelsio/extr_pm3393.c_pm3393_set_rx_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmac = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.t1_rx_mode = type { i32 }

@MAC_DIRECTION_RX = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2 = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_RXXG_PMODE = common dso_local global i32 0, align 4
@SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH = common dso_local global i32 0, align 4
@SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmac*, %struct.t1_rx_mode*)* @pm3393_set_rx_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pm3393_set_rx_mode(%struct.cmac* %0, %struct.t1_rx_mode* %1) #0 {
  %3 = alloca %struct.cmac*, align 8
  %4 = alloca %struct.t1_rx_mode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  store %struct.cmac* %0, %struct.cmac** %3, align 8
  store %struct.t1_rx_mode* %1, %struct.t1_rx_mode** %4, align 8
  %10 = load %struct.cmac*, %struct.cmac** %3, align 8
  %11 = getelementptr inbounds %struct.cmac, %struct.cmac* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %16 = and i32 %14, %15
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load %struct.cmac*, %struct.cmac** %3, align 8
  %21 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %22 = call i32 @pm3393_disable(%struct.cmac* %20, i32 %21)
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.cmac*, %struct.cmac** %3, align 8
  %25 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, align 4
  %26 = call i32 @pmread(%struct.cmac* %24, i32 %25, i32* %6)
  %27 = load i32, i32* @SUNI1x10GEXP_BITMSK_RXXG_PMODE, align 4
  %28 = load i32, i32* @SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN, align 4
  %29 = or i32 %27, %28
  %30 = xor i32 %29, -1
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, %30
  store i32 %32, i32* %6, align 4
  %33 = load %struct.cmac*, %struct.cmac** %3, align 8
  %34 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, align 4
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @pmwrite(%struct.cmac* %33, i32 %34, i32 %35)
  %37 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %4, align 8
  %38 = call i64 @t1_rx_mode_promisc(%struct.t1_rx_mode* %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %23
  %41 = load i32, i32* @SUNI1x10GEXP_BITMSK_RXXG_PMODE, align 4
  %42 = load i32, i32* %6, align 4
  %43 = or i32 %42, %41
  store i32 %43, i32* %6, align 4
  br label %44

44:                                               ; preds = %40, %23
  %45 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %4, align 8
  %46 = call i64 @t1_rx_mode_allmulti(%struct.t1_rx_mode* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %64

48:                                               ; preds = %44
  %49 = load %struct.cmac*, %struct.cmac** %3, align 8
  %50 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW, align 4
  %51 = call i32 @pmwrite(%struct.cmac* %49, i32 %50, i32 65535)
  %52 = load %struct.cmac*, %struct.cmac** %3, align 8
  %53 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW, align 4
  %54 = call i32 @pmwrite(%struct.cmac* %52, i32 %53, i32 65535)
  %55 = load %struct.cmac*, %struct.cmac** %3, align 8
  %56 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH, align 4
  %57 = call i32 @pmwrite(%struct.cmac* %55, i32 %56, i32 65535)
  %58 = load %struct.cmac*, %struct.cmac** %3, align 8
  %59 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH, align 4
  %60 = call i32 @pmwrite(%struct.cmac* %58, i32 %59, i32 65535)
  %61 = load i32, i32* @SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN, align 4
  %62 = load i32, i32* %6, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %6, align 4
  br label %114

64:                                               ; preds = %44
  %65 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %4, align 8
  %66 = call i64 @t1_rx_mode_mc_cnt(%struct.t1_rx_mode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %113

68:                                               ; preds = %64
  %69 = bitcast [4 x i32]* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %69, i8 0, i64 16, i1 false)
  br label %70

70:                                               ; preds = %74, %68
  %71 = load %struct.t1_rx_mode*, %struct.t1_rx_mode** %4, align 8
  %72 = call i32* @t1_get_next_mcaddr(%struct.t1_rx_mode* %71)
  store i32* %72, i32** %7, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %70
  %75 = load i32, i32* @ETH_ALEN, align 4
  %76 = load i32*, i32** %7, align 8
  %77 = call i32 @ether_crc(i32 %75, i32* %76)
  %78 = ashr i32 %77, 23
  %79 = and i32 %78, 63
  store i32 %79, i32* %8, align 4
  %80 = load i32, i32* %8, align 4
  %81 = and i32 %80, 15
  %82 = shl i32 1, %81
  %83 = load i32, i32* %8, align 4
  %84 = ashr i32 %83, 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %85
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %82
  store i32 %88, i32* %86, align 4
  br label %70

89:                                               ; preds = %70
  %90 = load %struct.cmac*, %struct.cmac** %3, align 8
  %91 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_LOW, align 4
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = call i32 @pmwrite(%struct.cmac* %90, i32 %91, i32 %93)
  %95 = load %struct.cmac*, %struct.cmac** %3, align 8
  %96 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDLOW, align 4
  %97 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @pmwrite(%struct.cmac* %95, i32 %96, i32 %98)
  %100 = load %struct.cmac*, %struct.cmac** %3, align 8
  %101 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_MIDHIGH, align 4
  %102 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 2
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @pmwrite(%struct.cmac* %100, i32 %101, i32 %103)
  %105 = load %struct.cmac*, %struct.cmac** %3, align 8
  %106 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_MULTICAST_HASH_HIGH, align 4
  %107 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 3
  %108 = load i32, i32* %107, align 4
  %109 = call i32 @pmwrite(%struct.cmac* %105, i32 %106, i32 %108)
  %110 = load i32, i32* @SUNI1x10GEXP_BITMSK_RXXG_MHASH_EN, align 4
  %111 = load i32, i32* %6, align 4
  %112 = or i32 %111, %110
  store i32 %112, i32* %6, align 4
  br label %113

113:                                              ; preds = %89, %64
  br label %114

114:                                              ; preds = %113, %48
  %115 = load %struct.cmac*, %struct.cmac** %3, align 8
  %116 = load i32, i32* @SUNI1x10GEXP_REG_RXXG_ADDRESS_FILTER_CONTROL_2, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i32 @pmwrite(%struct.cmac* %115, i32 %116, i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %125

121:                                              ; preds = %114
  %122 = load %struct.cmac*, %struct.cmac** %3, align 8
  %123 = load i32, i32* @MAC_DIRECTION_RX, align 4
  %124 = call i32 @pm3393_enable(%struct.cmac* %122, i32 %123)
  br label %125

125:                                              ; preds = %121, %114
  ret i32 0
}

declare dso_local i32 @pm3393_disable(%struct.cmac*, i32) #1

declare dso_local i32 @pmread(%struct.cmac*, i32, i32*) #1

declare dso_local i32 @pmwrite(%struct.cmac*, i32, i32) #1

declare dso_local i64 @t1_rx_mode_promisc(%struct.t1_rx_mode*) #1

declare dso_local i64 @t1_rx_mode_allmulti(%struct.t1_rx_mode*) #1

declare dso_local i64 @t1_rx_mode_mc_cnt(%struct.t1_rx_mode*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32* @t1_get_next_mcaddr(%struct.t1_rx_mode*) #1

declare dso_local i32 @ether_crc(i32, i32*) #1

declare dso_local i32 @pm3393_enable(%struct.cmac*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
