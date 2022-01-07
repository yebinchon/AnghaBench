; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_set_pauseparam.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_nic.c_nes_netdev_set_pauseparam.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_pauseparam = type { i32, i32, i64 }
%struct.nes_vnic = type { %struct.nes_device* }
%struct.nes_device = type { i32, i32, i32 }

@NES_IDX_MAC_TX_CONFIG = common dso_local global i64 0, align 8
@NES_IDX_MAC_TX_CONFIG_ENABLE_PAUSE = common dso_local global i32 0, align 4
@NES_IDX_MPP_DEBUG = common dso_local global i64 0, align 8
@NES_IDX_MPP_DEBUG_PORT_DISABLE_PAUSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_pauseparam*)* @nes_netdev_set_pauseparam to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nes_netdev_set_pauseparam(%struct.net_device* %0, %struct.ethtool_pauseparam* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_pauseparam*, align 8
  %6 = alloca %struct.nes_vnic*, align 8
  %7 = alloca %struct.nes_device*, align 8
  %8 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_pauseparam* %1, %struct.ethtool_pauseparam** %5, align 8
  %9 = load %struct.net_device*, %struct.net_device** %4, align 8
  %10 = call %struct.nes_vnic* @netdev_priv(%struct.net_device* %9)
  store %struct.nes_vnic* %10, %struct.nes_vnic** %6, align 8
  %11 = load %struct.nes_vnic*, %struct.nes_vnic** %6, align 8
  %12 = getelementptr inbounds %struct.nes_vnic, %struct.nes_vnic* %11, i32 0, i32 0
  %13 = load %struct.nes_device*, %struct.nes_device** %12, align 8
  store %struct.nes_device* %13, %struct.nes_device** %7, align 8
  %14 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %15 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %164

19:                                               ; preds = %2
  %20 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %21 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = icmp eq i32 %22, 1
  br i1 %23, label %24, label %54

24:                                               ; preds = %19
  %25 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %26 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %54

29:                                               ; preds = %24
  %30 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %31 = load i64, i64* @NES_IDX_MAC_TX_CONFIG, align 8
  %32 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %33 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 512
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %31, %36
  %38 = call i32 @nes_read_indexed(%struct.nes_device* %30, i64 %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* @NES_IDX_MAC_TX_CONFIG_ENABLE_PAUSE, align 4
  %40 = load i32, i32* %8, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %8, align 4
  %42 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %43 = load i64, i64* @NES_IDX_MAC_TX_CONFIG, align 8
  %44 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %45 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = mul nsw i32 %46, 512
  %48 = sext i32 %47 to i64
  %49 = add nsw i64 %43, %48
  %50 = load i32, i32* %8, align 4
  %51 = call i32 @nes_write_indexed(%struct.nes_device* %42, i64 %49, i32 %50)
  %52 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %53 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %52, i32 0, i32 0
  store i32 0, i32* %53, align 4
  br label %91

54:                                               ; preds = %24, %19
  %55 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %56 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %90

59:                                               ; preds = %54
  %60 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %61 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %90

64:                                               ; preds = %59
  %65 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %66 = load i64, i64* @NES_IDX_MAC_TX_CONFIG, align 8
  %67 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %68 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %69, 512
  %71 = sext i32 %70 to i64
  %72 = add nsw i64 %66, %71
  %73 = call i32 @nes_read_indexed(%struct.nes_device* %65, i64 %72)
  store i32 %73, i32* %8, align 4
  %74 = load i32, i32* @NES_IDX_MAC_TX_CONFIG_ENABLE_PAUSE, align 4
  %75 = xor i32 %74, -1
  %76 = load i32, i32* %8, align 4
  %77 = and i32 %76, %75
  store i32 %77, i32* %8, align 4
  %78 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %79 = load i64, i64* @NES_IDX_MAC_TX_CONFIG, align 8
  %80 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %81 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = mul nsw i32 %82, 512
  %84 = sext i32 %83 to i64
  %85 = add nsw i64 %79, %84
  %86 = load i32, i32* %8, align 4
  %87 = call i32 @nes_write_indexed(%struct.nes_device* %78, i64 %85, i32 %86)
  %88 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %89 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %88, i32 0, i32 0
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %64, %59, %54
  br label %91

91:                                               ; preds = %90, %29
  %92 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %93 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, 1
  br i1 %95, label %96, label %127

96:                                               ; preds = %91
  %97 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %98 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 4
  %100 = icmp eq i32 %99, 1
  br i1 %100, label %101, label %127

101:                                              ; preds = %96
  %102 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %103 = load i64, i64* @NES_IDX_MPP_DEBUG, align 8
  %104 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %105 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = mul nsw i32 %106, 64
  %108 = sext i32 %107 to i64
  %109 = add nsw i64 %103, %108
  %110 = call i32 @nes_read_indexed(%struct.nes_device* %102, i64 %109)
  store i32 %110, i32* %8, align 4
  %111 = load i32, i32* @NES_IDX_MPP_DEBUG_PORT_DISABLE_PAUSE, align 4
  %112 = xor i32 %111, -1
  %113 = load i32, i32* %8, align 4
  %114 = and i32 %113, %112
  store i32 %114, i32* %8, align 4
  %115 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %116 = load i64, i64* @NES_IDX_MPP_DEBUG, align 8
  %117 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %118 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 4
  %120 = mul nsw i32 %119, 64
  %121 = sext i32 %120 to i64
  %122 = add nsw i64 %116, %121
  %123 = load i32, i32* %8, align 4
  %124 = call i32 @nes_write_indexed(%struct.nes_device* %115, i64 %122, i32 %123)
  %125 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %126 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %125, i32 0, i32 2
  store i32 0, i32* %126, align 4
  br label %163

127:                                              ; preds = %96, %91
  %128 = load %struct.ethtool_pauseparam*, %struct.ethtool_pauseparam** %5, align 8
  %129 = getelementptr inbounds %struct.ethtool_pauseparam, %struct.ethtool_pauseparam* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %162

132:                                              ; preds = %127
  %133 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %134 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %162

137:                                              ; preds = %132
  %138 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %139 = load i64, i64* @NES_IDX_MPP_DEBUG, align 8
  %140 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %141 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = mul nsw i32 %142, 64
  %144 = sext i32 %143 to i64
  %145 = add nsw i64 %139, %144
  %146 = call i32 @nes_read_indexed(%struct.nes_device* %138, i64 %145)
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @NES_IDX_MPP_DEBUG_PORT_DISABLE_PAUSE, align 4
  %148 = load i32, i32* %8, align 4
  %149 = or i32 %148, %147
  store i32 %149, i32* %8, align 4
  %150 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %151 = load i64, i64* @NES_IDX_MPP_DEBUG, align 8
  %152 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %153 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = mul nsw i32 %154, 64
  %156 = sext i32 %155 to i64
  %157 = add nsw i64 %151, %156
  %158 = load i32, i32* %8, align 4
  %159 = call i32 @nes_write_indexed(%struct.nes_device* %150, i64 %157, i32 %158)
  %160 = load %struct.nes_device*, %struct.nes_device** %7, align 8
  %161 = getelementptr inbounds %struct.nes_device, %struct.nes_device* %160, i32 0, i32 2
  store i32 1, i32* %161, align 4
  br label %162

162:                                              ; preds = %137, %132, %127
  br label %163

163:                                              ; preds = %162, %101
  store i32 0, i32* %3, align 4
  br label %164

164:                                              ; preds = %163, %18
  %165 = load i32, i32* %3, align 4
  ret i32 %165
}

declare dso_local %struct.nes_vnic* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @nes_read_indexed(%struct.nes_device*, i64) #1

declare dso_local i32 @nes_write_indexed(%struct.nes_device*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
