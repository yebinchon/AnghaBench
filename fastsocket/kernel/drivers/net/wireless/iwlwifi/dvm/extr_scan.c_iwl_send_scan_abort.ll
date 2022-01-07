; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_send_scan_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_scan.c_iwl_send_scan_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i32 }
%struct.iwl_host_cmd = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }

@CMD_SYNC = common dso_local global i32 0, align 4
@CMD_WANT_SKB = common dso_local global i32 0, align 4
@REPLY_SCAN_ABORT_CMD = common dso_local global i32 0, align 4
@STATUS_READY = common dso_local global i32 0, align 4
@STATUS_SCAN_HW = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@CAN_ABORT_STATUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [20 x i8] c"SCAN_ABORT ret %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iwl_priv*)* @iwl_send_scan_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iwl_send_scan_abort(%struct.iwl_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.iwl_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_host_cmd, align 8
  %6 = alloca i64*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %3, align 8
  %7 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 0
  %8 = load i32, i32* @CMD_SYNC, align 4
  %9 = load i32, i32* @CMD_WANT_SKB, align 4
  %10 = or i32 %8, %9
  store i32 %10, i32* %7, align 8
  %11 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %11, align 8
  %12 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 2
  %13 = load i32, i32* @REPLY_SCAN_ABORT_CMD, align 4
  store i32 %13, i32* %12, align 8
  %14 = load i32, i32* @STATUS_READY, align 4
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %16 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %15, i32 0, i32 0
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %31

19:                                               ; preds = %1
  %20 = load i32, i32* @STATUS_SCAN_HW, align 4
  %21 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %22 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %21, i32 0, i32 0
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %19
  %26 = load i32, i32* @STATUS_FW_ERROR, align 4
  %27 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %28 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %27, i32 0, i32 0
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %19, %1
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %63

34:                                               ; preds = %25
  %35 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %36 = call i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %35, %struct.iwl_host_cmd* %5)
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %34
  %40 = load i32, i32* %4, align 4
  store i32 %40, i32* %2, align 4
  br label %63

41:                                               ; preds = %34
  %42 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %5, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to i8*
  %47 = bitcast i8* %46 to i64*
  store i64* %47, i64** %6, align 8
  %48 = load i64*, i64** %6, align 8
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @CAN_ABORT_STATUS, align 8
  %51 = icmp ne i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %41
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %3, align 8
  %54 = load i64*, i64** %6, align 8
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @le32_to_cpu(i64 %55)
  %57 = call i32 @IWL_DEBUG_SCAN(%struct.iwl_priv* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %56)
  %58 = load i32, i32* @EIO, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %4, align 4
  br label %60

60:                                               ; preds = %52, %41
  %61 = call i32 @iwl_free_resp(%struct.iwl_host_cmd* %5)
  %62 = load i32, i32* %4, align 4
  store i32 %62, i32* %2, align 4
  br label %63

63:                                               ; preds = %60, %39, %31
  %64 = load i32, i32* %2, align 4
  ret i32 %64
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv*, %struct.iwl_host_cmd*) #1

declare dso_local i32 @IWL_DEBUG_SCAN(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @iwl_free_resp(%struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
