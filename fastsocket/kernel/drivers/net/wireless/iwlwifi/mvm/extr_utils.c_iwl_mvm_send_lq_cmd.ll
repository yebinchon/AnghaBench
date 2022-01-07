; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_lq_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/mvm/extr_utils.c_iwl_mvm_send_lq_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_mvm = type { i32 }
%struct.iwl_lq_cmd = type { i64 }
%struct.iwl_host_cmd = type { i32, i32, i32, i32 }

@LQ_CMD = common dso_local global i32 0, align 4
@IWL_MVM_STATION_COUNT = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@CMD_ASYNC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_mvm_send_lq_cmd(%struct.iwl_mvm* %0, %struct.iwl_lq_cmd* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.iwl_mvm*, align 8
  %7 = alloca %struct.iwl_lq_cmd*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.iwl_host_cmd, align 4
  store %struct.iwl_mvm* %0, %struct.iwl_mvm** %6, align 8
  store %struct.iwl_lq_cmd* %1, %struct.iwl_lq_cmd** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %8, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 1
  %14 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %7, align 8
  %15 = ptrtoint %struct.iwl_lq_cmd* %14 to i32
  store i32 %15, i32* %13, align 4
  %16 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 2
  store i32 8, i32* %16, align 4
  %17 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 3
  %18 = load i32, i32* @LQ_CMD, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.iwl_lq_cmd*, %struct.iwl_lq_cmd** %7, align 8
  %20 = getelementptr inbounds %struct.iwl_lq_cmd, %struct.iwl_lq_cmd* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @IWL_MVM_STATION_COUNT, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %4
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %4
  %31 = load i32, i32* %9, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %10, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @CMD_ASYNC, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %33, %30
  %40 = phi i1 [ false, %30 ], [ %38, %33 ]
  %41 = zext i1 %40 to i32
  %42 = call i64 @WARN_ON(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %39
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %5, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load %struct.iwl_mvm*, %struct.iwl_mvm** %6, align 8
  %49 = call i32 @iwl_mvm_send_cmd(%struct.iwl_mvm* %48, %struct.iwl_host_cmd* %10)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %47, %44, %27
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @iwl_mvm_send_cmd(%struct.iwl_mvm*, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
