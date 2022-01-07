; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_ethtool.c_qlcnic_get_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_regs = type { i32 }
%struct.qlcnic_adapter = type { i32, %struct.TYPE_7__*, i32, %struct.TYPE_6__*, %struct.TYPE_5__*, %struct.qlcnic_recv_context* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.qlcnic_recv_context = type { %struct.qlcnic_host_sds_ring*, %struct.TYPE_8__* }
%struct.qlcnic_host_sds_ring = type { i32 }
%struct.TYPE_8__ = type { i32 }

@QLCNIC_ETHTOOL_REGS_VER = common dso_local global i32 0, align 4
@QLCNIC_DEV_INFO_SIZE = common dso_local global i32 0, align 4
@QLCNIC_MGMT_API_VERSION = common dso_local global i32 0, align 4
@__QLCNIC_DEV_UP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*, %struct.ethtool_regs*, i8*)* @qlcnic_get_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qlcnic_get_regs(%struct.net_device* %0, %struct.ethtool_regs* %1, i8* %2) #0 {
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ethtool_regs*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.qlcnic_adapter*, align 8
  %8 = alloca %struct.qlcnic_recv_context*, align 8
  %9 = alloca %struct.qlcnic_host_sds_ring*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ethtool_regs* %1, %struct.ethtool_regs** %5, align 8
  store i8* %2, i8** %6, align 8
  %13 = load %struct.net_device*, %struct.net_device** %4, align 8
  %14 = call %struct.qlcnic_adapter* @netdev_priv(%struct.net_device* %13)
  store %struct.qlcnic_adapter* %14, %struct.qlcnic_adapter** %7, align 8
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %16 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %15, i32 0, i32 5
  %17 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %16, align 8
  store %struct.qlcnic_recv_context* %17, %struct.qlcnic_recv_context** %8, align 8
  %18 = load i8*, i8** %6, align 8
  %19 = bitcast i8* %18 to i32*
  store i32* %19, i32** %10, align 8
  store i32 0, i32* %12, align 4
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.net_device*, %struct.net_device** %4, align 8
  %22 = call i32 @qlcnic_get_regs_len(%struct.net_device* %21)
  %23 = call i32 @memset(i8* %20, i32 0, i32 %22)
  %24 = load i32, i32* @QLCNIC_ETHTOOL_REGS_VER, align 4
  %25 = shl i32 %24, 24
  %26 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %27 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %26, i32 0, i32 4
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = shl i32 %30, 16
  %32 = or i32 %25, %31
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %34 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %33, i32 0, i32 3
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %32, %37
  %39 = load %struct.ethtool_regs*, %struct.ethtool_regs** %5, align 8
  %40 = getelementptr inbounds %struct.ethtool_regs, %struct.ethtool_regs* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @QLCNIC_DEV_INFO_SIZE, align 4
  %42 = and i32 %41, 65535
  %43 = or i32 -889323520, %42
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 0
  store i32 %43, i32* %45, align 4
  %46 = load i32, i32* @QLCNIC_MGMT_API_VERSION, align 4
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 %46, i32* %48, align 4
  %49 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %50 = call i64 @qlcnic_82xx_check(%struct.qlcnic_adapter* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %3
  %53 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %54 = load i32*, i32** %10, align 8
  %55 = call i32 @qlcnic_82xx_get_registers(%struct.qlcnic_adapter* %53, i32* %54)
  store i32 %55, i32* %12, align 4
  br label %60

56:                                               ; preds = %3
  %57 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = call i32 @qlcnic_83xx_get_registers(%struct.qlcnic_adapter* %57, i32* %58)
  store i32 %59, i32* %12, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load i32, i32* @__QLCNIC_DEV_UP, align 4
  %62 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %63 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %62, i32 0, i32 2
  %64 = call i32 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %60
  br label %163

67:                                               ; preds = %60
  %68 = load i32*, i32** %10, align 8
  %69 = load i32, i32* %12, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %12, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  store i32 -1061461, i32* %72, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = load i32, i32* %12, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %12, align 4
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %73, i64 %76
  store i32 1, i32* %77, align 4
  %78 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %79 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %78, i32 0, i32 1
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 1
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @le32_to_cpu(i32 %83)
  %85 = load i32*, i32** %10, align 8
  %86 = load i32, i32* %12, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %12, align 4
  %88 = sext i32 %86 to i64
  %89 = getelementptr inbounds i32, i32* %85, i64 %88
  store i32 %84, i32* %89, align 4
  %90 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %91 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %90, i32 0, i32 1
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @readl(i32 %94)
  %96 = load i32*, i32** %10, align 8
  %97 = load i32, i32* %12, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %12, align 4
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i32, i32* %96, i64 %99
  store i32 %95, i32* %100, align 4
  %101 = load i32*, i32** %10, align 8
  %102 = load i32, i32* %12, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %12, align 4
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  store i32 2, i32* %105, align 4
  %106 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %107 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %106, i32 0, i32 1
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i64 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @readl(i32 %111)
  %113 = load i32*, i32** %10, align 8
  %114 = load i32, i32* %12, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %12, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 %112, i32* %117, align 4
  %118 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %119 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %118, i32 0, i32 1
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i64 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = call i32 @readl(i32 %123)
  %125 = load i32*, i32** %10, align 8
  %126 = load i32, i32* %12, align 4
  %127 = add nsw i32 %126, 1
  store i32 %127, i32* %12, align 4
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i32, i32* %125, i64 %128
  store i32 %124, i32* %129, align 4
  %130 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %131 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32*, i32** %10, align 8
  %134 = load i32, i32* %12, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %12, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds i32, i32* %133, i64 %136
  store i32 %132, i32* %137, align 4
  store i32 0, i32* %11, align 4
  br label %138

138:                                              ; preds = %160, %67
  %139 = load i32, i32* %11, align 4
  %140 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %7, align 8
  %141 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = icmp slt i32 %139, %142
  br i1 %143, label %144, label %163

144:                                              ; preds = %138
  %145 = load %struct.qlcnic_recv_context*, %struct.qlcnic_recv_context** %8, align 8
  %146 = getelementptr inbounds %struct.qlcnic_recv_context, %struct.qlcnic_recv_context* %145, i32 0, i32 0
  %147 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %146, align 8
  %148 = load i32, i32* %11, align 4
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %147, i64 %149
  store %struct.qlcnic_host_sds_ring* %150, %struct.qlcnic_host_sds_ring** %9, align 8
  %151 = load %struct.qlcnic_host_sds_ring*, %struct.qlcnic_host_sds_ring** %9, align 8
  %152 = getelementptr inbounds %struct.qlcnic_host_sds_ring, %struct.qlcnic_host_sds_ring* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @readl(i32 %153)
  %155 = load i32*, i32** %10, align 8
  %156 = load i32, i32* %12, align 4
  %157 = add nsw i32 %156, 1
  store i32 %157, i32* %12, align 4
  %158 = sext i32 %156 to i64
  %159 = getelementptr inbounds i32, i32* %155, i64 %158
  store i32 %154, i32* %159, align 4
  br label %160

160:                                              ; preds = %144
  %161 = load i32, i32* %11, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %11, align 4
  br label %138

163:                                              ; preds = %66, %138
  ret void
}

declare dso_local %struct.qlcnic_adapter* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @qlcnic_get_regs_len(%struct.net_device*) #1

declare dso_local i64 @qlcnic_82xx_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_82xx_get_registers(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @qlcnic_83xx_get_registers(%struct.qlcnic_adapter*, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @readl(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
