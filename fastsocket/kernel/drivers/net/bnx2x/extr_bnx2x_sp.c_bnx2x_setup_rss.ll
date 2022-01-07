; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_setup_rss.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_setup_rss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_config_rss_params = type { i32*, i32, i32*, i32, %struct.bnx2x_rss_config_obj* }
%struct.bnx2x_rss_config_obj = type { i32*, i32, %struct.bnx2x_raw_obj }
%struct.bnx2x_raw_obj = type { i32, i32, i32, i64 }
%struct.eth_rss_update_ramrod_data = type { i32, i32*, i32*, i32, i32, i32, i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Configuring RSS\0A\00", align 1
@BNX2X_SWCID_MASK = common dso_local global i32 0, align 4
@BNX2X_SWCID_SHIFT = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@ETH_RSS_MODE_DISABLED = common dso_local global i32 0, align 4
@BNX2X_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@ETH_RSS_MODE_REGULAR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"rss_mode=%d\0A\00", align 1
@BNX2X_RSS_IPV4 = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_TCP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV4_UDP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6 = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_TCP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY = common dso_local global i32 0, align 4
@BNX2X_RSS_IPV6_UDP = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"rss_engine_id=%d\0A\00", align 1
@T_ETH_INDIRECTION_TABLE_SIZE = common dso_local global i32 0, align 4
@BNX2X_RSS_SET_SRCH = common dso_local global i32 0, align 4
@ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY = common dso_local global i32 0, align 4
@RAMROD_CMD_ID_ETH_RSS_UPDATE = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_config_rss_params*)* @bnx2x_setup_rss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_setup_rss(%struct.bnx2x* %0, %struct.bnx2x_config_rss_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_config_rss_params*, align 8
  %6 = alloca %struct.bnx2x_rss_config_obj*, align 8
  %7 = alloca %struct.bnx2x_raw_obj*, align 8
  %8 = alloca %struct.eth_rss_update_ramrod_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_config_rss_params* %1, %struct.bnx2x_config_rss_params** %5, align 8
  %11 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %12 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %11, i32 0, i32 4
  %13 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %12, align 8
  store %struct.bnx2x_rss_config_obj* %13, %struct.bnx2x_rss_config_obj** %6, align 8
  %14 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %6, align 8
  %15 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %14, i32 0, i32 2
  store %struct.bnx2x_raw_obj* %15, %struct.bnx2x_raw_obj** %7, align 8
  %16 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %17 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.eth_rss_update_ramrod_data*
  store %struct.eth_rss_update_ramrod_data* %19, %struct.eth_rss_update_ramrod_data** %8, align 8
  store i32 0, i32* %9, align 4
  %20 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %21 = call i32 @memset(%struct.eth_rss_update_ramrod_data* %20, i32 0, i32 40)
  %22 = load i32, i32* @BNX2X_MSG_SP, align 4
  %23 = call i32 (i32, i8*, ...) @DP(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %25 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BNX2X_SWCID_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %30 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @BNX2X_SWCID_SHIFT, align 4
  %33 = shl i32 %31, %32
  %34 = or i32 %28, %33
  %35 = call i32 @cpu_to_le32(i32 %34)
  %36 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %37 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %36, i32 0, i32 6
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @BNX2X_RSS_MODE_DISABLED, align 4
  %39 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %40 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %39, i32 0, i32 1
  %41 = call i64 @test_bit(i32 %38, i32* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %2
  %44 = load i32, i32* @ETH_RSS_MODE_DISABLED, align 4
  store i32 %44, i32* %9, align 4
  br label %54

45:                                               ; preds = %2
  %46 = load i32, i32* @BNX2X_RSS_MODE_REGULAR, align 4
  %47 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %48 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %47, i32 0, i32 1
  %49 = call i64 @test_bit(i32 %46, i32* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %45
  %52 = load i32, i32* @ETH_RSS_MODE_REGULAR, align 4
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %51, %45
  br label %54

54:                                               ; preds = %53, %43
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %57 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %56, i32 0, i32 5
  store i32 %55, i32* %57, align 8
  %58 = load i32, i32* @BNX2X_MSG_SP, align 4
  %59 = load i32, i32* %9, align 4
  %60 = call i32 (i32, i8*, ...) @DP(i32 %58, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @BNX2X_RSS_IPV4, align 4
  %62 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %62, i32 0, i32 1
  %64 = call i64 @test_bit(i32 %61, i32* %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %54
  %67 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_CAPABILITY, align 4
  %68 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %69 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = or i32 %70, %67
  store i32 %71, i32* %69, align 8
  br label %72

72:                                               ; preds = %66, %54
  %73 = load i32, i32* @BNX2X_RSS_IPV4_TCP, align 4
  %74 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %75 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %72
  %79 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_TCP_CAPABILITY, align 4
  %80 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %81 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = or i32 %82, %79
  store i32 %83, i32* %81, align 8
  br label %84

84:                                               ; preds = %78, %72
  %85 = load i32, i32* @BNX2X_RSS_IPV4_UDP, align 4
  %86 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %87 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %86, i32 0, i32 1
  %88 = call i64 @test_bit(i32 %85, i32* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %96

90:                                               ; preds = %84
  %91 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV4_UDP_CAPABILITY, align 4
  %92 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %93 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = or i32 %94, %91
  store i32 %95, i32* %93, align 8
  br label %96

96:                                               ; preds = %90, %84
  %97 = load i32, i32* @BNX2X_RSS_IPV6, align 4
  %98 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %99 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %98, i32 0, i32 1
  %100 = call i64 @test_bit(i32 %97, i32* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %96
  %103 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_CAPABILITY, align 4
  %104 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %105 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32, i32* @BNX2X_RSS_IPV6_TCP, align 4
  %110 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %111 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %110, i32 0, i32 1
  %112 = call i64 @test_bit(i32 %109, i32* %111)
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_TCP_CAPABILITY, align 4
  %116 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %117 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = or i32 %118, %115
  store i32 %119, i32* %117, align 8
  br label %120

120:                                              ; preds = %114, %108
  %121 = load i32, i32* @BNX2X_RSS_IPV6_UDP, align 4
  %122 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %123 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %122, i32 0, i32 1
  %124 = call i64 @test_bit(i32 %121, i32* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %120
  %127 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_IPV6_UDP_CAPABILITY, align 4
  %128 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %129 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 8
  %131 = or i32 %130, %127
  store i32 %131, i32* %129, align 8
  br label %132

132:                                              ; preds = %126, %120
  %133 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %134 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 8
  %136 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %137 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %136, i32 0, i32 4
  store i32 %135, i32* %137, align 4
  %138 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %6, align 8
  %139 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 8
  %141 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %142 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %141, i32 0, i32 3
  store i32 %140, i32* %142, align 8
  %143 = load i32, i32* @BNX2X_MSG_SP, align 4
  %144 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %145 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 8
  %147 = call i32 (i32, i8*, ...) @DP(i32 %143, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %146)
  %148 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %149 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %148, i32 0, i32 2
  %150 = load i32*, i32** %149, align 8
  %151 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %152 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %151, i32 0, i32 2
  %153 = load i32*, i32** %152, align 8
  %154 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %155 = call i32 @memcpy(i32* %150, i32* %153, i32 %154)
  %156 = load %struct.bnx2x_rss_config_obj*, %struct.bnx2x_rss_config_obj** %6, align 8
  %157 = getelementptr inbounds %struct.bnx2x_rss_config_obj, %struct.bnx2x_rss_config_obj* %156, i32 0, i32 0
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %160 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %159, i32 0, i32 2
  %161 = load i32*, i32** %160, align 8
  %162 = load i32, i32* @T_ETH_INDIRECTION_TABLE_SIZE, align 4
  %163 = call i32 @memcpy(i32* %158, i32* %161, i32 %162)
  %164 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %165 = call i64 @netif_msg_ifup(%struct.bnx2x* %164)
  %166 = icmp ne i64 %165, 0
  br i1 %166, label %167, label %171

167:                                              ; preds = %132
  %168 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %169 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %170 = call i32 @bnx2x_debug_print_ind_table(%struct.bnx2x* %168, %struct.bnx2x_config_rss_params* %169)
  br label %171

171:                                              ; preds = %167, %132
  %172 = load i32, i32* @BNX2X_RSS_SET_SRCH, align 4
  %173 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %174 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %173, i32 0, i32 1
  %175 = call i64 @test_bit(i32 %172, i32* %174)
  %176 = icmp ne i64 %175, 0
  br i1 %176, label %177, label %192

177:                                              ; preds = %171
  %178 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %179 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %178, i32 0, i32 1
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load %struct.bnx2x_config_rss_params*, %struct.bnx2x_config_rss_params** %5, align 8
  %183 = getelementptr inbounds %struct.bnx2x_config_rss_params, %struct.bnx2x_config_rss_params* %182, i32 0, i32 0
  %184 = load i32*, i32** %183, align 8
  %185 = getelementptr inbounds i32, i32* %184, i64 0
  %186 = call i32 @memcpy(i32* %181, i32* %185, i32 8)
  %187 = load i32, i32* @ETH_RSS_UPDATE_RAMROD_DATA_UPDATE_RSS_KEY, align 4
  %188 = load %struct.eth_rss_update_ramrod_data*, %struct.eth_rss_update_ramrod_data** %8, align 8
  %189 = getelementptr inbounds %struct.eth_rss_update_ramrod_data, %struct.eth_rss_update_ramrod_data* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = or i32 %190, %187
  store i32 %191, i32* %189, align 8
  br label %192

192:                                              ; preds = %177, %171
  %193 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %194 = load i32, i32* @RAMROD_CMD_ID_ETH_RSS_UPDATE, align 4
  %195 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %196 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %199 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = call i32 @U64_HI(i32 %200)
  %202 = load %struct.bnx2x_raw_obj*, %struct.bnx2x_raw_obj** %7, align 8
  %203 = getelementptr inbounds %struct.bnx2x_raw_obj, %struct.bnx2x_raw_obj* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 8
  %205 = call i32 @U64_LO(i32 %204)
  %206 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %207 = call i32 @bnx2x_sp_post(%struct.bnx2x* %193, i32 %194, i32 %197, i32 %201, i32 %205, i32 %206)
  store i32 %207, i32* %10, align 4
  %208 = load i32, i32* %10, align 4
  %209 = icmp slt i32 %208, 0
  br i1 %209, label %210, label %212

210:                                              ; preds = %192
  %211 = load i32, i32* %10, align 4
  store i32 %211, i32* %3, align 4
  br label %213

212:                                              ; preds = %192
  store i32 1, i32* %3, align 4
  br label %213

213:                                              ; preds = %212, %210
  %214 = load i32, i32* %3, align 4
  ret i32 %214
}

declare dso_local i32 @memset(%struct.eth_rss_update_ramrod_data*, i32, i32) #1

declare dso_local i32 @DP(i32, i8*, ...) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @netif_msg_ifup(%struct.bnx2x*) #1

declare dso_local i32 @bnx2x_debug_print_ind_table(%struct.bnx2x*, %struct.bnx2x_config_rss_params*) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
