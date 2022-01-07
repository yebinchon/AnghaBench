; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_acquire.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_acquire.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, i32, i32, %struct.TYPE_23__, %struct.TYPE_20__*, i32, i32, %struct.TYPE_33__, i64, i64, i32, %struct.TYPE_32__, %struct.TYPE_30__*, i32, i32 }
%struct.TYPE_23__ = type { %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_31__ }
%struct.TYPE_21__ = type { i32, %struct.pfvf_acquire_resp_tlv*, %struct.TYPE_18__*, i32, i32, i32, i8*, i8* }
%struct.pfvf_acquire_resp_tlv = type { %struct.TYPE_28__ }
%struct.TYPE_28__ = type { i32 }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_19__ = type { i32, i32, i32 }
%struct.TYPE_31__ = type { i64 }
%struct.TYPE_20__ = type { %struct.TYPE_23__* }
%struct.TYPE_33__ = type { i32, i64, i32, i32 }
%struct.TYPE_32__ = type { i32 }
%struct.TYPE_30__ = type { %struct.TYPE_22__, %struct.TYPE_25__ }
%struct.TYPE_22__ = type { %struct.pfvf_acquire_resp_tlv }
%struct.TYPE_25__ = type { %struct.vfpf_acquire_tlv }
%struct.vfpf_acquire_tlv = type { %struct.TYPE_24__, %struct.TYPE_29__, i32, %struct.TYPE_26__ }
%struct.TYPE_24__ = type { %struct.TYPE_27__ }
%struct.TYPE_27__ = type { i32 }
%struct.TYPE_29__ = type { i32, i32, i32, i32, i8*, i8* }
%struct.TYPE_26__ = type { i64, i32 }

@CHANNEL_TLV_ACQUIRE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@VF_ACQUIRE_MAC_FILTERS = common dso_local global i32 0, align 4
@VF_ACQUIRE_MC_FILTERS = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"attempting to acquire resources\0A\00", align 1
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [20 x i8] c"resources acquired\0A\00", align 1
@PFVF_STATUS_NO_RESOURCE = common dso_local global i64 0, align 8
@VF_ACQUIRE_THRESH = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [69 x i8] c"PF unwilling to fulfill resource request. Try PF recommended amount\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"Failed to get the requested amount of resources: %d. Breaking...\0A\00", align 1
@INT_BLOCK_IGU = common dso_local global i32 0, align 4
@CHIP_2_PORT_MODE = common dso_local global i32 0, align 4
@NO_WOL_FLAG = common dso_local global i32 0, align 4
@NO_ISCSI_OOO_FLAG = common dso_local global i32 0, align 4
@NO_ISCSI_FLAG = common dso_local global i32 0, align 4
@NO_FCOE_FLAG = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_acquire(%struct.bnx2x* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.bnx2x*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_acquire_tlv*, align 8
  %10 = alloca %struct.pfvf_acquire_resp_tlv*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 12
  %15 = load %struct.TYPE_30__*, %struct.TYPE_30__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %16, i32 0, i32 0
  store %struct.vfpf_acquire_tlv* %17, %struct.vfpf_acquire_tlv** %9, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 12
  %20 = load %struct.TYPE_30__*, %struct.TYPE_30__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %21, i32 0, i32 0
  store %struct.pfvf_acquire_resp_tlv* %22, %struct.pfvf_acquire_resp_tlv** %10, align 8
  store i32 0, i32* %12, align 4
  %23 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %24 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %25 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %24, i32 0, i32 0
  %26 = load i32, i32* @CHANNEL_TLV_ACQUIRE, align 4
  %27 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %23, %struct.TYPE_24__* %25, i32 %26, i32 64)
  %28 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %29 = call i64 @bnx2x_get_vf_id(%struct.bnx2x* %28, i32* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @EAGAIN, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %7, align 4
  br label %291

34:                                               ; preds = %3
  %35 = load i32, i32* %11, align 4
  %36 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %37 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %36, i32 0, i32 3
  %38 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %37, i32 0, i32 1
  store i32 %35, i32* %38, align 8
  %39 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %40 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %40, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %44 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %44, i32 0, i32 4
  store i8* %42, i8** %45, align 8
  %46 = load i8*, i8** %5, align 8
  %47 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %48 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %48, i32 0, i32 5
  store i8* %46, i8** %49, align 8
  %50 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %51 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %54 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 0
  store i32 %52, i32* %55, align 8
  %56 = load i32, i32* @VF_ACQUIRE_MAC_FILTERS, align 4
  %57 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %58 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %58, i32 0, i32 3
  store i32 %56, i32* %59, align 4
  %60 = load i32, i32* @VF_ACQUIRE_MC_FILTERS, align 4
  %61 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %62 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %62, i32 0, i32 1
  store i32 %60, i32* %63, align 4
  %64 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %65 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %64, i32 0, i32 14
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %68 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %67, i32 0, i32 2
  store i32 %66, i32* %68, align 8
  %69 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %70 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %71 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %72 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %77 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %69, %struct.vfpf_acquire_tlv* %70, i32 %75, i32 %76, i32 4)
  %78 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %79 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %80 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %78, %struct.vfpf_acquire_tlv* %79)
  br label %81

81:                                               ; preds = %194, %34
  %82 = load i32, i32* %12, align 4
  %83 = icmp ne i32 %82, 0
  %84 = xor i1 %83, true
  br i1 %84, label %85, label %195

85:                                               ; preds = %81
  %86 = load i32, i32* @BNX2X_MSG_SP, align 4
  %87 = call i32 @DP(i32 %86, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %88 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %89 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %90 = getelementptr inbounds %struct.pfvf_acquire_resp_tlv, %struct.pfvf_acquire_resp_tlv* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %90, i32 0, i32 0
  %92 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %93 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %92, i32 0, i32 13
  %94 = load i32, i32* %93, align 8
  %95 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %88, i32* %91, i32 %94)
  store i32 %95, i32* %7, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %85
  br label %291

99:                                               ; preds = %85
  %100 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %101 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %100, i32 0, i32 3
  %102 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %10, align 8
  %103 = call i32 @memcpy(%struct.TYPE_23__* %101, %struct.pfvf_acquire_resp_tlv* %102, i32 80)
  %104 = load i32, i32* %8, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %8, align 4
  %106 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %107 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %106, i32 0, i32 3
  %108 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %116

113:                                              ; preds = %99
  %114 = load i32, i32* @BNX2X_MSG_SP, align 4
  %115 = call i32 @DP(i32 %114, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  store i32 1, i32* %12, align 4
  br label %194

116:                                              ; preds = %99
  %117 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %118 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %117, i32 0, i32 3
  %119 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load i64, i64* @PFVF_STATUS_NO_RESOURCE, align 8
  %123 = icmp eq i64 %121, %122
  br i1 %123, label %124, label %184

124:                                              ; preds = %116
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @VF_ACQUIRE_THRESH, align 4
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %128, label %184

128:                                              ; preds = %124
  %129 = load i32, i32* @BNX2X_MSG_SP, align 4
  %130 = call i32 @DP(i32 %129, i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.2, i64 0, i64 0))
  %131 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %132 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %131, i32 0, i32 3
  %133 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %133, i32 0, i32 7
  %135 = load i8*, i8** %134, align 8
  %136 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %137 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %137, i32 0, i32 5
  store i8* %135, i8** %138, align 8
  %139 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %140 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %139, i32 0, i32 3
  %141 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %141, i32 0, i32 6
  %143 = load i8*, i8** %142, align 8
  %144 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %145 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %145, i32 0, i32 4
  store i8* %143, i8** %146, align 8
  %147 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %148 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %147, i32 0, i32 3
  %149 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %153 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %153, i32 0, i32 0
  store i32 %151, i32* %154, align 8
  %155 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %156 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %155, i32 0, i32 3
  %157 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 5
  %159 = load i32, i32* %158, align 8
  %160 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %161 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %160, i32 0, i32 1
  %162 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %161, i32 0, i32 3
  store i32 %159, i32* %162, align 4
  %163 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %164 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %163, i32 0, i32 3
  %165 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %169 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %169, i32 0, i32 2
  store i32 %167, i32* %170, align 8
  %171 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %172 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %171, i32 0, i32 3
  %173 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %173, i32 0, i32 3
  %175 = load i32, i32* %174, align 8
  %176 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %177 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %177, i32 0, i32 1
  store i32 %175, i32* %178, align 4
  %179 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %180 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %179, i32 0, i32 12
  %181 = load %struct.TYPE_30__*, %struct.TYPE_30__** %180, align 8
  %182 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %181, i32 0, i32 0
  %183 = call i32 @memset(%struct.TYPE_22__* %182, i32 0, i32 4)
  br label %193

184:                                              ; preds = %124, %116
  %185 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %186 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %185, i32 0, i32 3
  %187 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_31__, %struct.TYPE_31__* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %189)
  %191 = load i32, i32* @EAGAIN, align 4
  %192 = sub nsw i32 0, %191
  store i32 %192, i32* %7, align 4
  br label %291

193:                                              ; preds = %128
  br label %194

194:                                              ; preds = %193, %113
  br label %81

195:                                              ; preds = %81
  %196 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %197 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %196, i32 0, i32 3
  %198 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %197, i32 0, i32 1
  %199 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = and i32 %200, 65535
  %202 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %203 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %202, i32 0, i32 7
  %204 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 8
  %206 = or i32 %205, %201
  store i32 %206, i32* %204, align 8
  %207 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %208 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %207, i32 0, i32 7
  %209 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %212 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %211, i32 0, i32 11
  %213 = getelementptr inbounds %struct.TYPE_32__, %struct.TYPE_32__* %212, i32 0, i32 0
  store i32 %210, i32* %213, align 4
  %214 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %215 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %214, i32 0, i32 3
  %216 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %215, i32 0, i32 1
  %217 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %216, i32 0, i32 2
  %218 = load i32, i32* %217, align 8
  %219 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %220 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %219, i32 0, i32 10
  store i32 %218, i32* %220, align 8
  %221 = load i32, i32* @INT_BLOCK_IGU, align 4
  %222 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %223 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %222, i32 0, i32 7
  %224 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %223, i32 0, i32 3
  store i32 %221, i32* %224, align 4
  %225 = load i32, i32* @CHIP_2_PORT_MODE, align 4
  %226 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %227 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %226, i32 0, i32 7
  %228 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %227, i32 0, i32 2
  store i32 %225, i32* %228, align 8
  %229 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %230 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %229, i32 0, i32 1
  store i32 -1, i32* %230, align 4
  %231 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %232 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %231, i32 0, i32 9
  store i64 0, i64* %232, align 8
  %233 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %234 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %233, i32 0, i32 8
  store i64 0, i64* %234, align 8
  %235 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %236 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %235, i32 0, i32 7
  %237 = getelementptr inbounds %struct.TYPE_33__, %struct.TYPE_33__* %236, i32 0, i32 1
  store i64 0, i64* %237, align 8
  %238 = load i32, i32* @NO_WOL_FLAG, align 4
  %239 = load i32, i32* @NO_ISCSI_OOO_FLAG, align 4
  %240 = or i32 %238, %239
  %241 = load i32, i32* @NO_ISCSI_FLAG, align 4
  %242 = or i32 %240, %241
  %243 = load i32, i32* @NO_FCOE_FLAG, align 4
  %244 = or i32 %242, %243
  %245 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %246 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %245, i32 0, i32 2
  %247 = load i32, i32* %246, align 8
  %248 = or i32 %247, %244
  store i32 %248, i32* %246, align 8
  %249 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %250 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %249, i32 0, i32 0
  store i32 1, i32* %250, align 8
  %251 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %252 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %251, i32 0, i32 3
  %253 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %252, i32 0, i32 0
  %254 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %253, i32 0, i32 2
  %255 = load %struct.TYPE_18__*, %struct.TYPE_18__** %254, align 8
  %256 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %255, i64 0
  %257 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %256, i32 0, i32 0
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %260 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %259, i32 0, i32 6
  store i32 %258, i32* %260, align 4
  %261 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %262 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %261, i32 0, i32 5
  %263 = load i32, i32* %262, align 8
  %264 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %265 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %264, i32 0, i32 3
  %266 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %265, i32 0, i32 1
  %267 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %266, i32 0, i32 1
  %268 = load i32, i32* %267, align 4
  %269 = call i32 @strlcpy(i32 %263, i32 %268, i32 4)
  %270 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %271 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %270, i32 0, i32 3
  %272 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %271, i32 0, i32 0
  %273 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %272, i32 0, i32 1
  %274 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %273, align 8
  %275 = call i64 @is_valid_ether_addr(%struct.pfvf_acquire_resp_tlv* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %290

277:                                              ; preds = %195
  %278 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %279 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %278, i32 0, i32 4
  %280 = load %struct.TYPE_20__*, %struct.TYPE_20__** %279, align 8
  %281 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %280, i32 0, i32 0
  %282 = load %struct.TYPE_23__*, %struct.TYPE_23__** %281, align 8
  %283 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %284 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %283, i32 0, i32 3
  %285 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %284, i32 0, i32 0
  %286 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %285, i32 0, i32 1
  %287 = load %struct.pfvf_acquire_resp_tlv*, %struct.pfvf_acquire_resp_tlv** %286, align 8
  %288 = load i32, i32* @ETH_ALEN, align 4
  %289 = call i32 @memcpy(%struct.TYPE_23__* %282, %struct.pfvf_acquire_resp_tlv* %287, i32 %288)
  br label %290

290:                                              ; preds = %277, %195
  br label %291

291:                                              ; preds = %290, %184, %98, %31
  %292 = load %struct.bnx2x*, %struct.bnx2x** %4, align 8
  %293 = load %struct.vfpf_acquire_tlv*, %struct.vfpf_acquire_tlv** %9, align 8
  %294 = getelementptr inbounds %struct.vfpf_acquire_tlv, %struct.vfpf_acquire_tlv* %293, i32 0, i32 0
  %295 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %292, %struct.TYPE_24__* %294)
  %296 = load i32, i32* %7, align 4
  ret i32 %296
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_24__*, i32, i32) #1

declare dso_local i64 @bnx2x_get_vf_id(%struct.bnx2x*, i32*) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_acquire_tlv*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_acquire_tlv*) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_23__*, %struct.pfvf_acquire_resp_tlv*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_22__*, i32, i32) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i64 @is_valid_ether_addr(%struct.pfvf_acquire_resp_tlv*) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_24__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
