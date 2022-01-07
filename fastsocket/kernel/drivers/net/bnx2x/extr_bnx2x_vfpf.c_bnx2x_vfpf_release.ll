; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_vfpf.c_bnx2x_vfpf_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { %struct.pfvf_general_resp_tlv }
%struct.pfvf_general_resp_tlv = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i64 }
%struct.TYPE_8__ = type { %struct.vfpf_release_tlv }
%struct.vfpf_release_tlv = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32 }

@CHANNEL_TLV_RELEASE = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CHANNEL_TLV_LIST_END = common dso_local global i32 0, align 4
@PFVF_STATUS_SUCCESS = common dso_local global i64 0, align 8
@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"vf released\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"PF failed our release request - are we out of sync? Response status: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bnx2x_vfpf_release(%struct.bnx2x* %0) #0 {
  %2 = alloca %struct.bnx2x*, align 8
  %3 = alloca %struct.vfpf_release_tlv*, align 8
  %4 = alloca %struct.pfvf_general_resp_tlv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %2, align 8
  %7 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %8 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %7, i32 0, i32 1
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  store %struct.vfpf_release_tlv* %11, %struct.vfpf_release_tlv** %3, align 8
  %12 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %13 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %12, i32 0, i32 1
  %14 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  store %struct.pfvf_general_resp_tlv* %16, %struct.pfvf_general_resp_tlv** %4, align 8
  %17 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %18 = load %struct.vfpf_release_tlv*, %struct.vfpf_release_tlv** %3, align 8
  %19 = getelementptr inbounds %struct.vfpf_release_tlv, %struct.vfpf_release_tlv* %18, i32 0, i32 1
  %20 = load i32, i32* @CHANNEL_TLV_RELEASE, align 4
  %21 = call i32 @bnx2x_vfpf_prep(%struct.bnx2x* %17, %struct.TYPE_13__* %19, i32 %20, i32 8)
  %22 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %23 = call i64 @bnx2x_get_vf_id(%struct.bnx2x* %22, i32* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %1
  %26 = load i32, i32* @EAGAIN, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %5, align 4
  br label %74

28:                                               ; preds = %1
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.vfpf_release_tlv*, %struct.vfpf_release_tlv** %3, align 8
  %31 = getelementptr inbounds %struct.vfpf_release_tlv, %struct.vfpf_release_tlv* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 4
  %32 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %33 = load %struct.vfpf_release_tlv*, %struct.vfpf_release_tlv** %3, align 8
  %34 = load %struct.vfpf_release_tlv*, %struct.vfpf_release_tlv** %3, align 8
  %35 = getelementptr inbounds %struct.vfpf_release_tlv, %struct.vfpf_release_tlv* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @CHANNEL_TLV_LIST_END, align 4
  %40 = call i32 @bnx2x_add_tlv(%struct.bnx2x* %32, %struct.vfpf_release_tlv* %33, i32 %38, i32 %39, i32 4)
  %41 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %42 = load %struct.vfpf_release_tlv*, %struct.vfpf_release_tlv** %3, align 8
  %43 = call i32 @bnx2x_dp_tlv_list(%struct.bnx2x* %41, %struct.vfpf_release_tlv* %42)
  %44 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %45 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %4, align 8
  %46 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %49 = getelementptr inbounds %struct.bnx2x, %struct.bnx2x* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = call i32 @bnx2x_send_msg2pf(%struct.bnx2x* %44, i64* %47, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %28
  br label %74

55:                                               ; preds = %28
  %56 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %4, align 8
  %57 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @PFVF_STATUS_SUCCESS, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %55
  %63 = load i32, i32* @BNX2X_MSG_SP, align 4
  %64 = call i32 @DP(i32 %63, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %73

65:                                               ; preds = %55
  %66 = load %struct.pfvf_general_resp_tlv*, %struct.pfvf_general_resp_tlv** %4, align 8
  %67 = getelementptr inbounds %struct.pfvf_general_resp_tlv, %struct.pfvf_general_resp_tlv* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @BNX2X_ERR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i64 %69)
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %5, align 4
  br label %74

73:                                               ; preds = %62
  br label %74

74:                                               ; preds = %73, %65, %54, %25
  %75 = load %struct.bnx2x*, %struct.bnx2x** %2, align 8
  %76 = load %struct.vfpf_release_tlv*, %struct.vfpf_release_tlv** %3, align 8
  %77 = getelementptr inbounds %struct.vfpf_release_tlv, %struct.vfpf_release_tlv* %76, i32 0, i32 1
  %78 = call i32 @bnx2x_vfpf_finalize(%struct.bnx2x* %75, %struct.TYPE_13__* %77)
  %79 = load i32, i32* %5, align 4
  ret i32 %79
}

declare dso_local i32 @bnx2x_vfpf_prep(%struct.bnx2x*, %struct.TYPE_13__*, i32, i32) #1

declare dso_local i64 @bnx2x_get_vf_id(%struct.bnx2x*, i32*) #1

declare dso_local i32 @bnx2x_add_tlv(%struct.bnx2x*, %struct.vfpf_release_tlv*, i32, i32, i32) #1

declare dso_local i32 @bnx2x_dp_tlv_list(%struct.bnx2x*, %struct.vfpf_release_tlv*) #1

declare dso_local i32 @bnx2x_send_msg2pf(%struct.bnx2x*, i64*, i32) #1

declare dso_local i32 @DP(i32, i8*) #1

declare dso_local i32 @BNX2X_ERR(i8*, i64) #1

declare dso_local i32 @bnx2x_vfpf_finalize(%struct.bnx2x*, %struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
