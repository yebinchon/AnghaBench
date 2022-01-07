; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ixgbe/extr_ixgbe_phy.c_ixgbe_setup_phy_link_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ixgbe_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32)* }
%struct.ixgbe_hw.0 = type opaque
%struct.ixgbe_hw.1 = type opaque

@IXGBE_MII_AUTONEG_REG = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_10GB_FULL = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL = common dso_local global i32 0, align 4
@MDIO_MMD_AN = common dso_local global i32 0, align 4
@MDIO_AN_10GBT_CTRL_ADV10G = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_1GB_FULL = common dso_local global i32 0, align 4
@IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG = common dso_local global i32 0, align 4
@IXGBE_MII_1GBASE_T_ADVERTISE = common dso_local global i32 0, align 4
@IXGBE_LINK_SPEED_100_FULL = common dso_local global i32 0, align 4
@MDIO_AN_ADVERTISE = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@MDIO_CTRL1 = common dso_local global i32 0, align 4
@MDIO_AN_CTRL1_RESTART = common dso_local global i32 0, align 4
@MDIO_STAT1 = common dso_local global i32 0, align 4
@MDIO_AN_STAT1_COMPLETE = common dso_local global i32 0, align 4
@IXGBE_ERR_LINK_SETUP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"ixgbe_setup_phy_link_generic: time out\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ixgbe_setup_phy_link_generic(%struct.ixgbe_hw* %0) #0 {
  %2 = alloca %struct.ixgbe_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ixgbe_hw* %0, %struct.ixgbe_hw** %2, align 8
  store i32 0, i32* %3, align 4
  store i64 10, i64* %5, align 8
  %9 = load i32, i32* @IXGBE_MII_AUTONEG_REG, align 4
  store i32 %9, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %11 = call i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw* %10, i32* %8, i32* %7)
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %54

16:                                               ; preds = %1
  %17 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %18 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %20, align 8
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %23 = bitcast %struct.ixgbe_hw* %22 to %struct.ixgbe_hw.0*
  %24 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %25 = load i32, i32* @MDIO_MMD_AN, align 4
  %26 = call i32 %21(%struct.ixgbe_hw.0* %23, i32 %24, i32 %25, i32* %6)
  %27 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %28 = xor i32 %27, -1
  %29 = load i32, i32* %6, align 4
  %30 = and i32 %29, %28
  store i32 %30, i32* %6, align 4
  %31 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %32 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @IXGBE_LINK_SPEED_10GB_FULL, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %16
  %39 = load i32, i32* @MDIO_AN_10GBT_CTRL_ADV10G, align 4
  %40 = load i32, i32* %6, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %16
  %43 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %44 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32)** %46, align 8
  %48 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %49 = bitcast %struct.ixgbe_hw* %48 to %struct.ixgbe_hw.1*
  %50 = load i32, i32* @MDIO_AN_10GBT_CTRL, align 4
  %51 = load i32, i32* @MDIO_MMD_AN, align 4
  %52 = load i32, i32* %6, align 4
  %53 = call i32 %47(%struct.ixgbe_hw.1* %49, i32 %50, i32 %51, i32 %52)
  br label %54

54:                                               ; preds = %42, %1
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %57 = and i32 %55, %56
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %97

59:                                               ; preds = %54
  %60 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %61 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %63, align 8
  %65 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %66 = bitcast %struct.ixgbe_hw* %65 to %struct.ixgbe_hw.0*
  %67 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %68 = load i32, i32* @MDIO_MMD_AN, align 4
  %69 = call i32 %64(%struct.ixgbe_hw.0* %66, i32 %67, i32 %68, i32* %6)
  %70 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %6, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %6, align 4
  %74 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %75 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load i32, i32* @IXGBE_LINK_SPEED_1GB_FULL, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %59
  %82 = load i32, i32* @IXGBE_MII_1GBASE_T_ADVERTISE, align 4
  %83 = load i32, i32* %6, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %6, align 4
  br label %85

85:                                               ; preds = %81, %59
  %86 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %87 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  %90 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32)** %89, align 8
  %91 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %92 = bitcast %struct.ixgbe_hw* %91 to %struct.ixgbe_hw.1*
  %93 = load i32, i32* @IXGBE_MII_AUTONEG_VENDOR_PROVISION_1_REG, align 4
  %94 = load i32, i32* @MDIO_MMD_AN, align 4
  %95 = load i32, i32* %6, align 4
  %96 = call i32 %90(%struct.ixgbe_hw.1* %92, i32 %93, i32 %94, i32 %95)
  br label %97

97:                                               ; preds = %85, %54
  %98 = load i32, i32* %8, align 4
  %99 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %97
  %103 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %104 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %106, align 8
  %108 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %109 = bitcast %struct.ixgbe_hw* %108 to %struct.ixgbe_hw.0*
  %110 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %111 = load i32, i32* @MDIO_MMD_AN, align 4
  %112 = call i32 %107(%struct.ixgbe_hw.0* %109, i32 %110, i32 %111, i32* %6)
  %113 = load i32, i32* @ADVERTISE_100FULL, align 4
  %114 = load i32, i32* @ADVERTISE_100HALF, align 4
  %115 = or i32 %113, %114
  %116 = xor i32 %115, -1
  %117 = load i32, i32* %6, align 4
  %118 = and i32 %117, %116
  store i32 %118, i32* %6, align 4
  %119 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %120 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @IXGBE_LINK_SPEED_100_FULL, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %130

126:                                              ; preds = %102
  %127 = load i32, i32* @ADVERTISE_100FULL, align 4
  %128 = load i32, i32* %6, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %6, align 4
  br label %130

130:                                              ; preds = %126, %102
  %131 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %132 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %133, i32 0, i32 1
  %135 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32)** %134, align 8
  %136 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %137 = bitcast %struct.ixgbe_hw* %136 to %struct.ixgbe_hw.1*
  %138 = load i32, i32* @MDIO_AN_ADVERTISE, align 4
  %139 = load i32, i32* @MDIO_MMD_AN, align 4
  %140 = load i32, i32* %6, align 4
  %141 = call i32 %135(%struct.ixgbe_hw.1* %137, i32 %138, i32 %139, i32 %140)
  br label %142

142:                                              ; preds = %130, %97
  %143 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %144 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %145, i32 0, i32 0
  %147 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %146, align 8
  %148 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %149 = bitcast %struct.ixgbe_hw* %148 to %struct.ixgbe_hw.0*
  %150 = load i32, i32* @MDIO_CTRL1, align 4
  %151 = load i32, i32* @MDIO_MMD_AN, align 4
  %152 = call i32 %147(%struct.ixgbe_hw.0* %149, i32 %150, i32 %151, i32* %6)
  %153 = load i32, i32* @MDIO_AN_CTRL1_RESTART, align 4
  %154 = load i32, i32* %6, align 4
  %155 = or i32 %154, %153
  store i32 %155, i32* %6, align 4
  %156 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %157 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %158, i32 0, i32 1
  %160 = load i32 (%struct.ixgbe_hw.1*, i32, i32, i32)*, i32 (%struct.ixgbe_hw.1*, i32, i32, i32)** %159, align 8
  %161 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %162 = bitcast %struct.ixgbe_hw* %161 to %struct.ixgbe_hw.1*
  %163 = load i32, i32* @MDIO_CTRL1, align 4
  %164 = load i32, i32* @MDIO_MMD_AN, align 4
  %165 = load i32, i32* %6, align 4
  %166 = call i32 %160(%struct.ixgbe_hw.1* %162, i32 %163, i32 %164, i32 %165)
  store i64 0, i64* %4, align 8
  br label %167

167:                                              ; preds = %191, %142
  %168 = load i64, i64* %4, align 8
  %169 = load i64, i64* %5, align 8
  %170 = icmp slt i64 %168, %169
  br i1 %170, label %171, label %194

171:                                              ; preds = %167
  %172 = call i32 @udelay(i32 10)
  %173 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %174 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %175, i32 0, i32 0
  %177 = load i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)*, i32 (%struct.ixgbe_hw.0*, i32, i32, i32*)** %176, align 8
  %178 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %179 = bitcast %struct.ixgbe_hw* %178 to %struct.ixgbe_hw.0*
  %180 = load i32, i32* @MDIO_STAT1, align 4
  %181 = load i32, i32* @MDIO_MMD_AN, align 4
  %182 = call i32 %177(%struct.ixgbe_hw.0* %179, i32 %180, i32 %181, i32* %6)
  store i32 %182, i32* %3, align 4
  %183 = load i32, i32* @MDIO_AN_STAT1_COMPLETE, align 4
  %184 = load i32, i32* %6, align 4
  %185 = and i32 %184, %183
  store i32 %185, i32* %6, align 4
  %186 = load i32, i32* %6, align 4
  %187 = load i32, i32* @MDIO_AN_STAT1_COMPLETE, align 4
  %188 = icmp eq i32 %186, %187
  br i1 %188, label %189, label %190

189:                                              ; preds = %171
  br label %194

190:                                              ; preds = %171
  br label %191

191:                                              ; preds = %190
  %192 = load i64, i64* %4, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %4, align 8
  br label %167

194:                                              ; preds = %189, %167
  %195 = load i64, i64* %4, align 8
  %196 = load i64, i64* %5, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %202

198:                                              ; preds = %194
  %199 = load i32, i32* @IXGBE_ERR_LINK_SETUP, align 4
  store i32 %199, i32* %3, align 4
  %200 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %2, align 8
  %201 = call i32 @hw_dbg(%struct.ixgbe_hw* %200, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  br label %202

202:                                              ; preds = %198, %194
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local i32 @ixgbe_get_copper_link_capabilities_generic(%struct.ixgbe_hw*, i32*, i32*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @hw_dbg(%struct.ixgbe_hw*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
