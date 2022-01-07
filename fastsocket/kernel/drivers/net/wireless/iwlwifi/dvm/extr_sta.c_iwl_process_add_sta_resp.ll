; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_process_add_sta_resp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_sta.c_iwl_process_add_sta_resp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.iwl_addsta_cmd = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.iwl_rx_packet = type { %struct.TYPE_6__, i64 }
%struct.TYPE_6__ = type { i32 }
%struct.iwl_add_sta_resp = type { i32 }

@EIO = common dso_local global i32 0, align 4
@IWL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Bad return from REPLY_ADD_STA (0x%08X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [43 x i8] c"Processing response for adding station %u\0A\00", align 1
@.str.2 = private unnamed_addr constant [22 x i8] c"REPLY_ADD_STA PASSED\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"Adding station %d failed, no room in table.\0A\00", align 1
@.str.4 = private unnamed_addr constant [50 x i8] c"Adding station %d failed, no block ack resource.\0A\00", align 1
@.str.5 = private unnamed_addr constant [46 x i8] c"Attempting to modify non-existing station %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"Received REPLY_ADD_STA:(0x%08X)\0A\00", align 1
@.str.7 = private unnamed_addr constant [27 x i8] c"%s station id %u addr %pM\0A\00", align 1
@STA_CONTROL_MODIFY_MSK = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [9 x i8] c"Modified\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"Added\00", align 1
@.str.10 = private unnamed_addr constant [40 x i8] c"%s station according to cmd buffer %pM\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*, %struct.iwl_addsta_cmd*, %struct.iwl_rx_packet*)* @iwl_process_add_sta_resp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_process_add_sta_resp(%struct.iwl_priv* %0, %struct.iwl_addsta_cmd* %1, %struct.iwl_rx_packet* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_addsta_cmd*, align 8
  %7 = alloca %struct.iwl_rx_packet*, align 8
  %8 = alloca %struct.iwl_add_sta_resp*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_addsta_cmd* %1, %struct.iwl_addsta_cmd** %6, align 8
  store %struct.iwl_rx_packet* %2, %struct.iwl_rx_packet** %7, align 8
  %11 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %12 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to i8*
  %15 = bitcast i8* %14 to %struct.iwl_add_sta_resp*
  store %struct.iwl_add_sta_resp* %15, %struct.iwl_add_sta_resp** %8, align 8
  %16 = load %struct.iwl_addsta_cmd*, %struct.iwl_addsta_cmd** %6, align 8
  %17 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  store i64 %19, i64* %9, align 8
  %20 = load i32, i32* @EIO, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %10, align 4
  %22 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %23 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @IWL_CMD_FAILED_MSK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %3
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %31 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %7, align 8
  %32 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = call i32 @IWL_ERR(%struct.iwl_priv* %30, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %35)
  %37 = load i32, i32* %10, align 4
  store i32 %37, i32* %4, align 4
  br label %119

38:                                               ; preds = %3
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %40 = load i64, i64* %9, align 8
  %41 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %39, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i64 %40)
  %42 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %43 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %42, i32 0, i32 0
  %44 = call i32 @spin_lock_bh(i32* %43)
  %45 = load %struct.iwl_add_sta_resp*, %struct.iwl_add_sta_resp** %8, align 8
  %46 = getelementptr inbounds %struct.iwl_add_sta_resp, %struct.iwl_add_sta_resp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  switch i32 %47, label %66 [
    i32 128, label %48
    i32 129, label %54
    i32 130, label %58
    i32 131, label %62
  ]

48:                                               ; preds = %38
  %49 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %50 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.2, i64 0, i64 0))
  %51 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call i32 @iwl_sta_ucode_activate(%struct.iwl_priv* %51, i64 %52)
  store i32 %53, i32* %10, align 4
  br label %72

54:                                               ; preds = %38
  %55 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %56 = load i64, i64* %9, align 8
  %57 = call i32 @IWL_ERR(%struct.iwl_priv* %55, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0), i64 %56)
  br label %72

58:                                               ; preds = %38
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %60 = load i64, i64* %9, align 8
  %61 = call i32 @IWL_ERR(%struct.iwl_priv* %59, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.4, i64 0, i64 0), i64 %60)
  br label %72

62:                                               ; preds = %38
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i32 @IWL_ERR(%struct.iwl_priv* %63, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.5, i64 0, i64 0), i64 %64)
  br label %72

66:                                               ; preds = %38
  %67 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %68 = load %struct.iwl_add_sta_resp*, %struct.iwl_add_sta_resp** %8, align 8
  %69 = getelementptr inbounds %struct.iwl_add_sta_resp, %struct.iwl_add_sta_resp* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv* %67, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %70)
  br label %72

72:                                               ; preds = %66, %62, %58, %54, %48
  %73 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %75 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  %77 = load i64, i64* %9, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @STA_CONTROL_MODIFY_MSK, align 8
  %83 = icmp eq i64 %81, %82
  %84 = zext i1 %83 to i64
  %85 = select i1 %83, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %86 = load i64, i64* %9, align 8
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %88 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %87, i32 0, i32 1
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load i64, i64* %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %73, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i8* %85, i64 %86, i32 %95)
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %98 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %99 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %98, i32 0, i32 1
  %100 = load %struct.TYPE_9__*, %struct.TYPE_9__** %99, align 8
  %101 = load i64, i64* %9, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = load i64, i64* @STA_CONTROL_MODIFY_MSK, align 8
  %107 = icmp eq i64 %105, %106
  %108 = zext i1 %107 to i64
  %109 = select i1 %107, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0)
  %110 = load %struct.iwl_addsta_cmd*, %struct.iwl_addsta_cmd** %6, align 8
  %111 = getelementptr inbounds %struct.iwl_addsta_cmd, %struct.iwl_addsta_cmd* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = call i32 (%struct.iwl_priv*, i8*, ...) @IWL_DEBUG_INFO(%struct.iwl_priv* %97, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.10, i64 0, i64 0), i8* %109, i32 %113)
  %115 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %116 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %115, i32 0, i32 0
  %117 = call i32 @spin_unlock_bh(i32* %116)
  %118 = load i32, i32* %10, align 4
  store i32 %118, i32* %4, align 4
  br label %119

119:                                              ; preds = %72, %29
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*, ...) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @iwl_sta_ucode_activate(%struct.iwl_priv*, i64) #1

declare dso_local i32 @IWL_DEBUG_ASSOC(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
