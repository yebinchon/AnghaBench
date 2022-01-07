; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_ethtool.c_e1000_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.e1000_adapter = type { %struct.TYPE_6__, %struct.e1000_hw, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i64 }
%struct.e1000_hw = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32, i32 }

@E1000_REGS_LEN = common dso_local global i32 0, align 4
@CTRL = common dso_local global i32 0, align 4
@STATUS = common dso_local global i32 0, align 4
@RCTL = common dso_local global i32 0, align 4
@RDTR = common dso_local global i32 0, align 4
@TCTL = common dso_local global i32 0, align 4
@TIDV = common dso_local global i32 0, align 4
@e1000_phy_m88 = common dso_local global i64 0, align 8
@M88E1000_PHY_SPEC_STATUS = common dso_local global i32 0, align 4
@M88E1000_PHY_SPEC_CTRL = common dso_local global i32 0, align 4
@MII_STAT1000 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @e1000_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.e1000_adapter*, align 8
  %8 = alloca %struct.e1000_hw*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load %struct.net_device*, %struct.net_device** %4, align 8
  %12 = call %struct.e1000_adapter* @netdev_priv(%struct.net_device* %11)
  store %struct.e1000_adapter* %12, %struct.e1000_adapter** %7, align 8
  %13 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %14 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %13, i32 0, i32 1
  store %struct.e1000_hw* %14, %struct.e1000_hw** %8, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = bitcast i8* %15 to i64*
  store i64* %16, i64** %9, align 8
  %17 = load i8*, i8** %6, align 8
  %18 = load i32, i32* @E1000_REGS_LEN, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = call i32 @memset(i8* %17, i32 0, i32 %21)
  %23 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %24 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = shl i32 %27, 16
  %29 = or i32 16777216, %28
  %30 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %31 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %29, %34
  %36 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @CTRL, align 4
  %39 = call i64 @er32(i32 %38)
  %40 = load i64*, i64** %9, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  store i64 %39, i64* %41, align 8
  %42 = load i32, i32* @STATUS, align 4
  %43 = call i64 @er32(i32 %42)
  %44 = load i64*, i64** %9, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 1
  store i64 %43, i64* %45, align 8
  %46 = load i32, i32* @RCTL, align 4
  %47 = call i64 @er32(i32 %46)
  %48 = load i64*, i64** %9, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  store i64 %47, i64* %49, align 8
  %50 = call i32 @RDLEN(i32 0)
  %51 = call i64 @er32(i32 %50)
  %52 = load i64*, i64** %9, align 8
  %53 = getelementptr inbounds i64, i64* %52, i64 3
  store i64 %51, i64* %53, align 8
  %54 = call i32 @RDH(i32 0)
  %55 = call i64 @er32(i32 %54)
  %56 = load i64*, i64** %9, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 4
  store i64 %55, i64* %57, align 8
  %58 = call i32 @RDT(i32 0)
  %59 = call i64 @er32(i32 %58)
  %60 = load i64*, i64** %9, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 5
  store i64 %59, i64* %61, align 8
  %62 = load i32, i32* @RDTR, align 4
  %63 = call i64 @er32(i32 %62)
  %64 = load i64*, i64** %9, align 8
  %65 = getelementptr inbounds i64, i64* %64, i64 6
  store i64 %63, i64* %65, align 8
  %66 = load i32, i32* @TCTL, align 4
  %67 = call i64 @er32(i32 %66)
  %68 = load i64*, i64** %9, align 8
  %69 = getelementptr inbounds i64, i64* %68, i64 7
  store i64 %67, i64* %69, align 8
  %70 = call i32 @TDLEN(i32 0)
  %71 = call i64 @er32(i32 %70)
  %72 = load i64*, i64** %9, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 8
  store i64 %71, i64* %73, align 8
  %74 = call i32 @TDH(i32 0)
  %75 = call i64 @er32(i32 %74)
  %76 = load i64*, i64** %9, align 8
  %77 = getelementptr inbounds i64, i64* %76, i64 9
  store i64 %75, i64* %77, align 8
  %78 = call i32 @TDT(i32 0)
  %79 = call i64 @er32(i32 %78)
  %80 = load i64*, i64** %9, align 8
  %81 = getelementptr inbounds i64, i64* %80, i64 10
  store i64 %79, i64* %81, align 8
  %82 = load i32, i32* @TIDV, align 4
  %83 = call i64 @er32(i32 %82)
  %84 = load i64*, i64** %9, align 8
  %85 = getelementptr inbounds i64, i64* %84, i64 11
  store i64 %83, i64* %85, align 8
  %86 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %87 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %87, i32 0, i32 0
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load i64*, i64** %9, align 8
  %92 = getelementptr inbounds i64, i64* %91, i64 12
  store i64 %90, i64* %92, align 8
  %93 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %94 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @e1000_phy_m88, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %141

99:                                               ; preds = %3
  %100 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %101 = load i32, i32* @M88E1000_PHY_SPEC_STATUS, align 4
  %102 = call i32 @e1e_rphy(%struct.e1000_hw* %100, i32 %101, i64* %10)
  %103 = load i64, i64* %10, align 8
  %104 = load i64*, i64** %9, align 8
  %105 = getelementptr inbounds i64, i64* %104, i64 13
  store i64 %103, i64* %105, align 8
  %106 = load i64*, i64** %9, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 14
  store i64 0, i64* %107, align 8
  %108 = load i64*, i64** %9, align 8
  %109 = getelementptr inbounds i64, i64* %108, i64 15
  store i64 0, i64* %109, align 8
  %110 = load i64*, i64** %9, align 8
  %111 = getelementptr inbounds i64, i64* %110, i64 16
  store i64 0, i64* %111, align 8
  %112 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %113 = load i32, i32* @M88E1000_PHY_SPEC_CTRL, align 4
  %114 = call i32 @e1e_rphy(%struct.e1000_hw* %112, i32 %113, i64* %10)
  %115 = load i64, i64* %10, align 8
  %116 = load i64*, i64** %9, align 8
  %117 = getelementptr inbounds i64, i64* %116, i64 17
  store i64 %115, i64* %117, align 8
  %118 = load i64*, i64** %9, align 8
  %119 = getelementptr inbounds i64, i64* %118, i64 13
  %120 = load i64, i64* %119, align 8
  %121 = load i64*, i64** %9, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 18
  store i64 %120, i64* %122, align 8
  %123 = load i64*, i64** %9, align 8
  %124 = getelementptr inbounds i64, i64* %123, i64 19
  store i64 0, i64* %124, align 8
  %125 = load i64*, i64** %9, align 8
  %126 = getelementptr inbounds i64, i64* %125, i64 17
  %127 = load i64, i64* %126, align 8
  %128 = load i64*, i64** %9, align 8
  %129 = getelementptr inbounds i64, i64* %128, i64 20
  store i64 %127, i64* %129, align 8
  %130 = load %struct.e1000_adapter*, %struct.e1000_adapter** %7, align 8
  %131 = getelementptr inbounds %struct.e1000_adapter, %struct.e1000_adapter* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64*, i64** %9, align 8
  %135 = getelementptr inbounds i64, i64* %134, i64 22
  store i64 %133, i64* %135, align 8
  %136 = load i64*, i64** %9, align 8
  %137 = getelementptr inbounds i64, i64* %136, i64 13
  %138 = load i64, i64* %137, align 8
  %139 = load i64*, i64** %9, align 8
  %140 = getelementptr inbounds i64, i64* %139, i64 23
  store i64 %138, i64* %140, align 8
  br label %141

141:                                              ; preds = %99, %3
  %142 = load i64*, i64** %9, align 8
  %143 = getelementptr inbounds i64, i64* %142, i64 21
  store i64 0, i64* %143, align 8
  %144 = load %struct.e1000_hw*, %struct.e1000_hw** %8, align 8
  %145 = load i32, i32* @MII_STAT1000, align 4
  %146 = call i32 @e1e_rphy(%struct.e1000_hw* %144, i32 %145, i64* %10)
  %147 = load i64, i64* %10, align 8
  %148 = load i64*, i64** %9, align 8
  %149 = getelementptr inbounds i64, i64* %148, i64 24
  store i64 %147, i64* %149, align 8
  %150 = load i64*, i64** %9, align 8
  %151 = getelementptr inbounds i64, i64* %150, i64 24
  %152 = load i64, i64* %151, align 8
  %153 = load i64*, i64** %9, align 8
  %154 = getelementptr inbounds i64, i64* %153, i64 25
  store i64 %152, i64* %154, align 8
  ret void
}

declare dso_local %struct.e1000_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i64 @er32(i32) #1

declare dso_local i32 @RDLEN(i32) #1

declare dso_local i32 @RDH(i32) #1

declare dso_local i32 @RDT(i32) #1

declare dso_local i32 @TDLEN(i32) #1

declare dso_local i32 @TDH(i32) #1

declare dso_local i32 @TDT(i32) #1

declare dso_local i32 @e1e_rphy(%struct.e1000_hw*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
