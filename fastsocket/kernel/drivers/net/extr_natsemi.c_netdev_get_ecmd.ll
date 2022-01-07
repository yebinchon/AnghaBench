; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_netdev_get_ecmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_natsemi.c_netdev_get_ecmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_cmd = type { i32, i32, i32, i32, i32, i32, i8*, i32 }
%struct.netdev_private = type { i32, i32, i32, i32, i32 }

@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_10baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Half = common dso_local global i32 0, align 4
@SUPPORTED_100baseT_Full = common dso_local global i32 0, align 4
@SUPPORTED_TP = common dso_local global i32 0, align 4
@SUPPORTED_MII = common dso_local global i32 0, align 4
@SUPPORTED_FIBRE = common dso_local global i32 0, align 4
@ADVERTISED_TP = common dso_local global i32 0, align 4
@XCVR_INTERNAL = common dso_local global i8* null, align 8
@ADVERTISED_MII = common dso_local global i32 0, align 4
@XCVR_EXTERNAL = common dso_local global i8* null, align 8
@ADVERTISED_FIBRE = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@ADVERTISED_Autoneg = common dso_local global i32 0, align 4
@MII_LPA = common dso_local global i32 0, align 4
@LPA_100FULL = common dso_local global i64 0, align 8
@LPA_100HALF = common dso_local global i64 0, align 8
@SPEED_100 = common dso_local global i32 0, align 4
@SPEED_10 = common dso_local global i32 0, align 4
@LPA_10FULL = common dso_local global i64 0, align 8
@DUPLEX_FULL = common dso_local global i32 0, align 4
@DUPLEX_HALF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_cmd*)* @netdev_get_ecmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @netdev_get_ecmd(%struct.net_device* %0, %struct.ethtool_cmd* %1) #0 {
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ethtool_cmd*, align 8
  %5 = alloca %struct.netdev_private*, align 8
  %6 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  store %struct.ethtool_cmd* %1, %struct.ethtool_cmd** %4, align 8
  %7 = load %struct.net_device*, %struct.net_device** %3, align 8
  %8 = call %struct.netdev_private* @netdev_priv(%struct.net_device* %7)
  store %struct.netdev_private* %8, %struct.netdev_private** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %3, align 8
  %10 = getelementptr inbounds %struct.net_device, %struct.net_device* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %13 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 8
  %14 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %15 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %18 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %17, i32 0, i32 3
  store i32 %16, i32* %18, align 4
  %19 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %20 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %23 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %22, i32 0, i32 2
  store i32 %21, i32* %23, align 8
  %24 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %25 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %28 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %27, i32 0, i32 5
  store i32 %26, i32* %28, align 4
  %29 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %30 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %29, i32 0, i32 4
  store i32 0, i32* %30, align 8
  %31 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %32 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @ADVERTISE_10HALF, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %39 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %40 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %39, i32 0, i32 4
  %41 = load i32, i32* %40, align 8
  %42 = or i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %43

43:                                               ; preds = %37, %2
  %44 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %45 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ADVERTISE_10FULL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %56

50:                                               ; preds = %43
  %51 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %52 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %53 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %50, %43
  %57 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %58 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* @ADVERTISE_100HALF, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %56
  %64 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %65 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %66 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %56
  %70 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %71 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* @ADVERTISE_100FULL, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %82

76:                                               ; preds = %69
  %77 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %78 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %79 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %78, i32 0, i32 4
  %80 = load i32, i32* %79, align 8
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 8
  br label %82

82:                                               ; preds = %76, %69
  %83 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %84 = load i32, i32* @SUPPORTED_10baseT_Half, align 4
  %85 = or i32 %83, %84
  %86 = load i32, i32* @SUPPORTED_10baseT_Full, align 4
  %87 = or i32 %85, %86
  %88 = load i32, i32* @SUPPORTED_100baseT_Half, align 4
  %89 = or i32 %87, %88
  %90 = load i32, i32* @SUPPORTED_100baseT_Full, align 4
  %91 = or i32 %89, %90
  %92 = load i32, i32* @SUPPORTED_TP, align 4
  %93 = or i32 %91, %92
  %94 = load i32, i32* @SUPPORTED_MII, align 4
  %95 = or i32 %93, %94
  %96 = load i32, i32* @SUPPORTED_FIBRE, align 4
  %97 = or i32 %95, %96
  %98 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %99 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %101 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %104 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %103, i32 0, i32 7
  store i32 %102, i32* %104, align 8
  %105 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %106 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %105, i32 0, i32 0
  %107 = load i32, i32* %106, align 8
  switch i32 %107, label %108 [
    i32 128, label %109
    i32 129, label %118
    i32 130, label %127
  ]

108:                                              ; preds = %82
  br label %109

109:                                              ; preds = %82, %108
  %110 = load i32, i32* @ADVERTISED_TP, align 4
  %111 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %112 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  %115 = load i8*, i8** @XCVR_INTERNAL, align 8
  %116 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %117 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %116, i32 0, i32 6
  store i8* %115, i8** %117, align 8
  br label %136

118:                                              ; preds = %82
  %119 = load i32, i32* @ADVERTISED_MII, align 4
  %120 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %121 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = or i32 %122, %119
  store i32 %123, i32* %121, align 8
  %124 = load i8*, i8** @XCVR_EXTERNAL, align 8
  %125 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %126 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %125, i32 0, i32 6
  store i8* %124, i8** %126, align 8
  br label %136

127:                                              ; preds = %82
  %128 = load i32, i32* @ADVERTISED_FIBRE, align 4
  %129 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %130 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = or i32 %131, %128
  store i32 %132, i32* %130, align 8
  %133 = load i8*, i8** @XCVR_EXTERNAL, align 8
  %134 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %135 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %134, i32 0, i32 6
  store i8* %133, i8** %135, align 8
  br label %136

136:                                              ; preds = %127, %118, %109
  %137 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %138 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %137, i32 0, i32 5
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* @AUTONEG_ENABLE, align 4
  %141 = icmp eq i32 %139, %140
  br i1 %141, label %142, label %188

142:                                              ; preds = %136
  %143 = load i32, i32* @ADVERTISED_Autoneg, align 4
  %144 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %145 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %144, i32 0, i32 4
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  %148 = load %struct.netdev_private*, %struct.netdev_private** %5, align 8
  %149 = getelementptr inbounds %struct.netdev_private, %struct.netdev_private* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.net_device*, %struct.net_device** %3, align 8
  %152 = load i32, i32* @MII_LPA, align 4
  %153 = call i32 @mdio_read(%struct.net_device* %151, i32 %152)
  %154 = and i32 %150, %153
  %155 = call i64 @mii_nway_result(i32 %154)
  store i64 %155, i64* %6, align 8
  %156 = load i64, i64* %6, align 8
  %157 = load i64, i64* @LPA_100FULL, align 8
  %158 = icmp eq i64 %156, %157
  br i1 %158, label %163, label %159

159:                                              ; preds = %142
  %160 = load i64, i64* %6, align 8
  %161 = load i64, i64* @LPA_100HALF, align 8
  %162 = icmp eq i64 %160, %161
  br i1 %162, label %163, label %167

163:                                              ; preds = %159, %142
  %164 = load i32, i32* @SPEED_100, align 4
  %165 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %166 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %165, i32 0, i32 3
  store i32 %164, i32* %166, align 4
  br label %171

167:                                              ; preds = %159
  %168 = load i32, i32* @SPEED_10, align 4
  %169 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %170 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %169, i32 0, i32 3
  store i32 %168, i32* %170, align 4
  br label %171

171:                                              ; preds = %167, %163
  %172 = load i64, i64* %6, align 8
  %173 = load i64, i64* @LPA_100FULL, align 8
  %174 = icmp eq i64 %172, %173
  br i1 %174, label %179, label %175

175:                                              ; preds = %171
  %176 = load i64, i64* %6, align 8
  %177 = load i64, i64* @LPA_10FULL, align 8
  %178 = icmp eq i64 %176, %177
  br i1 %178, label %179, label %183

179:                                              ; preds = %175, %171
  %180 = load i32, i32* @DUPLEX_FULL, align 4
  %181 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %182 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %181, i32 0, i32 2
  store i32 %180, i32* %182, align 8
  br label %187

183:                                              ; preds = %175
  %184 = load i32, i32* @DUPLEX_HALF, align 4
  %185 = load %struct.ethtool_cmd*, %struct.ethtool_cmd** %4, align 8
  %186 = getelementptr inbounds %struct.ethtool_cmd, %struct.ethtool_cmd* %185, i32 0, i32 2
  store i32 %184, i32* %186, align 8
  br label %187

187:                                              ; preds = %183, %179
  br label %188

188:                                              ; preds = %187, %136
  ret i32 0
}

declare dso_local %struct.netdev_private* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @mii_nway_result(i32) #1

declare dso_local i32 @mdio_read(%struct.net_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
