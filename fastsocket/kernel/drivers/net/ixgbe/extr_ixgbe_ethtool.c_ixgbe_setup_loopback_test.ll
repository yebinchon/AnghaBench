; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_loopback_test.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_ethtool.c_ixgbe_setup_loopback_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_HLREG0 = common dso_local global i32 0, align 4
@IXGBE_HLREG0_LPBK = common dso_local global i32 0, align 4
@IXGBE_FCTRL = common dso_local global i32 0, align 4
@IXGBE_FCTRL_BAM = common dso_local global i32 0, align 4
@IXGBE_FCTRL_SBP = common dso_local global i32 0, align 4
@IXGBE_FCTRL_MPE = common dso_local global i32 0, align 4
@ixgbe_mac_X540 = common dso_local global i64 0, align 8
@IXGBE_MACC = common dso_local global i32 0, align 4
@IXGBE_MACC_FLU = common dso_local global i32 0, align 4
@IXGBE_AUTOC_FLU = common dso_local global i32 0, align 4
@IXGBE_AUTOC = common dso_local global i32 0, align 4
@ixgbe_mac_82598EB = common dso_local global i64 0, align 8
@IXGBE_ATLAS_PDN_LPBK = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_REG_EN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_10G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_10G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_1G = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_1G_QL_ALL = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_AN = common dso_local global i32 0, align 4
@IXGBE_ATLAS_PDN_TX_AN_QL_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ixgbe_adapter*)* @ixgbe_setup_loopback_test to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ixgbe_setup_loopback_test(%struct.ixgbe_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ixgbe_adapter*, align 8
  %4 = alloca %struct.ixgbe_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.ixgbe_adapter* %0, %struct.ixgbe_adapter** %3, align 8
  %7 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %8 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %7, i32 0, i32 0
  store %struct.ixgbe_hw* %8, %struct.ixgbe_hw** %4, align 8
  %9 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %10 = load i32, i32* @IXGBE_HLREG0, align 4
  %11 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %9, i32 %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* @IXGBE_HLREG0_LPBK, align 4
  %13 = load i32, i32* %5, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %5, align 4
  %15 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %16 = load i32, i32* @IXGBE_HLREG0, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %15, i32 %16, i32 %17)
  %19 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %20 = load i32, i32* @IXGBE_FCTRL, align 4
  %21 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %19, i32 %20)
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* @IXGBE_FCTRL_BAM, align 4
  %23 = load i32, i32* @IXGBE_FCTRL_SBP, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @IXGBE_FCTRL_MPE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* %5, align 4
  %28 = or i32 %27, %26
  store i32 %28, i32* %5, align 4
  %29 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %30 = load i32, i32* @IXGBE_FCTRL, align 4
  %31 = load i32, i32* %5, align 4
  %32 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %29, i32 %30, i32 %31)
  %33 = load %struct.ixgbe_adapter*, %struct.ixgbe_adapter** %3, align 8
  %34 = getelementptr inbounds %struct.ixgbe_adapter, %struct.ixgbe_adapter* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @ixgbe_mac_X540, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %51

40:                                               ; preds = %1
  %41 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %42 = load i32, i32* @IXGBE_MACC, align 4
  %43 = call i32 @IXGBE_READ_REG(%struct.ixgbe_hw* %41, i32 %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* @IXGBE_MACC_FLU, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %48 = load i32, i32* @IXGBE_MACC, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %47, i32 %48, i32 %49)
  br label %70

51:                                               ; preds = %1
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %68

57:                                               ; preds = %51
  %58 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %59 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IXGBE_AUTOC_FLU, align 4
  %63 = or i32 %61, %62
  store i32 %63, i32* %5, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %65 = load i32, i32* @IXGBE_AUTOC, align 4
  %66 = load i32, i32* %5, align 4
  %67 = call i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw* %64, i32 %65, i32 %66)
  br label %69

68:                                               ; preds = %51
  store i32 10, i32* %2, align 4
  br label %170

69:                                               ; preds = %57
  br label %70

70:                                               ; preds = %69, %40
  %71 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %72 = call i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw* %71)
  %73 = call i32 @usleep_range(i32 10000, i32 20000)
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @ixgbe_mac_82598EB, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %169

80:                                               ; preds = %70
  %81 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %82 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 1
  %85 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %84, align 8
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %87 = bitcast %struct.ixgbe_hw* %86 to %struct.ixgbe_hw.1*
  %88 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %89 = call i32 %85(%struct.ixgbe_hw.1* %87, i32 %88, i32* %6)
  %90 = load i32, i32* @IXGBE_ATLAS_PDN_TX_REG_EN, align 4
  %91 = load i32, i32* %6, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %6, align 4
  %93 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %94 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %96, align 8
  %98 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %99 = bitcast %struct.ixgbe_hw* %98 to %struct.ixgbe_hw.0*
  %100 = load i32, i32* @IXGBE_ATLAS_PDN_LPBK, align 4
  %101 = load i32, i32* %6, align 4
  %102 = call i32 %97(%struct.ixgbe_hw.0* %99, i32 %100, i32 %101)
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 2
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 1
  %107 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %106, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %109 = bitcast %struct.ixgbe_hw* %108 to %struct.ixgbe_hw.1*
  %110 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %111 = call i32 %107(%struct.ixgbe_hw.1* %109, i32 %110, i32* %6)
  %112 = load i32, i32* @IXGBE_ATLAS_PDN_TX_10G_QL_ALL, align 4
  %113 = load i32, i32* %6, align 4
  %114 = or i32 %113, %112
  store i32 %114, i32* %6, align 4
  %115 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %116 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %117, i32 0, i32 0
  %119 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %118, align 8
  %120 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %121 = bitcast %struct.ixgbe_hw* %120 to %struct.ixgbe_hw.0*
  %122 = load i32, i32* @IXGBE_ATLAS_PDN_10G, align 4
  %123 = load i32, i32* %6, align 4
  %124 = call i32 %119(%struct.ixgbe_hw.0* %121, i32 %122, i32 %123)
  %125 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %126 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i32 0, i32 1
  %129 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %128, align 8
  %130 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %131 = bitcast %struct.ixgbe_hw* %130 to %struct.ixgbe_hw.1*
  %132 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %133 = call i32 %129(%struct.ixgbe_hw.1* %131, i32 %132, i32* %6)
  %134 = load i32, i32* @IXGBE_ATLAS_PDN_TX_1G_QL_ALL, align 4
  %135 = load i32, i32* %6, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %6, align 4
  %137 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %138 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %139, i32 0, i32 0
  %141 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %140, align 8
  %142 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %143 = bitcast %struct.ixgbe_hw* %142 to %struct.ixgbe_hw.0*
  %144 = load i32, i32* @IXGBE_ATLAS_PDN_1G, align 4
  %145 = load i32, i32* %6, align 4
  %146 = call i32 %141(%struct.ixgbe_hw.0* %143, i32 %144, i32 %145)
  %147 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %148 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %147, i32 0, i32 0
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 2
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32 (%struct.ixgbe_hw.1*, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32*)** %150, align 8
  %152 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %153 = bitcast %struct.ixgbe_hw* %152 to %struct.ixgbe_hw.1*
  %154 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %155 = call i32 %151(%struct.ixgbe_hw.1* %153, i32 %154, i32* %6)
  %156 = load i32, i32* @IXGBE_ATLAS_PDN_TX_AN_QL_ALL, align 4
  %157 = load i32, i32* %6, align 4
  %158 = or i32 %157, %156
  store i32 %158, i32* %6, align 4
  %159 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %160 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  %162 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %161, i32 0, i32 0
  %163 = load i32 (%struct.ixgbe_hw.0*, i32, i32)*, i32 (%struct.ixgbe_hw.0*, i32, i32)** %162, align 8
  %164 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %4, align 8
  %165 = bitcast %struct.ixgbe_hw* %164 to %struct.ixgbe_hw.0*
  %166 = load i32, i32* @IXGBE_ATLAS_PDN_AN, align 4
  %167 = load i32, i32* %6, align 4
  %168 = call i32 %163(%struct.ixgbe_hw.0* %165, i32 %166, i32 %167)
  br label %169

169:                                              ; preds = %80, %70
  store i32 0, i32* %2, align 4
  br label %170

170:                                              ; preds = %169, %68
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @IXGBE_READ_REG(%struct.ixgbe_hw*, i32) #1

declare dso_local i32 @IXGBE_WRITE_REG(%struct.ixgbe_hw*, i32, i32) #1

declare dso_local i32 @IXGBE_WRITE_FLUSH(%struct.ixgbe_hw*) #1

declare dso_local i32 @usleep_range(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
