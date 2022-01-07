; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_te_handle_notif.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_time-event.c_iwl_mvm_te_handle_notif.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32, i32 }
%struct.iwl_mvm_time_event_data = type { i32, i32, %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.iwl_time_event_notif = type { i32, i32, i32 }

@.str = private unnamed_addr constant [48 x i8] c"Handle time event notif - UID = 0x%x action %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"Failed to schedule time event\0A\00", align 1
@TE_NOTIF_HOST_EVENT_END = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"TE ended - current time %lu, estimated end %lu\0A\00", align 1
@jiffies = common dso_local global i32 0, align 4
@NL80211_IFTYPE_P2P_DEVICE = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [53 x i8] c"No assocation and the time event is over already...\0A\00", align 1
@TE_NOTIF_HOST_EVENT_START = common dso_local global i32 0, align 4
@IWL_MVM_STATUS_ROC_RUNNING = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [28 x i8] c"Got TE with unknown action\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*, %struct.iwl_time_event_notif*)* @iwl_mvm_te_handle_notif to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwl_mvm_te_handle_notif(%struct.iwl_mvm* %0, %struct.iwl_mvm_time_event_data* %1, %struct.iwl_time_event_notif* %2) #0 {
  %4 = alloca %struct.iwl_mvm*, align 8
  %5 = alloca %struct.iwl_mvm_time_event_data*, align 8
  %6 = alloca %struct.iwl_time_event_notif*, align 8
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %4, align 8
  store %struct.iwl_mvm_time_event_data* %1, %struct.iwl_mvm_time_event_data** %5, align 8
  store %struct.iwl_time_event_notif* %2, %struct.iwl_time_event_notif** %6, align 8
  %7 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %8 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %7, i32 0, i32 2
  %9 = call i32 @lockdep_assert_held(i32* %8)
  %10 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %11 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %12 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @le32_to_cpu(i32 %13)
  %15 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  %19 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %10, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %18)
  %20 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %21 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @le32_to_cpu(i32 %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  %26 = zext i1 %25 to i32
  %27 = call i32 @WARN_ONCE(i32 %26, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %29 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @le32_to_cpu(i32 %30)
  %32 = load i32, i32* @TE_NOTIF_HOST_EVENT_END, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %91

35:                                               ; preds = %3
  %36 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %37 = load i32, i32* @jiffies, align 4
  %38 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @IWL_DEBUG_TE(%struct.iwl_mvm* %36, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %37, i32 %40)
  %42 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %35
  %50 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %51 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ieee80211_remain_on_channel_expired(i32 %52)
  %54 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %55 = call i32 @iwl_mvm_roc_finished(%struct.iwl_mvm* %54)
  br label %56

56:                                               ; preds = %49, %35
  %57 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %58 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %57, i32 0, i32 2
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %87

64:                                               ; preds = %56
  %65 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %66 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %65, i32 0, i32 2
  %67 = load %struct.TYPE_4__*, %struct.TYPE_4__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %80

72:                                               ; preds = %64
  %73 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %74 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %73, i32 0, i32 2
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %87, label %80

80:                                               ; preds = %72, %64
  %81 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %82 = call i32 @IWL_ERR(%struct.iwl_mvm* %81, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.3, i64 0, i64 0))
  %83 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %84 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %83, i32 0, i32 2
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = call i32 @ieee80211_connection_loss(%struct.TYPE_4__* %85)
  br label %87

87:                                               ; preds = %80, %72, %56
  %88 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %89 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %90 = call i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm* %88, %struct.iwl_mvm_time_event_data* %89)
  br label %131

91:                                               ; preds = %3
  %92 = load %struct.iwl_time_event_notif*, %struct.iwl_time_event_notif** %6, align 8
  %93 = getelementptr inbounds %struct.iwl_time_event_notif, %struct.iwl_time_event_notif* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @le32_to_cpu(i32 %94)
  %96 = load i32, i32* @TE_NOTIF_HOST_EVENT_START, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %127

99:                                               ; preds = %91
  %100 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %101 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %100, i32 0, i32 1
  store i32 1, i32* %101, align 4
  %102 = load i32, i32* @jiffies, align 4
  %103 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %104 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = call i32 @TU_TO_JIFFIES(i32 %105)
  %107 = add nsw i32 %102, %106
  %108 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %109 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %108, i32 0, i32 0
  store i32 %107, i32* %109, align 8
  %110 = load %struct.iwl_mvm_time_event_data*, %struct.iwl_mvm_time_event_data** %5, align 8
  %111 = getelementptr inbounds %struct.iwl_mvm_time_event_data, %struct.iwl_mvm_time_event_data* %110, i32 0, i32 2
  %112 = load %struct.TYPE_4__*, %struct.TYPE_4__** %111, align 8
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load i64, i64* @NL80211_IFTYPE_P2P_DEVICE, align 8
  %116 = icmp eq i64 %114, %115
  br i1 %116, label %117, label %126

117:                                              ; preds = %99
  %118 = load i32, i32* @IWL_MVM_STATUS_ROC_RUNNING, align 4
  %119 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %120 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %119, i32 0, i32 1
  %121 = call i32 @set_bit(i32 %118, i32* %120)
  %122 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %123 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ieee80211_ready_on_channel(i32 %124)
  br label %126

126:                                              ; preds = %117, %99
  br label %130

127:                                              ; preds = %91
  %128 = load %struct.iwl_mvm*, %struct.iwl_mvm** %4, align 8
  %129 = call i32 @IWL_WARN(%struct.iwl_mvm* %128, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %130

130:                                              ; preds = %127, %126
  br label %131

131:                                              ; preds = %130, %87
  ret void
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_TE(%struct.iwl_mvm*, i8*, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local i32 @ieee80211_remain_on_channel_expired(i32) #1

declare dso_local i32 @iwl_mvm_roc_finished(%struct.iwl_mvm*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_mvm*, i8*) #1

declare dso_local i32 @ieee80211_connection_loss(%struct.TYPE_4__*) #1

declare dso_local i32 @iwl_mvm_te_clear_data(%struct.iwl_mvm*, %struct.iwl_mvm_time_event_data*) #1

declare dso_local i32 @TU_TO_JIFFIES(i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ieee80211_ready_on_channel(i32) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_mvm*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
