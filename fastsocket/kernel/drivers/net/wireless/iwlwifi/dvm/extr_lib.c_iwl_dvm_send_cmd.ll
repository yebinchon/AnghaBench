; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwl_dvm_send_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_lib.c_iwl_dvm_send_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { i64, i32, i32, i32, i32 }
%struct.iwl_host_cmd = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"Not sending command - %s KILL\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"RF\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"CT\00", align 1
@EIO = common dso_local global i32 0, align 4
@STATUS_FW_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Command %s failed: FW Error\0A\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"Fw not loaded - dropping CMD: %x\0A\00", align 1
@CMD_ASYNC = common dso_local global i32 0, align 4
@IWL_OWNERSHIP_TM = common dso_local global i64 0, align 8
@CMD_ON_DEMAND = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [40 x i8] c"tm own the uCode, no regular hcmd send\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_dvm_send_cmd(%struct.iwl_priv* %0, %struct.iwl_host_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iwl_priv*, align 8
  %5 = alloca %struct.iwl_host_cmd*, align 8
  store %struct.iwl_priv* %0, %struct.iwl_priv** %4, align 8
  store %struct.iwl_host_cmd* %1, %struct.iwl_host_cmd** %5, align 8
  %6 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %7 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %11 = call i64 @iwl_is_ctkill(%struct.iwl_priv* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9, %2
  %14 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %15 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %16 = call i64 @iwl_is_rfkill(%struct.iwl_priv* %15)
  %17 = icmp ne i64 %16, 0
  %18 = zext i1 %17 to i64
  %19 = select i1 %17, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0)
  %20 = call i32 @IWL_WARN(%struct.iwl_priv* %14, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i8* %19)
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %86

23:                                               ; preds = %9
  %24 = load i32, i32* @STATUS_FW_ERROR, align 4
  %25 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %26 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %25, i32 0, i32 4
  %27 = call i64 @test_bit(i32 %24, i32* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %31 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %32 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @iwl_dvm_get_cmd_string(i32 %33)
  %35 = call i32 @IWL_ERR(%struct.iwl_priv* %30, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %34)
  %36 = load i32, i32* @EIO, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %86

38:                                               ; preds = %23
  %39 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %40 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %39, i32 0, i32 3
  %41 = load i32, i32* %40, align 8
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %51, label %43

43:                                               ; preds = %38
  %44 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %45 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %46 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @IWL_ERR(%struct.iwl_priv* %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 %47)
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %86

51:                                               ; preds = %38
  %52 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %53 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* @CMD_ASYNC, align 4
  %56 = and i32 %54, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %60 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %59, i32 0, i32 2
  %61 = call i32 @lockdep_assert_held(i32* %60)
  br label %62

62:                                               ; preds = %58, %51
  %63 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %64 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @IWL_OWNERSHIP_TM, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %80

68:                                               ; preds = %62
  %69 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %70 = getelementptr inbounds %struct.iwl_host_cmd, %struct.iwl_host_cmd* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @CMD_ON_DEMAND, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %68
  %76 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %77 = call i32 @IWL_DEBUG_HC(%struct.iwl_priv* %76, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.5, i64 0, i64 0))
  %78 = load i32, i32* @EIO, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %3, align 4
  br label %86

80:                                               ; preds = %68, %62
  %81 = load %struct.iwl_priv*, %struct.iwl_priv** %4, align 8
  %82 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.iwl_host_cmd*, %struct.iwl_host_cmd** %5, align 8
  %85 = call i32 @iwl_trans_send_cmd(i32 %83, %struct.iwl_host_cmd* %84)
  store i32 %85, i32* %3, align 4
  br label %86

86:                                               ; preds = %80, %75, %43, %29, %13
  %87 = load i32, i32* %3, align 4
  ret i32 %87
}

declare dso_local i64 @iwl_is_rfkill(%struct.iwl_priv*) #1

declare dso_local i64 @iwl_is_ctkill(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_WARN(%struct.iwl_priv*, i8*, i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

declare dso_local i32 @iwl_dvm_get_cmd_string(i32) #1

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @IWL_DEBUG_HC(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_trans_send_cmd(i32, %struct.iwl_host_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
