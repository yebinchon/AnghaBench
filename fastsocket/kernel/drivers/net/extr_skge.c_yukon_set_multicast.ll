; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_yukon_set_multicast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_skge.c_yukon_set_multicast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32, i64, %struct.dev_mc_list* }
%struct.dev_mc_list = type { i32, %struct.dev_mc_list* }
%struct.skge_port = type { i32, i64, %struct.skge_hw* }
%struct.skge_hw = type { i32 }

@FLOW_STAT_REM_SEND = common dso_local global i64 0, align 8
@FLOW_STAT_SYMMETRIC = common dso_local global i64 0, align 8
@GM_RX_CTRL = common dso_local global i32 0, align 4
@GM_RXCR_UCF_ENA = common dso_local global i32 0, align 4
@IFF_PROMISC = common dso_local global i32 0, align 4
@GM_RXCR_MCF_ENA = common dso_local global i32 0, align 4
@IFF_ALLMULTI = common dso_local global i32 0, align 4
@pause_mc_addr = common dso_local global i32 0, align 4
@GM_MC_ADDR_H1 = common dso_local global i32 0, align 4
@GM_MC_ADDR_H2 = common dso_local global i32 0, align 4
@GM_MC_ADDR_H3 = common dso_local global i32 0, align 4
@GM_MC_ADDR_H4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.net_device*)* @yukon_set_multicast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yukon_set_multicast(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.skge_port*, align 8
  %4 = alloca %struct.skge_hw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dev_mc_list*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [8 x i64], align 16
  %10 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %11 = load %struct.net_device*, %struct.net_device** %2, align 8
  %12 = call %struct.skge_port* @netdev_priv(%struct.net_device* %11)
  store %struct.skge_port* %12, %struct.skge_port** %3, align 8
  %13 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %14 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %13, i32 0, i32 2
  %15 = load %struct.skge_hw*, %struct.skge_hw** %14, align 8
  store %struct.skge_hw* %15, %struct.skge_hw** %4, align 8
  %16 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %17 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %5, align 4
  %19 = load %struct.net_device*, %struct.net_device** %2, align 8
  %20 = getelementptr inbounds %struct.net_device, %struct.net_device* %19, i32 0, i32 2
  %21 = load %struct.dev_mc_list*, %struct.dev_mc_list** %20, align 8
  store %struct.dev_mc_list* %21, %struct.dev_mc_list** %6, align 8
  %22 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %23 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @FLOW_STAT_REM_SEND, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %33, label %27

27:                                               ; preds = %1
  %28 = load %struct.skge_port*, %struct.skge_port** %3, align 8
  %29 = getelementptr inbounds %struct.skge_port, %struct.skge_port* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @FLOW_STAT_SYMMETRIC, align 8
  %32 = icmp eq i64 %30, %31
  br label %33

33:                                               ; preds = %27, %1
  %34 = phi i1 [ true, %1 ], [ %32, %27 ]
  %35 = zext i1 %34 to i32
  store i32 %35, i32* %7, align 4
  %36 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %37 = call i32 @memset(i64* %36, i32 0, i32 64)
  %38 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @GM_RX_CTRL, align 4
  %41 = call i32 @gma_read16(%struct.skge_hw* %38, i32 %39, i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load i32, i32* @GM_RXCR_UCF_ENA, align 4
  %43 = load i32, i32* %8, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %8, align 4
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = getelementptr inbounds %struct.net_device, %struct.net_device* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IFF_PROMISC, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %58

51:                                               ; preds = %33
  %52 = load i32, i32* @GM_RXCR_UCF_ENA, align 4
  %53 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %54 = or i32 %52, %53
  %55 = xor i32 %54, -1
  %56 = load i32, i32* %8, align 4
  %57 = and i32 %56, %55
  store i32 %57, i32* %8, align 4
  br label %119

58:                                               ; preds = %33
  %59 = load %struct.net_device*, %struct.net_device** %2, align 8
  %60 = getelementptr inbounds %struct.net_device, %struct.net_device* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @IFF_ALLMULTI, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %67 = call i32 @memset(i64* %66, i32 255, i32 64)
  br label %118

68:                                               ; preds = %58
  %69 = load %struct.net_device*, %struct.net_device** %2, align 8
  %70 = getelementptr inbounds %struct.net_device, %struct.net_device* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i32, i32* %7, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %8, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %8, align 4
  br label %117

81:                                               ; preds = %73, %68
  %82 = load i32, i32* @GM_RXCR_MCF_ENA, align 4
  %83 = load i32, i32* %8, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %8, align 4
  %85 = load i32, i32* %7, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %81
  %88 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %89 = load i32, i32* @pause_mc_addr, align 4
  %90 = call i32 @yukon_add_filter(i64* %88, i32 %89)
  br label %91

91:                                               ; preds = %87, %81
  store i32 0, i32* %10, align 4
  br label %92

92:                                               ; preds = %110, %91
  %93 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %94 = icmp ne %struct.dev_mc_list* %93, null
  br i1 %94, label %95, label %102

95:                                               ; preds = %92
  %96 = load i32, i32* %10, align 4
  %97 = sext i32 %96 to i64
  %98 = load %struct.net_device*, %struct.net_device** %2, align 8
  %99 = getelementptr inbounds %struct.net_device, %struct.net_device* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp slt i64 %97, %100
  br label %102

102:                                              ; preds = %95, %92
  %103 = phi i1 [ false, %92 ], [ %101, %95 ]
  br i1 %103, label %104, label %116

104:                                              ; preds = %102
  %105 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %106 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %107 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @yukon_add_filter(i64* %105, i32 %108)
  br label %110

110:                                              ; preds = %104
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  %113 = load %struct.dev_mc_list*, %struct.dev_mc_list** %6, align 8
  %114 = getelementptr inbounds %struct.dev_mc_list, %struct.dev_mc_list* %113, i32 0, i32 1
  %115 = load %struct.dev_mc_list*, %struct.dev_mc_list** %114, align 8
  store %struct.dev_mc_list* %115, %struct.dev_mc_list** %6, align 8
  br label %92

116:                                              ; preds = %102
  br label %117

117:                                              ; preds = %116, %76
  br label %118

118:                                              ; preds = %117, %65
  br label %119

119:                                              ; preds = %118, %51
  %120 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %121 = load i32, i32* %5, align 4
  %122 = load i32, i32* @GM_MC_ADDR_H1, align 4
  %123 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 0
  %124 = load i64, i64* %123, align 16
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 1
  %127 = load i64, i64* %126, align 8
  %128 = trunc i64 %127 to i32
  %129 = shl i32 %128, 8
  %130 = or i32 %125, %129
  %131 = call i32 @gma_write16(%struct.skge_hw* %120, i32 %121, i32 %122, i32 %130)
  %132 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %133 = load i32, i32* %5, align 4
  %134 = load i32, i32* @GM_MC_ADDR_H2, align 4
  %135 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 2
  %136 = load i64, i64* %135, align 16
  %137 = trunc i64 %136 to i32
  %138 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 3
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = shl i32 %140, 8
  %142 = or i32 %137, %141
  %143 = call i32 @gma_write16(%struct.skge_hw* %132, i32 %133, i32 %134, i32 %142)
  %144 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %145 = load i32, i32* %5, align 4
  %146 = load i32, i32* @GM_MC_ADDR_H3, align 4
  %147 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 4
  %148 = load i64, i64* %147, align 16
  %149 = trunc i64 %148 to i32
  %150 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 5
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = shl i32 %152, 8
  %154 = or i32 %149, %153
  %155 = call i32 @gma_write16(%struct.skge_hw* %144, i32 %145, i32 %146, i32 %154)
  %156 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %157 = load i32, i32* %5, align 4
  %158 = load i32, i32* @GM_MC_ADDR_H4, align 4
  %159 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 6
  %160 = load i64, i64* %159, align 16
  %161 = trunc i64 %160 to i32
  %162 = getelementptr inbounds [8 x i64], [8 x i64]* %9, i64 0, i64 7
  %163 = load i64, i64* %162, align 8
  %164 = trunc i64 %163 to i32
  %165 = shl i32 %164, 8
  %166 = or i32 %161, %165
  %167 = call i32 @gma_write16(%struct.skge_hw* %156, i32 %157, i32 %158, i32 %166)
  %168 = load %struct.skge_hw*, %struct.skge_hw** %4, align 8
  %169 = load i32, i32* %5, align 4
  %170 = load i32, i32* @GM_RX_CTRL, align 4
  %171 = load i32, i32* %8, align 4
  %172 = call i32 @gma_write16(%struct.skge_hw* %168, i32 %169, i32 %170, i32 %171)
  ret void
}

declare dso_local %struct.skge_port* @netdev_priv(%struct.net_device*) #1

declare dso_local i32 @memset(i64*, i32, i32) #1

declare dso_local i32 @gma_read16(%struct.skge_hw*, i32, i32) #1

declare dso_local i32 @yukon_add_filter(i64*, i32) #1

declare dso_local i32 @gma_write16(%struct.skge_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
