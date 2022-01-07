; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_create_tx_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_83xx_hw.c_qlcnic_83xx_create_tx_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { i32, i32, %struct.TYPE_8__*, %struct.qlcnic_hardware_context* }
%struct.TYPE_8__ = type { i32 }
%struct.qlcnic_hardware_context = type { i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, i64 }
%struct.qlcnic_host_tx_ring = type { i64, i64, i32, i32, i32, i32, i64*, i64, i64 }
%struct.qlcnic_cmd_args = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32* }
%struct.TYPE_5__ = type { i32* }
%struct.qlcnic_tx_mbx = type { i32, i64, i32, i8*, i8*, i8*, i8* }
%struct.qlcnic_tx_mbx_out = type { i64, i32, i32 }

@QLCNIC_MSIX_ENABLED = common dso_local global i32 0, align 4
@QLCNIC_TX_INTR_SHARED = common dso_local global i32 0, align 4
@QLCNIC_DEF_INT_ID = common dso_local global i32 0, align 4
@QLCNIC_LOOPBACK_TEST = common dso_local global i64 0, align 8
@QLCNIC_CMD_CREATE_TX_CTX = common dso_local global i32 0, align 4
@QLCNIC_CAP0_LEGACY_CONTEXT = common dso_local global i32 0, align 4
@QLCNIC_MAX_TX_QUEUES = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Failed to create Tx ctx in firmware 0x%x\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Tx Context[0x%x] Created, state:0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qlcnic_83xx_create_tx_ctx(%struct.qlcnic_adapter* %0, %struct.qlcnic_host_tx_ring* %1, i32 %2) #0 {
  %4 = alloca %struct.qlcnic_adapter*, align 8
  %5 = alloca %struct.qlcnic_host_tx_ring*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.qlcnic_cmd_args, align 8
  %13 = alloca %struct.qlcnic_tx_mbx, align 8
  %14 = alloca %struct.qlcnic_tx_mbx_out*, align 8
  %15 = alloca %struct.qlcnic_hardware_context*, align 8
  %16 = alloca i64, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %4, align 8
  store %struct.qlcnic_host_tx_ring* %1, %struct.qlcnic_host_tx_ring** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %11, align 8
  %17 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %18 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %17, i32 0, i32 3
  %19 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %18, align 8
  store %struct.qlcnic_hardware_context* %19, %struct.qlcnic_hardware_context** %15, align 8
  %20 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %21 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %20, i32 0, i32 8
  store i64 0, i64* %21, align 8
  %22 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %23 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %22, i32 0, i32 7
  store i64 0, i64* %23, align 8
  %24 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %25 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %24, i32 0, i32 6
  %26 = load i64*, i64** %25, align 8
  store i64 0, i64* %26, align 8
  %27 = call i32 @memset(%struct.qlcnic_tx_mbx* %13, i32 0, i32 56)
  %28 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %29 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %28, i32 0, i32 5
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @LSD(i32 %30)
  %32 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 6
  store i8* %31, i8** %32, align 8
  %33 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %34 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @MSD(i32 %35)
  %37 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %39 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i8* @LSD(i32 %40)
  %42 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 4
  store i8* %41, i8** %42, align 8
  %43 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %44 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i8* @MSD(i32 %45)
  %47 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 3
  store i8* %46, i8** %47, align 8
  %48 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %49 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 2
  store i32 %50, i32* %51, align 8
  %52 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %53 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %86

58:                                               ; preds = %3
  %59 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %60 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %72, label %65

65:                                               ; preds = %58
  %66 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %67 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %6, align 4
  %70 = add nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  store i64 %71, i64* %16, align 8
  br label %78

72:                                               ; preds = %58
  %73 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %74 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  store i64 %77, i64* %16, align 8
  br label %78

78:                                               ; preds = %72, %65
  %79 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  %80 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %79, i32 0, i32 2
  %81 = load %struct.TYPE_7__*, %struct.TYPE_7__** %80, align 8
  %82 = load i64, i64* %16, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  store i32 %85, i32* %8, align 4
  br label %90

86:                                               ; preds = %3
  %87 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  %88 = load i32, i32* @QLCNIC_DEF_INT_ID, align 4
  %89 = call i32 @QLCRDX(%struct.qlcnic_hardware_context* %87, i32 %88)
  store i32 %89, i32* %8, align 4
  br label %90

90:                                               ; preds = %86, %78
  %91 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %92 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %91, i32 0, i32 3
  %93 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %92, align 8
  %94 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* @QLCNIC_LOOPBACK_TEST, align 8
  %97 = icmp ne i64 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %90
  %99 = load i32, i32* %8, align 4
  %100 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 0
  store i32 %99, i32* %100, align 8
  br label %103

101:                                              ; preds = %90
  %102 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 0
  store i32 65535, i32* %102, align 8
  br label %103

103:                                              ; preds = %101, %98
  %104 = getelementptr inbounds %struct.qlcnic_tx_mbx, %struct.qlcnic_tx_mbx* %13, i32 0, i32 1
  store i64 0, i64* %104, align 8
  %105 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %106 = load i32, i32* @QLCNIC_CMD_CREATE_TX_CTX, align 4
  %107 = call i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args* %12, %struct.qlcnic_adapter* %105, i32 %106)
  %108 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %109 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %108)
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %113 = call i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %122

115:                                              ; preds = %111, %103
  %116 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = or i32 %120, 1610612736
  store i32 %121, i32* %119, align 4
  br label %122

122:                                              ; preds = %115, %111
  %123 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %124 = call i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %129

126:                                              ; preds = %122
  %127 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %128 = call i32 @qlcnic_pf_set_interface_id_create_tx_ctx(%struct.qlcnic_adapter* %127, i64* %11)
  br label %129

129:                                              ; preds = %126, %122
  %130 = load i32, i32* @QLCNIC_CAP0_LEGACY_CONTEXT, align 4
  %131 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 1
  %132 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %131, i32 0, i32 0
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 %130, i32* %134, align 4
  %135 = load i64, i64* @QLCNIC_MAX_TX_QUEUES, align 8
  %136 = load i64, i64* %11, align 8
  %137 = or i64 %135, %136
  %138 = trunc i64 %137 to i32
  %139 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = getelementptr inbounds i32, i32* %141, i64 5
  store i32 %138, i32* %142, align 4
  %143 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 6
  %147 = bitcast i32* %146 to i64*
  store i64* %147, i64** %9, align 8
  %148 = load i64*, i64** %9, align 8
  %149 = call i32 @memcpy(i64* %148, %struct.qlcnic_tx_mbx* %13, i32 56)
  %150 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %151 = call i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter* %150, %struct.qlcnic_cmd_args* %12)
  store i32 %151, i32* %7, align 4
  %152 = load i32, i32* %7, align 4
  %153 = icmp ne i32 %152, 0
  br i1 %153, label %154, label %161

154:                                              ; preds = %129
  %155 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %156 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %155, i32 0, i32 2
  %157 = load %struct.TYPE_8__*, %struct.TYPE_8__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %157, i32 0, i32 0
  %159 = load i32, i32* %7, align 4
  %160 = call i32 @dev_err(i32* %158, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %159)
  br label %226

161:                                              ; preds = %129
  %162 = getelementptr inbounds %struct.qlcnic_cmd_args, %struct.qlcnic_cmd_args* %12, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = getelementptr inbounds i32, i32* %164, i64 2
  %166 = bitcast i32* %165 to %struct.qlcnic_tx_mbx_out*
  store %struct.qlcnic_tx_mbx_out* %166, %struct.qlcnic_tx_mbx_out** %14, align 8
  %167 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  %168 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.qlcnic_tx_mbx_out*, %struct.qlcnic_tx_mbx_out** %14, align 8
  %171 = getelementptr inbounds %struct.qlcnic_tx_mbx_out, %struct.qlcnic_tx_mbx_out* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = add i64 %169, %172
  %174 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %175 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %174, i32 0, i32 0
  store i64 %173, i64* %175, align 8
  %176 = load %struct.qlcnic_tx_mbx_out*, %struct.qlcnic_tx_mbx_out** %14, align 8
  %177 = getelementptr inbounds %struct.qlcnic_tx_mbx_out, %struct.qlcnic_tx_mbx_out* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 4
  %179 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %180 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %179, i32 0, i32 2
  store i32 %178, i32* %180, align 8
  %181 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %182 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 8
  %184 = load i32, i32* @QLCNIC_MSIX_ENABLED, align 4
  %185 = and i32 %183, %184
  %186 = icmp ne i32 %185, 0
  br i1 %186, label %187, label %214

187:                                              ; preds = %161
  %188 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %189 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 8
  %191 = load i32, i32* @QLCNIC_TX_INTR_SHARED, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %214, label %194

194:                                              ; preds = %187
  %195 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  %196 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %195, i32 0, i32 2
  %197 = load %struct.TYPE_7__*, %struct.TYPE_7__** %196, align 8
  %198 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %199 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = load i32, i32* %6, align 4
  %202 = add nsw i32 %200, %201
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %204, i32 0, i32 1
  %206 = load i64, i64* %205, align 8
  store i64 %206, i64* %10, align 8
  %207 = load %struct.qlcnic_hardware_context*, %struct.qlcnic_hardware_context** %15, align 8
  %208 = getelementptr inbounds %struct.qlcnic_hardware_context, %struct.qlcnic_hardware_context* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = load i64, i64* %10, align 8
  %211 = add i64 %209, %210
  %212 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %213 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %212, i32 0, i32 1
  store i64 %211, i64* %213, align 8
  br label %214

214:                                              ; preds = %194, %187, %161
  %215 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %4, align 8
  %216 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %215, i32 0, i32 2
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %216, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 0
  %219 = load %struct.qlcnic_host_tx_ring*, %struct.qlcnic_host_tx_ring** %5, align 8
  %220 = getelementptr inbounds %struct.qlcnic_host_tx_ring, %struct.qlcnic_host_tx_ring* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.qlcnic_tx_mbx_out*, %struct.qlcnic_tx_mbx_out** %14, align 8
  %223 = getelementptr inbounds %struct.qlcnic_tx_mbx_out, %struct.qlcnic_tx_mbx_out* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @dev_info(i32* %218, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %221, i32 %224)
  br label %226

226:                                              ; preds = %214, %154
  %227 = call i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args* %12)
  %228 = load i32, i32* %7, align 4
  ret i32 %228
}

declare dso_local i32 @memset(%struct.qlcnic_tx_mbx*, i32, i32) #1

declare dso_local i8* @LSD(i32) #1

declare dso_local i8* @MSD(i32) #1

declare dso_local i32 @QLCRDX(%struct.qlcnic_hardware_context*, i32) #1

declare dso_local i32 @qlcnic_alloc_mbx_args(%struct.qlcnic_cmd_args*, %struct.qlcnic_adapter*, i32) #1

declare dso_local i64 @qlcnic_sriov_pf_check(%struct.qlcnic_adapter*) #1

declare dso_local i64 @qlcnic_sriov_vf_check(%struct.qlcnic_adapter*) #1

declare dso_local i32 @qlcnic_pf_set_interface_id_create_tx_ctx(%struct.qlcnic_adapter*, i64*) #1

declare dso_local i32 @memcpy(i64*, %struct.qlcnic_tx_mbx*, i32) #1

declare dso_local i32 @qlcnic_issue_cmd(%struct.qlcnic_adapter*, %struct.qlcnic_cmd_args*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

declare dso_local i32 @qlcnic_free_mbx_args(%struct.qlcnic_cmd_args*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
