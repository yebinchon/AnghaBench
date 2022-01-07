; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_ofld1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_cnic.c_cnic_bnx2x_fcoe_ofld1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cnic_dev = type { i32, i32, %struct.cnic_local* }
%struct.cnic_local = type { %struct.cnic_context* }
%struct.cnic_context = type { i32, i32 }
%struct.kwqe = type { i32 }
%struct.fcoe_kwqe_conn_offload1 = type { i32 }
%struct.fcoe_kwqe_conn_offload2 = type { i32 }
%struct.fcoe_kwqe_conn_offload3 = type { i32 }
%struct.fcoe_kwqe_conn_offload4 = type { i32 }
%struct.fcoe_conn_offload_ramrod_params = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.fcoe_context = type { %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.regpair = type { i32 }
%union.l5cm_specific_data = type { i32 }
%struct.fcoe_kcqe = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.kcqe = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@BNX2X_FCOE_L5_CID_BASE = common dso_local global i64 0, align 8
@CTX_FL_OFFLD_START = common dso_local global i32 0, align 4
@CDU_REGION_NUMBER_XCM_AG = common dso_local global i32 0, align 4
@FCOE_CONNECTION_TYPE = common dso_local global i32 0, align 4
@CDU_REGION_NUMBER_UCM_AG = common dso_local global i32 0, align 4
@CNIC_KWQ16_DATA_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"fcoe_offload size too big\0A\00", align 1
@FCOE_RAMROD_CMD_ID_OFFLOAD_CONN = common dso_local global i32 0, align 4
@FCOE_KCQE_OPCODE_OFFLOAD_CONN = common dso_local global i32 0, align 4
@FCOE_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE = common dso_local global i32 0, align 4
@CNIC_ULP_FCOE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cnic_dev*, %struct.kwqe**, i32, i32*)* @cnic_bnx2x_fcoe_ofld1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cnic_bnx2x_fcoe_ofld1(%struct.cnic_dev* %0, %struct.kwqe** %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.cnic_dev*, align 8
  %7 = alloca %struct.kwqe**, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cnic_local*, align 8
  %14 = alloca %struct.fcoe_kwqe_conn_offload1*, align 8
  %15 = alloca %struct.fcoe_kwqe_conn_offload2*, align 8
  %16 = alloca %struct.fcoe_kwqe_conn_offload3*, align 8
  %17 = alloca %struct.fcoe_kwqe_conn_offload4*, align 8
  %18 = alloca %struct.fcoe_conn_offload_ramrod_params*, align 8
  %19 = alloca %struct.cnic_context*, align 8
  %20 = alloca %struct.fcoe_context*, align 8
  %21 = alloca %struct.regpair, align 4
  %22 = alloca %union.l5cm_specific_data, align 4
  %23 = alloca %struct.fcoe_kcqe, align 4
  %24 = alloca [1 x %struct.kcqe*], align 8
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  store %struct.cnic_dev* %0, %struct.cnic_dev** %6, align 8
  store %struct.kwqe** %1, %struct.kwqe*** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 -1, i32* %11, align 4
  %27 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %28 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %27, i32 0, i32 2
  %29 = load %struct.cnic_local*, %struct.cnic_local** %28, align 8
  store %struct.cnic_local* %29, %struct.cnic_local** %13, align 8
  %30 = load i32, i32* %8, align 4
  %31 = icmp slt i32 %30, 4
  br i1 %31, label %32, label %37

32:                                               ; preds = %4
  %33 = load i32, i32* %8, align 4
  %34 = load i32*, i32** %9, align 8
  store i32 %33, i32* %34, align 4
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %199

37:                                               ; preds = %4
  %38 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %39 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %38, i64 0
  %40 = load %struct.kwqe*, %struct.kwqe** %39, align 8
  %41 = bitcast %struct.kwqe* %40 to %struct.fcoe_kwqe_conn_offload1*
  store %struct.fcoe_kwqe_conn_offload1* %41, %struct.fcoe_kwqe_conn_offload1** %14, align 8
  %42 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %43 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %42, i64 1
  %44 = load %struct.kwqe*, %struct.kwqe** %43, align 8
  %45 = bitcast %struct.kwqe* %44 to %struct.fcoe_kwqe_conn_offload2*
  store %struct.fcoe_kwqe_conn_offload2* %45, %struct.fcoe_kwqe_conn_offload2** %15, align 8
  %46 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %47 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %46, i64 2
  %48 = load %struct.kwqe*, %struct.kwqe** %47, align 8
  %49 = bitcast %struct.kwqe* %48 to %struct.fcoe_kwqe_conn_offload3*
  store %struct.fcoe_kwqe_conn_offload3* %49, %struct.fcoe_kwqe_conn_offload3** %16, align 8
  %50 = load %struct.kwqe**, %struct.kwqe*** %7, align 8
  %51 = getelementptr inbounds %struct.kwqe*, %struct.kwqe** %50, i64 3
  %52 = load %struct.kwqe*, %struct.kwqe** %51, align 8
  %53 = bitcast %struct.kwqe* %52 to %struct.fcoe_kwqe_conn_offload4*
  store %struct.fcoe_kwqe_conn_offload4* %53, %struct.fcoe_kwqe_conn_offload4** %17, align 8
  %54 = load i32*, i32** %9, align 8
  store i32 4, i32* %54, align 4
  %55 = load %struct.fcoe_kwqe_conn_offload1*, %struct.fcoe_kwqe_conn_offload1** %14, align 8
  %56 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, %struct.fcoe_kwqe_conn_offload1* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  store i32 %57, i32* %12, align 4
  %58 = load i32, i32* %12, align 4
  %59 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %60 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp sge i32 %58, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %37
  br label %175

64:                                               ; preds = %37
  %65 = load i64, i64* @BNX2X_FCOE_L5_CID_BASE, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = add nsw i64 %67, %65
  %69 = trunc i64 %68 to i32
  store i32 %69, i32* %12, align 4
  %70 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  %71 = getelementptr inbounds %struct.cnic_local, %struct.cnic_local* %70, i32 0, i32 0
  %72 = load %struct.cnic_context*, %struct.cnic_context** %71, align 8
  %73 = load i32, i32* %12, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %72, i64 %74
  store %struct.cnic_context* %75, %struct.cnic_context** %19, align 8
  %76 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %77 = load %struct.cnic_context*, %struct.cnic_context** %19, align 8
  %78 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %77, i32 0, i32 1
  %79 = call i64 @test_bit(i32 %76, i32* %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %64
  br label %175

82:                                               ; preds = %64
  %83 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev* %83, i32 %84)
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  store i32 0, i32* %10, align 4
  br label %175

89:                                               ; preds = %82
  %90 = load %struct.cnic_context*, %struct.cnic_context** %19, align 8
  %91 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  store i32 %92, i32* %11, align 4
  %93 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %94 = load i32, i32* %11, align 4
  %95 = call %struct.fcoe_context* @cnic_get_bnx2x_ctx(%struct.cnic_dev* %93, i32 %94, i32 1, %struct.regpair* %21)
  store %struct.fcoe_context* %95, %struct.fcoe_context** %20, align 8
  %96 = load %struct.fcoe_context*, %struct.fcoe_context** %20, align 8
  %97 = icmp ne %struct.fcoe_context* %96, null
  br i1 %97, label %98, label %118

98:                                               ; preds = %89
  %99 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  %100 = load i32, i32* %11, align 4
  %101 = call i32 @BNX2X_HW_CID(%struct.cnic_local* %99, i32 %100)
  store i32 %101, i32* %25, align 4
  %102 = load i32, i32* %25, align 4
  %103 = load i32, i32* @CDU_REGION_NUMBER_XCM_AG, align 4
  %104 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %105 = call i32 @CDU_RSRVD_VALUE_TYPE_A(i32 %102, i32 %103, i32 %104)
  store i32 %105, i32* %26, align 4
  %106 = load i32, i32* %26, align 4
  %107 = load %struct.fcoe_context*, %struct.fcoe_context** %20, align 8
  %108 = getelementptr inbounds %struct.fcoe_context, %struct.fcoe_context* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %108, i32 0, i32 0
  store i32 %106, i32* %109, align 4
  %110 = load i32, i32* %25, align 4
  %111 = load i32, i32* @CDU_REGION_NUMBER_UCM_AG, align 4
  %112 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %113 = call i32 @CDU_RSRVD_VALUE_TYPE_A(i32 %110, i32 %111, i32 %112)
  store i32 %113, i32* %26, align 4
  %114 = load i32, i32* %26, align 4
  %115 = load %struct.fcoe_context*, %struct.fcoe_context** %20, align 8
  %116 = getelementptr inbounds %struct.fcoe_context, %struct.fcoe_context* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 0
  store i32 %114, i32* %117, align 4
  br label %118

118:                                              ; preds = %98, %89
  %119 = load i32, i32* @CNIC_KWQ16_DATA_SIZE, align 4
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 28, %120
  br i1 %121, label %122, label %127

122:                                              ; preds = %118
  %123 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %124 = getelementptr inbounds %struct.cnic_dev, %struct.cnic_dev* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @netdev_err(i32 %125, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %175

127:                                              ; preds = %118
  %128 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  %129 = load i32, i32* %12, align 4
  %130 = call %struct.fcoe_kcqe* @cnic_get_kwqe_16_data(%struct.cnic_local* %128, i32 %129, %union.l5cm_specific_data* %22)
  %131 = bitcast %struct.fcoe_kcqe* %130 to %struct.fcoe_conn_offload_ramrod_params*
  store %struct.fcoe_conn_offload_ramrod_params* %131, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %132 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %133 = icmp ne %struct.fcoe_conn_offload_ramrod_params* %132, null
  br i1 %133, label %135, label %134

134:                                              ; preds = %127
  br label %175

135:                                              ; preds = %127
  %136 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %137 = bitcast %struct.fcoe_conn_offload_ramrod_params* %136 to %struct.fcoe_kcqe*
  %138 = call i32 @memset(%struct.fcoe_kcqe* %137, i32 0, i32 28)
  %139 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %140 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %139, i32 0, i32 6
  %141 = load %struct.fcoe_kwqe_conn_offload1*, %struct.fcoe_kwqe_conn_offload1** %14, align 8
  %142 = bitcast %struct.fcoe_kwqe_conn_offload1* %141 to %struct.fcoe_kwqe_conn_offload4*
  %143 = call i32 @memcpy(i32* %140, %struct.fcoe_kwqe_conn_offload4* %142, i32 4)
  %144 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %145 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %144, i32 0, i32 5
  %146 = load %struct.fcoe_kwqe_conn_offload2*, %struct.fcoe_kwqe_conn_offload2** %15, align 8
  %147 = bitcast %struct.fcoe_kwqe_conn_offload2* %146 to %struct.fcoe_kwqe_conn_offload4*
  %148 = call i32 @memcpy(i32* %145, %struct.fcoe_kwqe_conn_offload4* %147, i32 4)
  %149 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %150 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %149, i32 0, i32 4
  %151 = load %struct.fcoe_kwqe_conn_offload3*, %struct.fcoe_kwqe_conn_offload3** %16, align 8
  %152 = bitcast %struct.fcoe_kwqe_conn_offload3* %151 to %struct.fcoe_kwqe_conn_offload4*
  %153 = call i32 @memcpy(i32* %150, %struct.fcoe_kwqe_conn_offload4* %152, i32 4)
  %154 = load %struct.fcoe_conn_offload_ramrod_params*, %struct.fcoe_conn_offload_ramrod_params** %18, align 8
  %155 = getelementptr inbounds %struct.fcoe_conn_offload_ramrod_params, %struct.fcoe_conn_offload_ramrod_params* %154, i32 0, i32 3
  %156 = load %struct.fcoe_kwqe_conn_offload4*, %struct.fcoe_kwqe_conn_offload4** %17, align 8
  %157 = call i32 @memcpy(i32* %155, %struct.fcoe_kwqe_conn_offload4* %156, i32 4)
  %158 = load %struct.cnic_local*, %struct.cnic_local** %13, align 8
  %159 = load i32, i32* %11, align 4
  %160 = call i32 @BNX2X_HW_CID(%struct.cnic_local* %158, i32 %159)
  store i32 %160, i32* %11, align 4
  %161 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %162 = load i32, i32* @FCOE_RAMROD_CMD_ID_OFFLOAD_CONN, align 4
  %163 = load i32, i32* %11, align 4
  %164 = load i32, i32* @FCOE_CONNECTION_TYPE, align 4
  %165 = call i32 @cnic_submit_kwqe_16(%struct.cnic_dev* %161, i32 %162, i32 %163, i32 %164, %union.l5cm_specific_data* %22)
  store i32 %165, i32* %10, align 4
  %166 = load i32, i32* %10, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %173, label %168

168:                                              ; preds = %135
  %169 = load i32, i32* @CTX_FL_OFFLD_START, align 4
  %170 = load %struct.cnic_context*, %struct.cnic_context** %19, align 8
  %171 = getelementptr inbounds %struct.cnic_context, %struct.cnic_context* %170, i32 0, i32 1
  %172 = call i32 @set_bit(i32 %169, i32* %171)
  br label %173

173:                                              ; preds = %168, %135
  %174 = load i32, i32* %10, align 4
  store i32 %174, i32* %5, align 4
  br label %199

175:                                              ; preds = %134, %122, %88, %81, %63
  %176 = load i32, i32* %11, align 4
  %177 = icmp ne i32 %176, -1
  br i1 %177, label %178, label %182

178:                                              ; preds = %175
  %179 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %180 = load i32, i32* %12, align 4
  %181 = call i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev* %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %175
  %183 = call i32 @memset(%struct.fcoe_kcqe* %23, i32 0, i32 28)
  %184 = load i32, i32* @FCOE_KCQE_OPCODE_OFFLOAD_CONN, align 4
  %185 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %23, i32 0, i32 2
  store i32 %184, i32* %185, align 4
  %186 = load %struct.fcoe_kwqe_conn_offload1*, %struct.fcoe_kwqe_conn_offload1** %14, align 8
  %187 = getelementptr inbounds %struct.fcoe_kwqe_conn_offload1, %struct.fcoe_kwqe_conn_offload1* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 4
  %189 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %23, i32 0, i32 0
  store i32 %188, i32* %189, align 4
  %190 = load i32, i32* @FCOE_KCQE_COMPLETION_STATUS_CTX_ALLOC_FAILURE, align 4
  %191 = getelementptr inbounds %struct.fcoe_kcqe, %struct.fcoe_kcqe* %23, i32 0, i32 1
  store i32 %190, i32* %191, align 4
  %192 = bitcast %struct.fcoe_kcqe* %23 to %struct.kcqe*
  %193 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %24, i64 0, i64 0
  store %struct.kcqe* %192, %struct.kcqe** %193, align 8
  %194 = load %struct.cnic_dev*, %struct.cnic_dev** %6, align 8
  %195 = load i32, i32* @CNIC_ULP_FCOE, align 4
  %196 = getelementptr inbounds [1 x %struct.kcqe*], [1 x %struct.kcqe*]* %24, i64 0, i64 0
  %197 = call i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev* %194, i32 %195, %struct.kcqe** %196, i32 1)
  %198 = load i32, i32* %10, align 4
  store i32 %198, i32* %5, align 4
  br label %199

199:                                              ; preds = %182, %173, %32
  %200 = load i32, i32* %5, align 4
  ret i32 %200
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @cnic_alloc_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local %struct.fcoe_context* @cnic_get_bnx2x_ctx(%struct.cnic_dev*, i32, i32, %struct.regpair*) #1

declare dso_local i32 @BNX2X_HW_CID(%struct.cnic_local*, i32) #1

declare dso_local i32 @CDU_RSRVD_VALUE_TYPE_A(i32, i32, i32) #1

declare dso_local i32 @netdev_err(i32, i8*) #1

declare dso_local %struct.fcoe_kcqe* @cnic_get_kwqe_16_data(%struct.cnic_local*, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @memset(%struct.fcoe_kcqe*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, %struct.fcoe_kwqe_conn_offload4*, i32) #1

declare dso_local i32 @cnic_submit_kwqe_16(%struct.cnic_dev*, i32, i32, i32, %union.l5cm_specific_data*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @cnic_free_bnx2x_conn_resc(%struct.cnic_dev*, i32) #1

declare dso_local i32 @cnic_reply_bnx2x_kcqes(%struct.cnic_dev*, i32, %struct.kcqe**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
