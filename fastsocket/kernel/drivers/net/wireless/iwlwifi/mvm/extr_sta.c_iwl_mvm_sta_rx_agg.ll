; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_rx_agg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_sta.c_iwl_mvm_sta_rx_agg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.ieee80211_sta = type { i64 }
%struct.iwl_mvm_sta = type { i32, i32 }
%struct.iwl_mvm_add_sta_cmd = type { i32, i8*, i32, i8*, i32, i32, i32 }

@STA_MODE_MODIFY = common dso_local global i32 0, align 4
@STA_MODIFY_ADD_BA_TID = common dso_local global i32 0, align 4
@STA_MODIFY_REMOVE_BA_TID = common dso_local global i32 0, align 4
@ADD_STA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"RX BA Session %sed in fw\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"start\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"stopp\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"RX BA Session refused by fw\0A\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"RX BA Session failed %sing, status 0x%x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_sta_rx_agg(%struct.iwl_mvm* %0, %struct.ieee80211_sta* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.iwl_mvm*, align 8
  %8 = alloca %struct.ieee80211_sta*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.iwl_mvm_sta*, align 8
  %13 = alloca %struct.iwl_mvm_add_sta_cmd, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %7, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load %struct.ieee80211_sta*, %struct.ieee80211_sta** %8, align 8
  %17 = getelementptr inbounds %struct.ieee80211_sta, %struct.ieee80211_sta* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = bitcast i8* %19 to %struct.iwl_mvm_sta*
  store %struct.iwl_mvm_sta* %20, %struct.iwl_mvm_sta** %12, align 8
  %21 = bitcast %struct.iwl_mvm_add_sta_cmd* %13 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %21, i8 0, i64 48, i1 false)
  %22 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %22, i32 0, i32 0
  %24 = call i32 @lockdep_assert_held(i32* %23)
  %25 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %26 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @cpu_to_le32(i32 %27)
  %29 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 6
  store i32 %28, i32* %29, align 8
  %30 = load %struct.iwl_mvm_sta*, %struct.iwl_mvm_sta** %12, align 8
  %31 = getelementptr inbounds %struct.iwl_mvm_sta, %struct.iwl_mvm_sta* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 5
  store i32 %32, i32* %33, align 4
  %34 = load i32, i32* @STA_MODE_MODIFY, align 4
  %35 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 4
  store i32 %34, i32* %35, align 8
  %36 = load i32, i32* %11, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %5
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to i8*
  %42 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 3
  store i8* %41, i8** %42, align 8
  %43 = load i32, i32* %10, align 4
  %44 = call i32 @cpu_to_le16(i32 %43)
  %45 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 2
  store i32 %44, i32* %45, align 8
  br label %51

46:                                               ; preds = %5
  %47 = load i32, i32* %9, align 4
  %48 = sext i32 %47 to i64
  %49 = inttoptr i64 %48 to i8*
  %50 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 1
  store i8* %49, i8** %50, align 8
  br label %51

51:                                               ; preds = %46, %38
  %52 = load i32, i32* %11, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %56

54:                                               ; preds = %51
  %55 = load i32, i32* @STA_MODIFY_ADD_BA_TID, align 4
  br label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @STA_MODIFY_REMOVE_BA_TID, align 4
  br label %58

58:                                               ; preds = %56, %54
  %59 = phi i32 [ %55, %54 ], [ %57, %56 ]
  %60 = getelementptr inbounds %struct.iwl_mvm_add_sta_cmd, %struct.iwl_mvm_add_sta_cmd* %13, i32 0, i32 0
  store i32 %59, i32* %60, align 8
  store i32 128, i32* %15, align 4
  %61 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %62 = load i32, i32* @ADD_STA, align 4
  %63 = call i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm* %61, i32 %62, i32 48, %struct.iwl_mvm_add_sta_cmd* %13, i32* %15)
  store i32 %63, i32* %14, align 4
  %64 = load i32, i32* %14, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %58
  %67 = load i32, i32* %14, align 4
  store i32 %67, i32* %6, align 4
  br label %94

68:                                               ; preds = %58
  %69 = load i32, i32* %15, align 4
  switch i32 %69, label %82 [
    i32 128, label %70
    i32 129, label %77
  ]

70:                                               ; preds = %68
  %71 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %72 = load i32, i32* %11, align 4
  %73 = icmp ne i32 %72, 0
  %74 = zext i1 %73 to i64
  %75 = select i1 %73, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %76 = call i32 @IWL_DEBUG_INFO(%struct.iwl_mvm* %71, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i8* %75)
  br label %92

77:                                               ; preds = %68
  %78 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %79 = call i32 @IWL_WARN(%struct.iwl_mvm* %78, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %80 = load i32, i32* @ENOSPC, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %14, align 4
  br label %92

82:                                               ; preds = %68
  %83 = load i32, i32* @EIO, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %14, align 4
  %85 = load %struct.iwl_mvm*, %struct.iwl_mvm** %7, align 8
  %86 = load i32, i32* %11, align 4
  %87 = icmp ne i32 %86, 0
  %88 = zext i1 %87 to i64
  %89 = select i1 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0)
  %90 = load i32, i32* %15, align 4
  %91 = call i32 @IWL_ERR(%struct.iwl_mvm* %85, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.4, i64 0, i64 0), i8* %89, i32 %90)
  br label %92

92:                                               ; preds = %82, %77, %70
  %93 = load i32, i32* %14, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %92, %66
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held(i32*) #2

declare dso_local i32 @cpu_to_le32(i32) #2

declare dso_local i32 @cpu_to_le16(i32) #2

declare dso_local i32 @iwl_mvm_send_cmd_pdu_status(%struct.iwl_mvm*, i32, i32, %struct.iwl_mvm_add_sta_cmd*, i32*) #2

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_mvm*, i8*, i8*) #2

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #2

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
