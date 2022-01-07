; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_settings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_b44.c_b44_set_settings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i64, i32, i64, i64 }
%struct.b44 = type { i32, i32 }

@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_1000baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_1000baseT_Full = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SPEED_100 = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@B44_FLAG_FORCE_LINK = common dso_local global i32 0, align 4
@B44_FLAG_100_BASE_T = common dso_local global i32 0, align 4
@B44_FLAG_FULL_DUPLEX = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_10FULL = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100HALF = common dso_local global i32 0, align 4
@B44_FLAG_ADV_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @b44_set_settings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b44_set_settings(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.b44*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.b44* @netdev_priv(%struct.net_device* %7)
  store %struct.b44* %8, %struct.b44** %6, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @AUTONEG_ENABLE, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %2
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @ADVERTISED_1000baseT_Half, align 4
  %19 = load i32, i32* @ADVERTISED_1000baseT_Full, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %202

26:                                               ; preds = %14
  br label %55

27:                                               ; preds = %2
  %28 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %29 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SPEED_100, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %27
  %34 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %35 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %34, i32 0, i32 2
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SPEED_10, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %51, label %39

39:                                               ; preds = %33, %27
  %40 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %41 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @DUPLEX_HALF, align 8
  %44 = icmp ne i64 %42, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %39
  %46 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %47 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %46, i32 0, i32 3
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @DUPLEX_FULL, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45, %33
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %3, align 4
  br label %202

54:                                               ; preds = %45, %39
  br label %55

55:                                               ; preds = %54, %26
  %56 = load %struct.b44*, %struct.b44** %6, align 8
  %57 = getelementptr inbounds %struct.b44, %struct.b44* %56, i32 0, i32 1
  %58 = call i32 @spin_lock_irq(i32* %57)
  %59 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %60 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @AUTONEG_ENABLE, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %153

64:                                               ; preds = %55
  %65 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %66 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %67 = or i32 %65, %66
  %68 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %69 = or i32 %67, %68
  %70 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %71 = or i32 %69, %70
  %72 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %73 = or i32 %71, %72
  %74 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %77 = or i32 %75, %76
  %78 = xor i32 %77, -1
  %79 = load %struct.b44*, %struct.b44** %6, align 8
  %80 = getelementptr inbounds %struct.b44, %struct.b44* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, %78
  store i32 %82, i32* %80, align 4
  %83 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %84 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %99

87:                                               ; preds = %64
  %88 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %89 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %92 = or i32 %90, %91
  %93 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %94 = or i32 %92, %93
  %95 = load %struct.b44*, %struct.b44** %6, align 8
  %96 = getelementptr inbounds %struct.b44, %struct.b44* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = or i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %152

99:                                               ; preds = %64
  %100 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %101 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 8
  %103 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %104 = and i32 %102, %103
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load i32, i32* @B44_FLAG_ADV_10HALF, align 4
  %108 = load %struct.b44*, %struct.b44** %6, align 8
  %109 = getelementptr inbounds %struct.b44, %struct.b44* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = or i32 %110, %107
  store i32 %111, i32* %109, align 4
  br label %112

112:                                              ; preds = %106, %99
  %113 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %114 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load i32, i32* @B44_FLAG_ADV_10FULL, align 4
  %121 = load %struct.b44*, %struct.b44** %6, align 8
  %122 = getelementptr inbounds %struct.b44, %struct.b44* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %112
  %126 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %127 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 8
  %129 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %130 = and i32 %128, %129
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load i32, i32* @B44_FLAG_ADV_100HALF, align 4
  %134 = load %struct.b44*, %struct.b44** %6, align 8
  %135 = getelementptr inbounds %struct.b44, %struct.b44* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = or i32 %136, %133
  store i32 %137, i32* %135, align 4
  br label %138

138:                                              ; preds = %132, %125
  %139 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %143 = and i32 %141, %142
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load i32, i32* @B44_FLAG_ADV_100FULL, align 4
  %147 = load %struct.b44*, %struct.b44** %6, align 8
  %148 = getelementptr inbounds %struct.b44, %struct.b44* %147, i32 0, i32 0
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %138
  br label %152

152:                                              ; preds = %151, %87
  br label %191

153:                                              ; preds = %55
  %154 = load i32, i32* @B44_FLAG_FORCE_LINK, align 4
  %155 = load %struct.b44*, %struct.b44** %6, align 8
  %156 = getelementptr inbounds %struct.b44, %struct.b44* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 4
  %158 = or i32 %157, %154
  store i32 %158, i32* %156, align 4
  %159 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %160 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %161 = or i32 %159, %160
  %162 = xor i32 %161, -1
  %163 = load %struct.b44*, %struct.b44** %6, align 8
  %164 = getelementptr inbounds %struct.b44, %struct.b44* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = and i32 %165, %162
  store i32 %166, i32* %164, align 4
  %167 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %168 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i64, i64* @SPEED_100, align 8
  %171 = icmp eq i64 %169, %170
  br i1 %171, label %172, label %178

172:                                              ; preds = %153
  %173 = load i32, i32* @B44_FLAG_100_BASE_T, align 4
  %174 = load %struct.b44*, %struct.b44** %6, align 8
  %175 = getelementptr inbounds %struct.b44, %struct.b44* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 4
  %177 = or i32 %176, %173
  store i32 %177, i32* %175, align 4
  br label %178

178:                                              ; preds = %172, %153
  %179 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %180 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %179, i32 0, i32 3
  %181 = load i64, i64* %180, align 8
  %182 = load i64, i64* @DUPLEX_FULL, align 8
  %183 = icmp eq i64 %181, %182
  br i1 %183, label %184, label %190

184:                                              ; preds = %178
  %185 = load i32, i32* @B44_FLAG_FULL_DUPLEX, align 4
  %186 = load %struct.b44*, %struct.b44** %6, align 8
  %187 = getelementptr inbounds %struct.b44, %struct.b44* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = or i32 %188, %185
  store i32 %189, i32* %187, align 4
  br label %190

190:                                              ; preds = %184, %178
  br label %191

191:                                              ; preds = %190, %152
  %192 = load %struct.net_device*, %struct.net_device** %4, align 8
  %193 = call i64 @netif_running(%struct.net_device* %192)
  %194 = icmp ne i64 %193, 0
  br i1 %194, label %195, label %198

195:                                              ; preds = %191
  %196 = load %struct.b44*, %struct.b44** %6, align 8
  %197 = call i32 @b44_setup_phy(%struct.b44* %196)
  br label %198

198:                                              ; preds = %195, %191
  %199 = load %struct.b44*, %struct.b44** %6, align 8
  %200 = getelementptr inbounds %struct.b44, %struct.b44* %199, i32 0, i32 1
  %201 = call i32 @spin_unlock_irq(i32* %200)
  store i32 0, i32* %3, align 4
  br label %202

202:                                              ; preds = %198, %51, %23
  %203 = load i32, i32* %3, align 4
  ret i32 %203
}

declare dso_local %struct.b44* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i64 @netif_running(%struct.net_device*) #1

declare dso_local i32 @b44_setup_phy(%struct.b44*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
