; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_set_netdev_features.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_main.c_qlcnic_set_netdev_features.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_2__*, %struct.net_device* }
%struct.TYPE_2__ = type { i32 }
%struct.net_device = type { i32, i64 }
%struct.qlcnic_esw_func_cfg = type { i32 }

@NETIF_F_SG = common dso_local global i64 0, align 8
@NETIF_F_IP_CSUM = common dso_local global i64 0, align 8
@NETIF_F_IPV6_CSUM = common dso_local global i64 0, align 8
@NETIF_F_GRO = common dso_local global i64 0, align 8
@NETIF_F_TSO = common dso_local global i64 0, align 8
@NETIF_F_TSO6 = common dso_local global i64 0, align 8
@NETIF_F_LRO = common dso_local global i32 0, align 4
@BIT_0 = common dso_local global i32 0, align 4
@QLCNIC_LRO_WAS_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_LRO_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"Enabling LRO as Rx checksum is on\0A\00", align 1
@BIT_1 = common dso_local global i32 0, align 4
@BIT_2 = common dso_local global i32 0, align 4
@QLCNIC_LRO_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Disabling LRO as rx_csum is off\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qlcnic_adapter*, %struct.qlcnic_esw_func_cfg*)* @qlcnic_set_netdev_features to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_set_netdev_features(%struct.qlcnic_adapter* %0, %struct.qlcnic_esw_func_cfg* %1) #0 {
  %3 = alloca %struct.qlcnic_adapter*, align 8
  %4 = alloca %struct.qlcnic_esw_func_cfg*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %3, align 8
  store %struct.qlcnic_esw_func_cfg* %1, %struct.qlcnic_esw_func_cfg** %4, align 8
  %9 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %10 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %9, i32 0, i32 3
  %11 = load %struct.net_device*, %struct.net_device** %10, align 8
  store %struct.net_device* %11, %struct.net_device** %5, align 8
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %13 = call i64 @qlcnic_83xx_check(%struct.qlcnic_adapter* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %192

16:                                               ; preds = %2
  %17 = load i64, i64* @NETIF_F_SG, align 8
  %18 = load i64, i64* @NETIF_F_IP_CSUM, align 8
  %19 = or i64 %17, %18
  %20 = load i64, i64* @NETIF_F_IPV6_CSUM, align 8
  %21 = or i64 %19, %20
  %22 = load i64, i64* @NETIF_F_GRO, align 8
  %23 = or i64 %21, %22
  store i64 %23, i64* %6, align 8
  %24 = load i64, i64* @NETIF_F_SG, align 8
  %25 = load i64, i64* @NETIF_F_IP_CSUM, align 8
  %26 = or i64 %24, %25
  %27 = load i64, i64* @NETIF_F_IPV6_CSUM, align 8
  %28 = or i64 %26, %27
  %29 = load i64, i64* @NETIF_F_GRO, align 8
  %30 = or i64 %28, %29
  store i64 %30, i64* %7, align 8
  %31 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %32 = call i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %16
  %35 = load i64, i64* @NETIF_F_TSO, align 8
  %36 = load i64, i64* @NETIF_F_TSO6, align 8
  %37 = or i64 %35, %36
  %38 = load i64, i64* %6, align 8
  %39 = or i64 %38, %37
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* @NETIF_F_TSO, align 8
  %41 = load i64, i64* @NETIF_F_TSO6, align 8
  %42 = or i64 %40, %41
  %43 = load i64, i64* %7, align 8
  %44 = or i64 %43, %42
  store i64 %44, i64* %7, align 8
  br label %45

45:                                               ; preds = %34, %16
  %46 = load %struct.net_device*, %struct.net_device** %5, align 8
  %47 = getelementptr inbounds %struct.net_device, %struct.net_device* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @NETIF_F_LRO, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %45
  %53 = load i32, i32* @NETIF_F_LRO, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* %6, align 8
  %56 = or i64 %55, %54
  store i64 %56, i64* %6, align 8
  br label %57

57:                                               ; preds = %52, %45
  %58 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %59 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @BIT_0, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %139

64:                                               ; preds = %57
  %65 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %66 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %65, i32 0, i32 0
  store i32 1, i32* %66, align 8
  %67 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %68 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @QLCNIC_LRO_WAS_ENABLED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %64
  %74 = load i32, i32* @QLCNIC_LRO_ENABLED, align 4
  store i32 %74, i32* %8, align 4
  %75 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %76 = load i32, i32* %8, align 4
  %77 = call i64 @qlcnic_config_hw_lro(%struct.qlcnic_adapter* %75, i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %73
  br label %192

80:                                               ; preds = %73
  %81 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %82 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %81, i32 0, i32 2
  %83 = load %struct.TYPE_2__*, %struct.TYPE_2__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = call i32 @dev_info(i32* %84, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @NETIF_F_LRO, align 4
  %87 = load %struct.net_device*, %struct.net_device** %5, align 8
  %88 = getelementptr inbounds %struct.net_device, %struct.net_device* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = or i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %91

91:                                               ; preds = %80, %64
  %92 = load i64, i64* %6, align 8
  %93 = load %struct.net_device*, %struct.net_device** %5, align 8
  %94 = getelementptr inbounds %struct.net_device, %struct.net_device* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = or i64 %96, %92
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %94, align 8
  %99 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %100 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @BIT_1, align 4
  %103 = and i32 %101, %102
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %118, label %105

105:                                              ; preds = %91
  %106 = load i64, i64* @NETIF_F_TSO, align 8
  %107 = xor i64 %106, -1
  %108 = load %struct.net_device*, %struct.net_device** %5, align 8
  %109 = getelementptr inbounds %struct.net_device, %struct.net_device* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = sext i32 %110 to i64
  %112 = and i64 %111, %107
  %113 = trunc i64 %112 to i32
  store i32 %113, i32* %109, align 8
  %114 = load i64, i64* @NETIF_F_TSO, align 8
  %115 = xor i64 %114, -1
  %116 = load i64, i64* %6, align 8
  %117 = and i64 %116, %115
  store i64 %117, i64* %6, align 8
  br label %118

118:                                              ; preds = %105, %91
  %119 = load %struct.qlcnic_esw_func_cfg*, %struct.qlcnic_esw_func_cfg** %4, align 8
  %120 = getelementptr inbounds %struct.qlcnic_esw_func_cfg, %struct.qlcnic_esw_func_cfg* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load i32, i32* @BIT_2, align 4
  %123 = and i32 %121, %122
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %138, label %125

125:                                              ; preds = %118
  %126 = load i64, i64* @NETIF_F_TSO6, align 8
  %127 = xor i64 %126, -1
  %128 = load %struct.net_device*, %struct.net_device** %5, align 8
  %129 = getelementptr inbounds %struct.net_device, %struct.net_device* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = sext i32 %130 to i64
  %132 = and i64 %131, %127
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %129, align 8
  %134 = load i64, i64* @NETIF_F_TSO6, align 8
  %135 = xor i64 %134, -1
  %136 = load i64, i64* %6, align 8
  %137 = and i64 %136, %135
  store i64 %137, i64* %6, align 8
  br label %138

138:                                              ; preds = %125, %118
  br label %186

139:                                              ; preds = %57
  %140 = load %struct.net_device*, %struct.net_device** %5, align 8
  %141 = getelementptr inbounds %struct.net_device, %struct.net_device* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = load i32, i32* @NETIF_F_LRO, align 4
  %144 = and i32 %142, %143
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %171

146:                                              ; preds = %139
  %147 = load i32, i32* @QLCNIC_LRO_DISABLED, align 4
  store i32 %147, i32* %8, align 4
  %148 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %149 = load i32, i32* %8, align 4
  %150 = call i64 @qlcnic_config_hw_lro(%struct.qlcnic_adapter* %148, i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %146
  br label %192

153:                                              ; preds = %146
  %154 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %155 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %160

157:                                              ; preds = %153
  %158 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %159 = call i32 @qlcnic_send_lro_cleanup(%struct.qlcnic_adapter* %158)
  br label %160

160:                                              ; preds = %157, %153
  %161 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %162 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %161, i32 0, i32 2
  %163 = load %struct.TYPE_2__*, %struct.TYPE_2__** %162, align 8
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 0
  %165 = call i32 @dev_info(i32* %164, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %166 = load i32, i32* @QLCNIC_LRO_WAS_ENABLED, align 4
  %167 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %168 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = or i32 %169, %166
  store i32 %170, i32* %168, align 4
  br label %171

171:                                              ; preds = %160, %139
  %172 = load i64, i64* %6, align 8
  %173 = xor i64 %172, -1
  %174 = load %struct.net_device*, %struct.net_device** %5, align 8
  %175 = getelementptr inbounds %struct.net_device, %struct.net_device* %174, i32 0, i32 0
  %176 = load i32, i32* %175, align 8
  %177 = sext i32 %176 to i64
  %178 = and i64 %177, %173
  %179 = trunc i64 %178 to i32
  store i32 %179, i32* %175, align 8
  %180 = load i64, i64* %6, align 8
  %181 = xor i64 %180, -1
  %182 = load i64, i64* %6, align 8
  %183 = and i64 %182, %181
  store i64 %183, i64* %6, align 8
  %184 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %3, align 8
  %185 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %184, i32 0, i32 0
  store i32 0, i32* %185, align 8
  br label %186

186:                                              ; preds = %171, %138
  %187 = load i64, i64* %6, align 8
  %188 = load i64, i64* %7, align 8
  %189 = and i64 %187, %188
  %190 = load %struct.net_device*, %struct.net_device** %5, align 8
  %191 = getelementptr inbounds %struct.net_device, %struct.net_device* %190, i32 0, i32 1
  store i64 %189, i64* %191, align 8
  br label %192

192:                                              ; preds = %186, %152, %79, %15
  ret void
}

declare dso_local i64 @qlcnic_83xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @QLCNIC_IS_TSO_CAPABLE(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_config_hw_lro(%struct.qlcnic_adapter*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_send_lro_cleanup(%struct.qlcnic_adapter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
