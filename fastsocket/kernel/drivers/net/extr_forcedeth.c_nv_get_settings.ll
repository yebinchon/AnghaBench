; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_get_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_forcedeth.c_nv_get_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i64, i32 }
%struct.fe_priv = type { i32, i64, i32, i32, i64, i64 }

@PORT_MII = common dso_local global i32 0, align 4
@NVREG_LINKSPEED_MASK = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_1000 = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@DUPLEX_FULL = common dso_local global i32 0, align 4
@ADVERTISED_MII = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@MII_ADVERTISE = common dso_local global i32 0, align 4
@MII_READ = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@PHY_GIGABIT = common dso_local global i64 0, align 8
@MII_CTRL1000 = common dso_local global i32 0, align 4
@ADVERTISE_1000FULL = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_1000baseT_Full = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @nv_get_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv_get_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.fe_priv*, align 8
  %6 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.fe_priv* @netdev_priv(%struct.net_device* %7)
  store %struct.fe_priv* %8, %struct.fe_priv** %5, align 8
  %9 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %10 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %9, i32 0, i32 2
  %11 = call i32 @spin_lock_irq(i32* %10)
  %12 = load i32, i32* @PORT_MII, align 4
  %13 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %14 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %13, i32 0, i32 7
  store i32 %12, i32* %14, align 8
  %15 = load %struct.net_device*, %struct.net_device** %3, align 8
  %16 = call i32 @netif_running(%struct.net_device* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %39, label %18

18:                                               ; preds = %2
  %19 = load %struct.net_device*, %struct.net_device** %3, align 8
  %20 = call i64 @nv_update_linkspeed(%struct.net_device* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %18
  %23 = load %struct.net_device*, %struct.net_device** %3, align 8
  %24 = call i64 @netif_carrier_ok(%struct.net_device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = load %struct.net_device*, %struct.net_device** %3, align 8
  %28 = call i32 @netif_carrier_on(%struct.net_device* %27)
  br label %29

29:                                               ; preds = %26, %22
  br label %38

30:                                               ; preds = %18
  %31 = load %struct.net_device*, %struct.net_device** %3, align 8
  %32 = call i64 @netif_carrier_ok(%struct.net_device* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.net_device*, %struct.net_device** %3, align 8
  %36 = call i32 @netif_carrier_off(%struct.net_device* %35)
  br label %37

37:                                               ; preds = %34, %30
  br label %38

38:                                               ; preds = %37, %29
  br label %39

39:                                               ; preds = %38, %2
  %40 = load %struct.net_device*, %struct.net_device** %3, align 8
  %41 = call i64 @netif_carrier_ok(%struct.net_device* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %74

43:                                               ; preds = %39
  %44 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %45 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load i32, i32* @NVREG_LINKSPEED_MASK, align 4
  %48 = and i32 %46, %47
  switch i32 %48, label %61 [
    i32 130, label %49
    i32 129, label %53
    i32 128, label %57
  ]

49:                                               ; preds = %43
  %50 = load i32, i32* @SPEED_10, align 4
  %51 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  br label %61

53:                                               ; preds = %43
  %54 = load i32, i32* @SPEED_100, align 4
  %55 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %56 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  br label %61

57:                                               ; preds = %43
  %58 = load i32, i32* @SPEED_1000, align 4
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  br label %61

61:                                               ; preds = %43, %57, %53, %49
  %62 = load i32, i32* @DUPLEX_HALF, align 4
  %63 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %64 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 4
  %65 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %66 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %65, i32 0, i32 5
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %61
  %70 = load i32, i32* @DUPLEX_FULL, align 4
  %71 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %72 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %69, %61
  br label %79

74:                                               ; preds = %39
  %75 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %76 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %75, i32 0, i32 0
  store i32 -1, i32* %76, align 8
  %77 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %78 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %77, i32 0, i32 1
  store i32 -1, i32* %78, align 4
  br label %79

79:                                               ; preds = %74, %73
  %80 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %81 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %84 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %83, i32 0, i32 6
  store i64 %82, i64* %84, align 8
  %85 = load i32, i32* @ADVERTISED_MII, align 4
  %86 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %87 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %86, i32 0, i32 5
  store i32 %85, i32* %87, align 4
  %88 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %89 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %174

92:                                               ; preds = %79
  %93 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %94 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %95 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %94, i32 0, i32 5
  %96 = load i32, i32* %95, align 4
  %97 = or i32 %96, %93
  store i32 %97, i32* %95, align 4
  %98 = load %struct.net_device*, %struct.net_device** %3, align 8
  %99 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %100 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @MII_ADVERTISE, align 4
  %103 = load i32, i32* @MII_READ, align 4
  %104 = call i32 @mii_rw(%struct.net_device* %98, i32 %101, i32 %102, i32 %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  %106 = load i32, i32* @ADVERTISE_10HALF, align 4
  %107 = and i32 %105, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %115

109:                                              ; preds = %92
  %110 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 4
  br label %115

115:                                              ; preds = %109, %92
  %116 = load i32, i32* %6, align 4
  %117 = load i32, i32* @ADVERTISE_10FULL, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %115
  %121 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %122 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %123 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %122, i32 0, i32 5
  %124 = load i32, i32* %123, align 4
  %125 = or i32 %124, %121
  store i32 %125, i32* %123, align 4
  br label %126

126:                                              ; preds = %120, %115
  %127 = load i32, i32* %6, align 4
  %128 = load i32, i32* @ADVERTISE_100HALF, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %137

131:                                              ; preds = %126
  %132 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %133 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %134 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %133, i32 0, i32 5
  %135 = load i32, i32* %134, align 4
  %136 = or i32 %135, %132
  store i32 %136, i32* %134, align 4
  br label %137

137:                                              ; preds = %131, %126
  %138 = load i32, i32* %6, align 4
  %139 = load i32, i32* @ADVERTISE_100FULL, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %144 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %144, i32 0, i32 5
  %146 = load i32, i32* %145, align 4
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 4
  br label %148

148:                                              ; preds = %142, %137
  %149 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %150 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %149, i32 0, i32 1
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @PHY_GIGABIT, align 8
  %153 = icmp eq i64 %151, %152
  br i1 %153, label %154, label %173

154:                                              ; preds = %148
  %155 = load %struct.net_device*, %struct.net_device** %3, align 8
  %156 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %157 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* @MII_CTRL1000, align 4
  %160 = load i32, i32* @MII_READ, align 4
  %161 = call i32 @mii_rw(%struct.net_device* %155, i32 %158, i32 %159, i32 %160)
  store i32 %161, i32* %6, align 4
  %162 = load i32, i32* %6, align 4
  %163 = load i32, i32* @ADVERTISE_1000FULL, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %154
  %167 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %168 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %169 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %168, i32 0, i32 5
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %154
  br label %173

173:                                              ; preds = %172, %148
  br label %174

174:                                              ; preds = %173, %79
  %175 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %176 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %177 = or i32 %175, %176
  %178 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %179 = or i32 %177, %178
  %180 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %181 = or i32 %179, %180
  %182 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %183 = or i32 %181, %182
  %184 = load i32, i32* @SUPPORTED_MII, align 4
  %185 = or i32 %183, %184
  %186 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %187 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %186, i32 0, i32 2
  store i32 %185, i32* %187, align 8
  %188 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %189 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = load i64, i64* @PHY_GIGABIT, align 8
  %192 = icmp eq i64 %190, %191
  br i1 %192, label %193, label %199

193:                                              ; preds = %174
  %194 = load i32, i32* @SUPPORTED_1000baseT_Full, align 4
  %195 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %196 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %195, i32 0, i32 2
  %197 = load i32, i32* %196, align 8
  %198 = or i32 %197, %194
  store i32 %198, i32* %196, align 8
  br label %199

199:                                              ; preds = %193, %174
  %200 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %201 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 4
  %203 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %204 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 8
  %205 = load i32, i32* @XCVR_EXTERNAL, align 4
  %206 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %207 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %206, i32 0, i32 3
  store i32 %205, i32* %207, align 4
  %208 = load %struct.fe_priv*, %struct.fe_priv** %5, align 8
  %209 = getelementptr inbounds %struct.fe_priv, %struct.fe_priv* %208, i32 0, i32 2
  %210 = call i32 @spin_unlock_irq(i32* %209)
  ret i32 0
}

declare dso_local %struct.fe_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @netif_running(%struct.net_device*) #1

declare dso_local i64 @nv_update_linkspeed(%struct.net_device*) #1

declare dso_local i64 @netif_carrier_ok(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_on(%struct.net_device*) #1

declare dso_local i32 @netif_carrier_off(%struct.net_device*) #1

declare dso_local i32 @mii_rw(%struct.net_device*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
