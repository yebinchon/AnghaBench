; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_netdev_set_ecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_netdev_set_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i64 }
%struct.ethtool_cmd = type { i64, i64, i64, i32, i64, i64, i32 }
%struct.netdev_private = type { i64, i32, i32, i64, i64, i64, i64 }

@PORT_TP = common dso_local global i64 0, align 8
@PORT_MII = common dso_local global i64 0, align 8
@PORT_FIBRE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i64 0, align 8
@XCVR_EXTERNAL = common dso_local global i64 0, align 8
@AUTONEG_ENABLE = common dso_local global i64 0, align 8
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i64 0, align 8
@SPEED_10 = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i64 0, align 8
@DUPLEX_HALF = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i64 0, align 8
@PhyAddrMask = common dso_local global i32 0, align 4
@ADVERTISE_ALL = common dso_local global i32 0, align 4
@ADVERTISE_100BASE4 = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @netdev_set_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_set_ecmd(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_cmd*, align 8
  %6 = alloca %struct.netdev_private*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %5, align 8
  %7 = load %struct.net_device*, %struct.net_device** %4, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %6, align 8
  %9 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %10 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @PORT_TP, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %29

14:                                               ; preds = %2
  %15 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @PORT_MII, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %29

20:                                               ; preds = %14
  %21 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %22 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @PORT_FIBRE, align 8
  %25 = icmp ne i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %249

29:                                               ; preds = %20, %14, %2
  %30 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %31 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XCVR_INTERNAL, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29
  %36 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %37 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @XCVR_EXTERNAL, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %249

44:                                               ; preds = %35, %29
  %45 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @AUTONEG_ENABLE, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %67

50:                                               ; preds = %44
  %51 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %52 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %55 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %60 = or i32 %58, %59
  %61 = and i32 %53, %60
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %50
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %249

66:                                               ; preds = %50
  br label %108

67:                                               ; preds = %44
  %68 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %69 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @AUTONEG_DISABLE, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %104

73:                                               ; preds = %67
  %74 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %75 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %74, i32 0, i32 4
  %76 = load i64, i64* %75, align 8
  %77 = load i64, i64* @SPEED_10, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %88

79:                                               ; preds = %73
  %80 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %81 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %80, i32 0, i32 4
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @SPEED_100, align 8
  %84 = icmp ne i64 %82, %83
  br i1 %84, label %85, label %88

85:                                               ; preds = %79
  %86 = load i32, i32* @EINVAL, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %3, align 4
  br label %249

88:                                               ; preds = %79, %73
  %89 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %90 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %89, i32 0, i32 5
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @DUPLEX_HALF, align 8
  %93 = icmp ne i64 %91, %92
  br i1 %93, label %94, label %103

94:                                               ; preds = %88
  %95 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %96 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %95, i32 0, i32 5
  %97 = load i64, i64* %96, align 8
  %98 = load i64, i64* @DUPLEX_FULL, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %103

100:                                              ; preds = %94
  %101 = load i32, i32* @EINVAL, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %3, align 4
  br label %249

103:                                              ; preds = %94, %88
  br label %107

104:                                              ; preds = %67
  %105 = load i32, i32* @EINVAL, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %249

107:                                              ; preds = %103
  br label %108

108:                                              ; preds = %107, %66
  %109 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %110 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %109, i32 0, i32 6
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %128

113:                                              ; preds = %108
  %114 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %115 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %114, i32 0, i32 2
  %116 = load i64, i64* %115, align 8
  %117 = load i64, i64* @AUTONEG_ENABLE, align 8
  %118 = icmp eq i64 %116, %117
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %120, i32 0, i32 0
  %122 = load i64, i64* %121, align 8
  %123 = load i64, i64* @PORT_TP, align 8
  %124 = icmp eq i64 %122, %123
  br i1 %124, label %125, label %128

125:                                              ; preds = %119, %113
  %126 = load i32, i32* @EINVAL, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  br label %249

128:                                              ; preds = %119, %108
  %129 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %130 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.net_device*, %struct.net_device** %4, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %135 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %134, i32 0, i32 2
  %136 = load i64, i64* %135, align 8
  %137 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %138 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %137, i32 0, i32 0
  store i64 %136, i64* %138, align 8
  %139 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %140 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %139, i32 0, i32 6
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* @PhyAddrMask, align 4
  %143 = and i32 %141, %142
  %144 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %145 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %144, i32 0, i32 1
  store i32 %143, i32* %145, align 8
  %146 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %147 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = load i64, i64* @AUTONEG_ENABLE, align 8
  %150 = icmp eq i64 %148, %149
  br i1 %150, label %151, label %212

151:                                              ; preds = %128
  %152 = load i32, i32* @ADVERTISE_ALL, align 4
  %153 = load i32, i32* @ADVERTISE_100BASE4, align 4
  %154 = or i32 %152, %153
  %155 = xor i32 %154, -1
  %156 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %157 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %156, i32 0, i32 2
  %158 = load i32, i32* %157, align 4
  %159 = and i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %161 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %164 = and i32 %162, %163
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %172

166:                                              ; preds = %151
  %167 = load i32, i32* @ADVERTISE_10HALF, align 4
  %168 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %169 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %168, i32 0, i32 2
  %170 = load i32, i32* %169, align 4
  %171 = or i32 %170, %167
  store i32 %171, i32* %169, align 4
  br label %172

172:                                              ; preds = %166, %151
  %173 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %174 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %185

179:                                              ; preds = %172
  %180 = load i32, i32* @ADVERTISE_10FULL, align 4
  %181 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %182 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 4
  %184 = or i32 %183, %180
  store i32 %184, i32* %182, align 4
  br label %185

185:                                              ; preds = %179, %172
  %186 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %187 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %186, i32 0, i32 3
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %185
  %193 = load i32, i32* @ADVERTISE_100HALF, align 4
  %194 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %195 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = or i32 %196, %193
  store i32 %197, i32* %195, align 4
  br label %198

198:                                              ; preds = %192, %185
  %199 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %200 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %199, i32 0, i32 3
  %201 = load i32, i32* %200, align 8
  %202 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %203 = and i32 %201, %202
  %204 = icmp ne i32 %203, 0
  br i1 %204, label %205, label %211

205:                                              ; preds = %198
  %206 = load i32, i32* @ADVERTISE_100FULL, align 4
  %207 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %208 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 4
  %210 = or i32 %209, %206
  store i32 %210, i32* %208, align 4
  br label %211

211:                                              ; preds = %205, %198
  br label %232

212:                                              ; preds = %128
  %213 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %214 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %213, i32 0, i32 4
  %215 = load i64, i64* %214, align 8
  %216 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %217 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %216, i32 0, i32 3
  store i64 %215, i64* %217, align 8
  %218 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %219 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %218, i32 0, i32 5
  %220 = load i64, i64* %219, align 8
  %221 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %222 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %221, i32 0, i32 4
  store i64 %220, i64* %222, align 8
  %223 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %224 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %223, i32 0, i32 4
  %225 = load i64, i64* %224, align 8
  %226 = load i64, i64* @DUPLEX_HALF, align 8
  %227 = icmp eq i64 %225, %226
  br i1 %227, label %228, label %231

228:                                              ; preds = %212
  %229 = load %struct.netdev_private*, %struct.netdev_private** %6, align 8
  %230 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %229, i32 0, i32 5
  store i64 0, i64* %230, align 8
  br label %231

231:                                              ; preds = %228, %212
  br label %232

232:                                              ; preds = %231, %211
  %233 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %5, align 8
  %234 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %233, i32 0, i32 0
  %235 = load i64, i64* %234, align 8
  %236 = load i64, i64* @PORT_TP, align 8
  %237 = icmp eq i64 %235, %236
  br i1 %237, label %238, label %241

238:                                              ; preds = %232
  %239 = load %struct.net_device*, %struct.net_device** %4, align 8
  %240 = call i32 @switch_port_internal(%struct.net_device* %239)
  br label %244

241:                                              ; preds = %232
  %242 = load %struct.net_device*, %struct.net_device** %4, align 8
  %243 = call i32 @switch_port_external(%struct.net_device* %242)
  br label %244

244:                                              ; preds = %241, %238
  %245 = load %struct.net_device*, %struct.net_device** %4, align 8
  %246 = call i32 @init_phy_fixup(%struct.net_device* %245)
  %247 = load %struct.net_device*, %struct.net_device** %4, align 8
  %248 = call i32 @check_link(%struct.net_device* %247)
  store i32 0, i32* %3, align 4
  br label %249

249:                                              ; preds = %244, %125, %104, %100, %85, %63, %41, %26
  %250 = load i32, i32* %3, align 4
  ret i32 %250
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @switch_port_internal(%struct.net_device*) #1

declare dso_local i32 @switch_port_external(%struct.net_device*) #1

declare dso_local i32 @init_phy_fixup(%struct.net_device*) #1

declare dso_local i32 @check_link(%struct.net_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
