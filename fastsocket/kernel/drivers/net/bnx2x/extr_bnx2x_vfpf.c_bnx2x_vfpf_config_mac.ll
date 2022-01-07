; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_config_mac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_config_mac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_17__*, %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_17__ = type { i32* }
%struct.TYPE_14__ = type { %struct.pf_vf_bulletin_content }
%struct.pf_vf_bulletin_content = type { i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_12__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_18__ }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_11__ = type { %struct.vfpf_set_q_filters_tlv }
%struct.vfpf_set_q_filters_tlv = type { i32, %struct.TYPE_19__, %struct.TYPE_16__*, i32, i32 }
%struct.TYPE_19__ = type { %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32 }
%struct.TYPE_16__ = type { i32*, i32 }

@CHANNEL_TLV_SET_Q_FILTERS = common dso_local global i32 0, align 4
@VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_DEST_MAC_VALID = common dso_local global i32 0, align 4
@VFPF_Q_FILTER_SET_MAC = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"failed to send message to pf. rc was %d\0A\00", align 1
@PFVF_STATUS_FAILURE = common dso_local global i32 0, align 4
@BNX2X_MSG_IOV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [57 x i8] c"vfpf SET MAC failed. Check bulletin board for new posts\0A\00", align 1
@PFVF_BULLETIN_UPDATED = common dso_local global i64 0, align 8
@PFVF_STATUS_SUCCESS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"vfpf SET MAC failed: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_config_mac(%struct.bnx2x* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.bnx2x*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.vfpf_set_q_filters_tlv*, align 8
  %10 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %11 = alloca %struct.pf_vf_bulletin_content, align 8
  %12 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %14 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %13, i32 0, i32 3
  %15 = load %struct.TYPE_13__*, %struct.TYPE_13__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  store %struct.vfpf_set_q_filters_tlv* %17, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %18 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %19 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %18, i32 0, i32 3
  %20 = load %struct.TYPE_13__*, %struct.TYPE_13__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %21, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %22, %struct.pfvf_general_resp_tlv** %10, align 8
  %23 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %24 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %23, i32 0, i32 2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = bitcast %struct.pf_vf_bulletin_content* %11 to i8*
  %28 = bitcast %struct.pf_vf_bulletin_content* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 8 %28, i64 8, i1 false)
  store i32 0, i32* %12, align 4
  %29 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %30 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %31 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %30, i32 0, i32 1
  %32 = load i32, i32* @CHANNEL_TLV_SET_Q_FILTERS, align 4
  %33 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %29, %struct.TYPE_19__* %31, i32 %32, i32 24)
  %34 = load i32, i32* @VFPF_SET_Q_FILTERS_MAC_VLAN_CHANGED, align 4
  %35 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %36 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %35, i32 0, i32 4
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %39 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %38, i32 0, i32 3
  store i32 %37, i32* %39, align 8
  %40 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %41 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = load i32, i32* @VFPF_Q_FILTER_DEST_MAC_VALID, align 4
  %43 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %44 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %43, i32 0, i32 2
  %45 = load %struct.TYPE_16__*, %struct.TYPE_16__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %45, i64 0
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 1
  store i32 %42, i32* %47, align 8
  %48 = load i32, i32* %8, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %59

50:                                               ; preds = %4
  %51 = load i32, i32* @VFPF_Q_FILTER_SET_MAC, align 4
  %52 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %53 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %52, i32 0, i32 2
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %54, i64 0
  %56 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = or i32 %57, %51
  store i32 %58, i32* %56, align 8
  br label %59

59:                                               ; preds = %50, %4
  %60 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %61 = call i64 @bnx2x_sample_bulletin(%struct.bnx2x* %60)
  %62 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %63 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %62, i32 0, i32 2
  %64 = load %struct.TYPE_16__*, %struct.TYPE_16__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %64, i64 0
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i32*, i32** %6, align 8
  %69 = load i32, i32* @ETH_ALEN, align 4
  %70 = call i32 @memcpy(i32* %67, i32* %68, i32 %69)
  %71 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %72 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %73 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %74 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %79 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %71, %struct.vfpf_set_q_filters_tlv* %72, i32 %77, i32 %78, i32 4)
  %80 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %81 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %82 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %80, %struct.vfpf_set_q_filters_tlv* %81)
  %83 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %84 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %10, align 8
  %85 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %85, i32 0, i32 0
  %87 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %88 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %83, i32* %86, i32 %89)
  store i32 %90, i32* %12, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %96

93:                                               ; preds = %59
  %94 = load i32, i32* %12, align 4
  %95 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %94)
  br label %160

96:                                               ; preds = %59
  br label %97

97:                                               ; preds = %143, %96
  %98 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %10, align 8
  %99 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %98, i32 0, i32 0
  %100 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* @PFVF_STATUS_FAILURE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %144

104:                                              ; preds = %97
  %105 = load i32, i32* @BNX2X_MSG_IOV, align 4
  %106 = call i32 @DP(i32 %105, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %107 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %108 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %107, i32 0, i32 1
  %109 = load %struct.TYPE_17__*, %struct.TYPE_17__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = getelementptr inbounds %struct.pf_vf_bulletin_content, %struct.pf_vf_bulletin_content* %11, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* @ETH_ALEN, align 4
  %115 = call i32 @memcpy(i32* %111, i32* %113, i32 %114)
  %116 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %117 = call i64 @bnx2x_sample_bulletin(%struct.bnx2x* %116)
  %118 = load i64, i64* @PFVF_BULLETIN_UPDATED, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %142

120:                                              ; preds = %104
  %121 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %122 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %121, i32 0, i32 2
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i64 0
  %125 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %124, i32 0, i32 0
  %126 = load i32*, i32** %125, align 8
  %127 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %128 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %127, i32 0, i32 1
  %129 = load %struct.TYPE_17__*, %struct.TYPE_17__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = load i32, i32* @ETH_ALEN, align 4
  %133 = call i32 @memcpy(i32* %126, i32* %131, i32 %132)
  %134 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %135 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %10, align 8
  %136 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %136, i32 0, i32 0
  %138 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %139 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %134, i32* %137, i32 %140)
  store i32 %141, i32* %12, align 4
  br label %143

142:                                              ; preds = %104
  br label %144

143:                                              ; preds = %120
  br label %97

144:                                              ; preds = %142, %97
  %145 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %10, align 8
  %146 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* @PFVF_STATUS_SUCCESS, align 4
  %150 = icmp ne i32 %148, %149
  br i1 %150, label %151, label %159

151:                                              ; preds = %144
  %152 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %10, align 8
  %153 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %155)
  %157 = load i32, i32* @EINVAL, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %12, align 4
  br label %159

159:                                              ; preds = %151, %144
  br label %160

160:                                              ; preds = %159, %93
  %161 = load %struct.bnx2x*, %struct.bnx2x** %5, align 8
  %162 = load %struct.vfpf_set_q_filters_tlv*, %struct.vfpf_set_q_filters_tlv** %9, align 8
  %163 = getelementptr inbounds %struct.vfpf_set_q_filters_tlv, %struct.vfpf_set_q_filters_tlv* %162, i32 0, i32 1
  %164 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %161, %struct.TYPE_19__* %163)
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_19__*, i32, i32) #2

declare dso_local i64 @bnx2x_sample_bulletin(%struct.bnx2x*) #2

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*, i32, i32, i32) #2

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_set_q_filters_tlv*) #2

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i32*, i32) #2

declare dso_local i32 @BNX2X_ERR(i8*, i32) #2

declare dso_local i32 @DP(i32, i8*) #2

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_19__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
