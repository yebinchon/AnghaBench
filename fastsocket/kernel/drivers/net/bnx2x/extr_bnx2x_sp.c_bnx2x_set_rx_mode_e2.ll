; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_set_rx_mode_e2.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_set_rx_mode_e2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_rx_mode_ramrod_params = type { i32, i32, i32, i32, i32, i32, i32, i8*, %struct.eth_filter_rules_ramrod_data* }
%struct.eth_filter_rules_ramrod_data = type { %struct.TYPE_3__, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i8*, i32, i8* }

@RAMROD_TX = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_TX_CMD = common dso_local global i8* null, align 8
@RAMROD_RX = common dso_local global i32 0, align 4
@ETH_FILTER_RULES_CMD_RX_CMD = common dso_local global i8* null, align 8
@BNX2X_RX_MODE_FCOE_ETH = common dso_local global i32 0, align 4
@cl_id = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [75 x i8] c"About to configure %d rules, rx_accept_flags 0x%lx, tx_accept_flags 0x%lx\0A\00", align 1
@RAMROD_CMD_ID_ETH_FILTER_RULES = common dso_local global i32 0, align 4
@ETH_CONNECTION_TYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, %struct.bnx2x_rx_mode_ramrod_params*)* @bnx2x_set_rx_mode_e2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_set_rx_mode_e2(%struct.bnx2x* %0, %struct.bnx2x_rx_mode_ramrod_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca %struct.bnx2x_rx_mode_ramrod_params*, align 8
  %6 = alloca %struct.eth_filter_rules_ramrod_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store %struct.bnx2x_rx_mode_ramrod_params* %1, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %9 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %10 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %9, i32 0, i32 8
  %11 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %10, align 8
  store %struct.eth_filter_rules_ramrod_data* %11, %struct.eth_filter_rules_ramrod_data** %6, align 8
  store i64 0, i64* %8, align 8
  %12 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %13 = call i32 @memset(%struct.eth_filter_rules_ramrod_data* %12, i32 0, i32 16)
  %14 = load i32, i32* @RAMROD_TX, align 4
  %15 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %16 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %15, i32 0, i32 5
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %55

19:                                               ; preds = %2
  %20 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %21 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %20, i32 0, i32 7
  %22 = load i8*, i8** %21, align 8
  %23 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %24 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %23, i32 0, i32 1
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = load i64, i64* %8, align 8
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 2
  store i8* %22, i8** %28, align 8
  %29 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %30 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %33 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = load i64, i64* %8, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  store i32 %31, i32* %37, align 8
  %38 = load i8*, i8** @ETH_FILTER_RULES_CMD_TX_CMD, align 8
  %39 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %40 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %39, i32 0, i32 1
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = load i64, i64* %8, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i64 %42
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  store i8* %38, i8** %44, align 8
  %45 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %46 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %47 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %46, i32 0, i32 2
  %48 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %49 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %48, i32 0, i32 1
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = load i64, i64* %8, align 8
  %52 = add i64 %51, 1
  store i64 %52, i64* %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  %54 = call i32 @bnx2x_rx_mode_set_cmd_state_e2(%struct.bnx2x* %45, i32* %47, %struct.TYPE_4__* %53, i32 0)
  br label %55

55:                                               ; preds = %19, %2
  %56 = load i32, i32* @RAMROD_RX, align 4
  %57 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %58 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %57, i32 0, i32 5
  %59 = call i64 @test_bit(i32 %56, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %97

61:                                               ; preds = %55
  %62 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %63 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %62, i32 0, i32 7
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %66 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %65, i32 0, i32 1
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = load i64, i64* %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 2
  store i8* %64, i8** %70, align 8
  %71 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %72 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %75 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %74, i32 0, i32 1
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i64, i64* %8, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 1
  store i32 %73, i32* %79, align 8
  %80 = load i8*, i8** @ETH_FILTER_RULES_CMD_RX_CMD, align 8
  %81 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %82 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %81, i32 0, i32 1
  %83 = load %struct.TYPE_4__*, %struct.TYPE_4__** %82, align 8
  %84 = load i64, i64* %8, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i32 0, i32 0
  store i8* %80, i8** %86, align 8
  %87 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %88 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %89 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %88, i32 0, i32 3
  %90 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %91 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %90, i32 0, i32 1
  %92 = load %struct.TYPE_4__*, %struct.TYPE_4__** %91, align 8
  %93 = load i64, i64* %8, align 8
  %94 = add i64 %93, 1
  store i64 %94, i64* %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i64 %93
  %96 = call i32 @bnx2x_rx_mode_set_cmd_state_e2(%struct.bnx2x* %87, i32* %89, %struct.TYPE_4__* %95, i32 0)
  br label %97

97:                                               ; preds = %61, %55
  %98 = load i32, i32* @BNX2X_RX_MODE_FCOE_ETH, align 4
  %99 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %100 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %99, i32 0, i32 6
  %101 = call i64 @test_bit(i32 %98, i32* %100)
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %190

103:                                              ; preds = %97
  %104 = load i32, i32* @RAMROD_TX, align 4
  %105 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %106 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %105, i32 0, i32 5
  %107 = call i64 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %146

109:                                              ; preds = %103
  %110 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %111 = load i32, i32* @cl_id, align 4
  %112 = call i8* @bnx2x_fcoe(%struct.bnx2x* %110, i32 %111)
  %113 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %114 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %114, align 8
  %116 = load i64, i64* %8, align 8
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 2
  store i8* %112, i8** %118, align 8
  %119 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %120 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %119, i32 0, i32 4
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %123 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %122, i32 0, i32 1
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %123, align 8
  %125 = load i64, i64* %8, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 1
  store i32 %121, i32* %127, align 8
  %128 = load i8*, i8** @ETH_FILTER_RULES_CMD_TX_CMD, align 8
  %129 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %130 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %129, i32 0, i32 1
  %131 = load %struct.TYPE_4__*, %struct.TYPE_4__** %130, align 8
  %132 = load i64, i64* %8, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %131, i64 %132
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i8* %128, i8** %134, align 8
  %135 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %136 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %137 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %136, i32 0, i32 2
  %138 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %139 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %138, i32 0, i32 1
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %139, align 8
  %141 = load i64, i64* %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i64 %141
  %143 = call i32 @bnx2x_rx_mode_set_cmd_state_e2(%struct.bnx2x* %135, i32* %137, %struct.TYPE_4__* %142, i32 1)
  %144 = load i64, i64* %8, align 8
  %145 = add i64 %144, 1
  store i64 %145, i64* %8, align 8
  br label %146

146:                                              ; preds = %109, %103
  %147 = load i32, i32* @RAMROD_RX, align 4
  %148 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %149 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %148, i32 0, i32 5
  %150 = call i64 @test_bit(i32 %147, i32* %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %189

152:                                              ; preds = %146
  %153 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %154 = load i32, i32* @cl_id, align 4
  %155 = call i8* @bnx2x_fcoe(%struct.bnx2x* %153, i32 %154)
  %156 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %157 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %156, i32 0, i32 1
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = load i64, i64* %8, align 8
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i64 %159
  %161 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %160, i32 0, i32 2
  store i8* %155, i8** %161, align 8
  %162 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %163 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %162, i32 0, i32 4
  %164 = load i32, i32* %163, align 8
  %165 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %166 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %165, i32 0, i32 1
  %167 = load %struct.TYPE_4__*, %struct.TYPE_4__** %166, align 8
  %168 = load i64, i64* %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %167, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %169, i32 0, i32 1
  store i32 %164, i32* %170, align 8
  %171 = load i8*, i8** @ETH_FILTER_RULES_CMD_RX_CMD, align 8
  %172 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %173 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %172, i32 0, i32 1
  %174 = load %struct.TYPE_4__*, %struct.TYPE_4__** %173, align 8
  %175 = load i64, i64* %8, align 8
  %176 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %176, i32 0, i32 0
  store i8* %171, i8** %177, align 8
  %178 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %179 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %180 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %179, i32 0, i32 3
  %181 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %182 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %181, i32 0, i32 1
  %183 = load %struct.TYPE_4__*, %struct.TYPE_4__** %182, align 8
  %184 = load i64, i64* %8, align 8
  %185 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %183, i64 %184
  %186 = call i32 @bnx2x_rx_mode_set_cmd_state_e2(%struct.bnx2x* %178, i32* %180, %struct.TYPE_4__* %185, i32 1)
  %187 = load i64, i64* %8, align 8
  %188 = add i64 %187, 1
  store i64 %188, i64* %8, align 8
  br label %189

189:                                              ; preds = %152, %146
  br label %190

190:                                              ; preds = %189, %97
  %191 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %192 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %195 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %194, i32 0, i32 0
  %196 = load i64, i64* %8, align 8
  %197 = call i32 @bnx2x_rx_mode_set_rdata_hdr_e2(i32 %193, %struct.TYPE_3__* %195, i64 %196)
  %198 = load i32, i32* @BNX2X_MSG_SP, align 4
  %199 = load %struct.eth_filter_rules_ramrod_data*, %struct.eth_filter_rules_ramrod_data** %6, align 8
  %200 = getelementptr inbounds %struct.eth_filter_rules_ramrod_data, %struct.eth_filter_rules_ramrod_data* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %204 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %203, i32 0, i32 3
  %205 = load i32, i32* %204, align 4
  %206 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %207 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %206, i32 0, i32 2
  %208 = load i32, i32* %207, align 8
  %209 = call i32 @DP(i32 %198, i8* getelementptr inbounds ([75 x i8], [75 x i8]* @.str, i64 0, i64 0), i32 %202, i32 %205, i32 %208)
  %210 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %211 = load i32, i32* @RAMROD_CMD_ID_ETH_FILTER_RULES, align 4
  %212 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %213 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %216 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @U64_HI(i32 %217)
  %219 = load %struct.bnx2x_rx_mode_ramrod_params*, %struct.bnx2x_rx_mode_ramrod_params** %5, align 8
  %220 = getelementptr inbounds %struct.bnx2x_rx_mode_ramrod_params, %struct.bnx2x_rx_mode_ramrod_params* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i32 @U64_LO(i32 %221)
  %223 = load i32, i32* @ETH_CONNECTION_TYPE, align 4
  %224 = call i32 @bnx2x_sp_post(%struct.bnx2x* %210, i32 %211, i32 %214, i32 %218, i32 %222, i32 %223)
  store i32 %224, i32* %7, align 4
  %225 = load i32, i32* %7, align 4
  %226 = icmp ne i32 %225, 0
  br i1 %226, label %227, label %229

227:                                              ; preds = %190
  %228 = load i32, i32* %7, align 4
  store i32 %228, i32* %3, align 4
  br label %230

229:                                              ; preds = %190
  store i32 1, i32* %3, align 4
  br label %230

230:                                              ; preds = %229, %227
  %231 = load i32, i32* %3, align 4
  ret i32 %231
}

declare dso_local i32 @memset(%struct.eth_filter_rules_ramrod_data*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @bnx2x_rx_mode_set_cmd_state_e2(%struct.bnx2x*, i32*, %struct.TYPE_4__*, i32) #1

declare dso_local i8* @bnx2x_fcoe(%struct.bnx2x*, i32) #1

declare dso_local i32 @bnx2x_rx_mode_set_rdata_hdr_e2(i32, %struct.TYPE_3__*, i64) #1

declare dso_local i32 @DP(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_sp_post(%struct.bnx2x*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @U64_HI(i32) #1

declare dso_local i32 @U64_LO(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
