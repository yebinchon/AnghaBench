; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_lbs_process_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/libertas/extr_cmdresp.c_lbs_process_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lbs_private = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@LBS_DEB_CMD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"EVENT: link sensed\0A\00", align 1
@.str.1 = private unnamed_addr constant [24 x i8] c"EVENT: deauthenticated\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"EVENT: disassociated\0A\00", align 1
@.str.3 = private unnamed_addr constant [18 x i8] c"EVENT: link lost\0A\00", align 1
@.str.4 = private unnamed_addr constant [17 x i8] c"EVENT: ps sleep\0A\00", align 1
@PS_STATE_FULL_POWER = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [47 x i8] c"EVENT: in FULL POWER mode, ignoreing PS_SLEEP\0A\00", align 1
@PS_STATE_PRE_SLEEP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [19 x i8] c"EVENT: host awake\0A\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"EVENT: ps awake\0A\00", align 1
@.str.8 = private unnamed_addr constant [45 x i8] c"EVENT: In FULL POWER mode - ignore PS AWAKE\0A\00", align 1
@PS_STATE_AWAKE = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [15 x i8] c"waking up ...\0A\00", align 1
@.str.10 = private unnamed_addr constant [26 x i8] c"EVENT: UNICAST MIC ERROR\0A\00", align 1
@.str.11 = private unnamed_addr constant [28 x i8] c"EVENT: MULTICAST MIC ERROR\0A\00", align 1
@.str.12 = private unnamed_addr constant [20 x i8] c"EVENT: MIB CHANGED\0A\00", align 1
@.str.13 = private unnamed_addr constant [18 x i8] c"EVENT: INIT DONE\0A\00", align 1
@.str.14 = private unnamed_addr constant [26 x i8] c"EVENT: ADHOC beacon lost\0A\00", align 1
@.str.15 = private unnamed_addr constant [17 x i8] c"EVENT: rssi low\0A\00", align 1
@.str.16 = private unnamed_addr constant [16 x i8] c"EVENT: snr low\0A\00", align 1
@.str.17 = private unnamed_addr constant [17 x i8] c"EVENT: max fail\0A\00", align 1
@.str.18 = private unnamed_addr constant [18 x i8] c"EVENT: rssi high\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"EVENT: snr high\0A\00", align 1
@.str.20 = private unnamed_addr constant [37 x i8] c"EVENT: MESH_AUTO_STARTED (ignoring)\0A\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"EVENT: MESH_AUTO_STARTED\0A\00", align 1
@LBS_CONNECTED = common dso_local global i32 0, align 4
@IW_MODE_ADHOC = common dso_local global i32 0, align 4
@.str.22 = private unnamed_addr constant [28 x i8] c"EVENT: unknown event id %d\0A\00", align 1
@.str.23 = private unnamed_addr constant [7 x i8] c"ret %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lbs_process_event(%struct.lbs_private* %0, i32 %1) #0 {
  %3 = alloca %struct.lbs_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.lbs_private* %0, %struct.lbs_private** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load i32, i32* @LBS_DEB_CMD, align 4
  %7 = call i32 @lbs_deb_enter(i32 %6)
  %8 = load i32, i32* %4, align 4
  switch i32 %8, label %126 [
    i32 139, label %9
    i32 144, label %11
    i32 143, label %15
    i32 140, label %19
    i32 132, label %23
    i32 142, label %38
    i32 133, label %42
    i32 134, label %64
    i32 135, label %68
    i32 136, label %72
    i32 141, label %74
    i32 145, label %76
    i32 130, label %78
    i32 128, label %80
    i32 138, label %82
    i32 131, label %84
    i32 129, label %86
    i32 137, label %88
  ]

9:                                                ; preds = %2
  %10 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %129

11:                                               ; preds = %2
  %12 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %13 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %14 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %13)
  br label %129

15:                                               ; preds = %2
  %16 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %17 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %18 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %17)
  br label %129

19:                                               ; preds = %2
  %20 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0))
  %21 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %22 = call i32 @lbs_mac_event_disconnected(%struct.lbs_private* %21)
  br label %129

23:                                               ; preds = %2
  %24 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0))
  %25 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %26 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %25, i32 0, i32 8
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @PS_STATE_FULL_POWER, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %23
  %31 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0))
  br label %129

32:                                               ; preds = %23
  %33 = load i32, i32* @PS_STATE_PRE_SLEEP, align 4
  %34 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %35 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %34, i32 0, i32 8
  store i32 %33, i32* %35, align 4
  %36 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %37 = call i32 @lbs_ps_confirm_sleep(%struct.lbs_private* %36)
  br label %129

38:                                               ; preds = %2
  %39 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  %40 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %41 = call i32 @lbs_send_confirmwake(%struct.lbs_private* %40)
  br label %129

42:                                               ; preds = %2
  %43 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0))
  %44 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %45 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %44, i32 0, i32 8
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @PS_STATE_FULL_POWER, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.8, i64 0, i64 0))
  br label %129

51:                                               ; preds = %42
  %52 = load i32, i32* @PS_STATE_AWAKE, align 4
  %53 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %54 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %53, i32 0, i32 8
  store i32 %52, i32* %54, align 4
  %55 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %56 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %55, i32 0, i32 7
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %51
  %60 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.9, i64 0, i64 0))
  %61 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %62 = call i32 @lbs_ps_wakeup(%struct.lbs_private* %61, i32 0)
  br label %63

63:                                               ; preds = %59, %51
  br label %129

64:                                               ; preds = %2
  %65 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.10, i64 0, i64 0))
  %66 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %67 = call i32 @handle_mic_failureevent(%struct.lbs_private* %66, i32 134)
  br label %129

68:                                               ; preds = %2
  %69 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.11, i64 0, i64 0))
  %70 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %71 = call i32 @handle_mic_failureevent(%struct.lbs_private* %70, i32 135)
  br label %129

72:                                               ; preds = %2
  %73 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.12, i64 0, i64 0))
  br label %129

74:                                               ; preds = %2
  %75 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.13, i64 0, i64 0))
  br label %129

76:                                               ; preds = %2
  %77 = call i32 @lbs_deb_cmd(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.14, i64 0, i64 0))
  br label %129

78:                                               ; preds = %2
  %79 = call i32 (i8*, ...) @lbs_pr_alert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.15, i64 0, i64 0))
  br label %129

80:                                               ; preds = %2
  %81 = call i32 (i8*, ...) @lbs_pr_alert(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.16, i64 0, i64 0))
  br label %129

82:                                               ; preds = %2
  %83 = call i32 (i8*, ...) @lbs_pr_alert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.17, i64 0, i64 0))
  br label %129

84:                                               ; preds = %2
  %85 = call i32 (i8*, ...) @lbs_pr_alert(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.18, i64 0, i64 0))
  br label %129

86:                                               ; preds = %2
  %87 = call i32 (i8*, ...) @lbs_pr_alert(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0))
  br label %129

88:                                               ; preds = %2
  %89 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %90 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %89, i32 0, i32 6
  %91 = load i32, i32* %90, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %95, label %93

93:                                               ; preds = %88
  %94 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.20, i64 0, i64 0))
  br label %129

95:                                               ; preds = %88
  %96 = call i32 @lbs_pr_info(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.21, i64 0, i64 0))
  %97 = load i32, i32* @LBS_CONNECTED, align 4
  %98 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %99 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %98, i32 0, i32 5
  store i32 %97, i32* %99, align 4
  %100 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %101 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %100, i32 0, i32 4
  %102 = load i32, i32* %101, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %119

104:                                              ; preds = %95
  %105 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %106 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @netif_carrier_on(i32 %107)
  %109 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %110 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %109, i32 0, i32 3
  %111 = load i32, i32* %110, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %104
  %114 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %115 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @netif_wake_queue(i32 %116)
  br label %118

118:                                              ; preds = %113, %104
  br label %119

119:                                              ; preds = %118, %95
  %120 = load i32, i32* @IW_MODE_ADHOC, align 4
  %121 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %122 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.lbs_private*, %struct.lbs_private** %3, align 8
  %124 = getelementptr inbounds %struct.lbs_private, %struct.lbs_private* %123, i32 0, i32 0
  %125 = call i32 @schedule_work(i32* %124)
  br label %129

126:                                              ; preds = %2
  %127 = load i32, i32* %4, align 4
  %128 = call i32 (i8*, ...) @lbs_pr_alert(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.22, i64 0, i64 0), i32 %127)
  br label %129

129:                                              ; preds = %126, %119, %93, %86, %84, %82, %80, %78, %76, %74, %72, %68, %64, %63, %49, %38, %32, %30, %19, %15, %11, %9
  %130 = load i32, i32* @LBS_DEB_CMD, align 4
  %131 = load i32, i32* %5, align 4
  %132 = call i32 @lbs_deb_leave_args(i32 %130, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.23, i64 0, i64 0), i32 %131)
  %133 = load i32, i32* %5, align 4
  ret i32 %133
}

declare dso_local i32 @lbs_deb_enter(i32) #1

declare dso_local i32 @lbs_deb_cmd(i8*) #1

declare dso_local i32 @lbs_mac_event_disconnected(%struct.lbs_private*) #1

declare dso_local i32 @lbs_ps_confirm_sleep(%struct.lbs_private*) #1

declare dso_local i32 @lbs_send_confirmwake(%struct.lbs_private*) #1

declare dso_local i32 @lbs_ps_wakeup(%struct.lbs_private*, i32) #1

declare dso_local i32 @handle_mic_failureevent(%struct.lbs_private*, i32) #1

declare dso_local i32 @lbs_pr_alert(i8*, ...) #1

declare dso_local i32 @lbs_pr_info(i8*) #1

declare dso_local i32 @netif_carrier_on(i32) #1

declare dso_local i32 @netif_wake_queue(i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @lbs_deb_leave_args(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
