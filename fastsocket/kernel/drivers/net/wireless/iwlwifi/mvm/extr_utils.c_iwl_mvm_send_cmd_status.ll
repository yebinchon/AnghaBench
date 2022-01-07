; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_cmd_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_cmd_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32, i32 }
%struct.iwl_host_cmd = type { i32, %struct.iwl_rx_packet* }
%struct.iwl_rx_packet = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.iwl_cmd_response = type { i32 }

@CMD_ASYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"cmd flags %x\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CMD_SYNC = common dso_local global i32 0, align 4
@ERFKILL = common dso_local global i32 0, align 4
@IWL_CMD_FAILED_MSK = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@FH_RSCSR_FRAME_SIZE_MSK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_send_cmd_status(%struct.iwl_mvm* %0, %struct.iwl_host_cmd* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_mvm*, align 8
  %6 = alloca %struct.iwl_host_cmd*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.iwl_rx_packet*, align 8
  %9 = alloca %struct.iwl_cmd_response*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %5, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %6, align 8
  store i32* %2, i32** %7, align 8
  %12 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %13 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %12, i32 0, i32 1
  %14 = call i32 @lockdep_assert_held(i32* %13)
  %15 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @CMD_ASYNC, align 4
  %19 = load i32, i32* @CMD_WANT_SKB, align 4
  %20 = or i32 %18, %19
  %21 = and i32 %17, %20
  %22 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %23 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i64 @WARN_ONCE(i32 %21, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %103

30:                                               ; preds = %3
  %31 = load i32, i32* @CMD_SYNC, align 4
  %32 = load i32, i32* @CMD_WANT_SKB, align 4
  %33 = or i32 %31, %32
  %34 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %35 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = or i32 %36, %33
  store i32 %37, i32* %35, align 8
  %38 = load %struct.iwl_mvm*, %struct.iwl_mvm** %5, align 8
  %39 = getelementptr inbounds %struct.iwl_mvm, %struct.iwl_mvm* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %42 = call i32 @iwl_trans_send_cmd(i32 %40, %struct.iwl_host_cmd* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* %10, align 4
  %44 = load i32, i32* @ERFKILL, align 4
  %45 = sub nsw i32 0, %44
  %46 = icmp eq i32 %43, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %103

48:                                               ; preds = %30
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %103

53:                                               ; preds = %48
  br label %54

54:                                               ; preds = %53
  %55 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %56 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %55, i32 0, i32 1
  %57 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %56, align 8
  store %struct.iwl_rx_packet* %57, %struct.iwl_rx_packet** %8, align 8
  %58 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %59 = icmp ne %struct.iwl_rx_packet* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %54
  store i32 0, i32* %10, align 4
  br label %99

61:                                               ; preds = %54
  %62 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %63 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IWL_CMD_FAILED_MSK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %61
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %10, align 4
  br label %99

72:                                               ; preds = %61
  %73 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %74 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @le32_to_cpu(i32 %75)
  %77 = load i32, i32* @FH_RSCSR_FRAME_SIZE_MSK, align 4
  %78 = and i32 %76, %77
  store i32 %78, i32* %11, align 4
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = icmp ne i64 %80, 8
  %82 = zext i1 %81 to i32
  %83 = call i64 @WARN_ON_ONCE(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %72
  %86 = load i32, i32* @EIO, align 4
  %87 = sub nsw i32 0, %86
  store i32 %87, i32* %10, align 4
  br label %99

88:                                               ; preds = %72
  %89 = load %struct.iwl_rx_packet*, %struct.iwl_rx_packet** %8, align 8
  %90 = getelementptr inbounds %struct.iwl_rx_packet, %struct.iwl_rx_packet* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = inttoptr i64 %91 to i8*
  %93 = bitcast i8* %92 to %struct.iwl_cmd_response*
  store %struct.iwl_cmd_response* %93, %struct.iwl_cmd_response** %9, align 8
  %94 = load %struct.iwl_cmd_response*, %struct.iwl_cmd_response** %9, align 8
  %95 = getelementptr inbounds %struct.iwl_cmd_response, %struct.iwl_cmd_response* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @le32_to_cpu(i32 %96)
  %98 = load i32*, i32** %7, align 8
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %88, %85, %69, %60
  %100 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %6, align 8
  %101 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %100)
  %102 = load i32, i32* %10, align 4
  store i32 %102, i32* %4, align 4
  br label %103

103:                                              ; preds = %99, %51, %47, %27
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i64 @WARN_ONCE(i32, i8*, i32) #1

declare dso_local i32 @iwl_trans_send_cmd(i32, %struct.iwl_host_cmd*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
