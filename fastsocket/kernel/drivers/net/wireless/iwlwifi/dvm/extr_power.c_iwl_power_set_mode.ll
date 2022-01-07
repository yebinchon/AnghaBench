; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_power.c_iwl_power_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlwifi/dvm/extr_power.c_iwl_power_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwl_priv = type { %struct.TYPE_4__, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i64 }
%struct.iwl_powertable_cmd = type { i32 }

@IWL_CHAIN_NOISE_DONE = common dso_local global i64 0, align 8
@IWL_CHAIN_NOISE_ALIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@STATUS_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Defer power set mode while scanning\0A\00", align 1
@IWL_POWER_DRIVER_ALLOW_SLEEP_MSK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Cannot update the power, chain noise calibration running: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set power fail, ret = %d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iwl_power_set_mode(%struct.iwl_priv* %0, %struct.iwl_powertable_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.iwl_priv*, align 8
  %6 = alloca %struct.iwl_powertable_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.iwl_priv* %0, %struct.iwl_priv** %5, align 8
  store %struct.iwl_powertable_cmd* %1, %struct.iwl_powertable_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %11 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %10, i32 0, i32 3
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %14 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IWL_CHAIN_NOISE_DONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %21 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IWL_CHAIN_NOISE_ALIVE, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i1 [ true, %3 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %30 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %6, align 8
  %33 = call i32 @memcmp(i32* %31, %struct.iwl_powertable_cmd* %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %114

39:                                               ; preds = %35, %26
  %40 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %41 = call i32 @iwl_is_ready_rf(%struct.iwl_priv* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %114

46:                                               ; preds = %39
  %47 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %48 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %6, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.iwl_powertable_cmd* %50, i32 4)
  %52 = load i32, i32* @STATUS_SCANNING, align 4
  %53 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %54 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %53, i32 0, i32 2
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %63, label %60

60:                                               ; preds = %57
  %61 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %62 = call i32 @IWL_DEBUG_INFO(%struct.iwl_priv* %61, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %114

63:                                               ; preds = %57, %46
  %64 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %6, align 8
  %65 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @IWL_POWER_DRIVER_ALLOW_SLEEP_MSK, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %63
  %71 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %72 = call i32 @iwl_dvm_set_pmi(%struct.iwl_priv* %71, i32 1)
  br label %73

73:                                               ; preds = %70, %63
  %74 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %75 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %6, align 8
  %76 = call i32 @iwl_set_power(%struct.iwl_priv* %74, %struct.iwl_powertable_cmd* %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %108, label %79

79:                                               ; preds = %73
  %80 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %6, align 8
  %81 = getelementptr inbounds %struct.iwl_powertable_cmd, %struct.iwl_powertable_cmd* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @IWL_POWER_DRIVER_ALLOW_SLEEP_MSK, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %89, label %86

86:                                               ; preds = %79
  %87 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %88 = call i32 @iwl_dvm_set_pmi(%struct.iwl_priv* %87, i32 0)
  br label %89

89:                                               ; preds = %86, %79
  %90 = load i32, i32* %9, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %94 = call i32 @iwl_update_chain_flags(%struct.iwl_priv* %93)
  br label %102

95:                                               ; preds = %89
  %96 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %97 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %98 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %97, i32 0, i32 1
  %99 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @IWL_DEBUG_POWER(%struct.iwl_priv* %96, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %100)
  br label %102

102:                                              ; preds = %95, %92
  %103 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %104 = getelementptr inbounds %struct.iwl_priv, %struct.iwl_priv* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load %struct.iwl_powertable_cmd*, %struct.iwl_powertable_cmd** %6, align 8
  %107 = call i32 @memcpy(i32* %105, %struct.iwl_powertable_cmd* %106, i32 4)
  br label %112

108:                                              ; preds = %73
  %109 = load %struct.iwl_priv*, %struct.iwl_priv** %5, align 8
  %110 = load i32, i32* %8, align 4
  %111 = call i32 @IWL_ERR(%struct.iwl_priv* %109, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %110)
  br label %112

112:                                              ; preds = %108, %102
  %113 = load i32, i32* %8, align 4
  store i32 %113, i32* %4, align 4
  br label %114

114:                                              ; preds = %112, %60, %43, %38
  %115 = load i32, i32* %4, align 4
  ret i32 %115
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memcmp(i32*, %struct.iwl_powertable_cmd*, i32) #1

declare dso_local i32 @iwl_is_ready_rf(%struct.iwl_priv*) #1

declare dso_local i32 @memcpy(i32*, %struct.iwl_powertable_cmd*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @IWL_DEBUG_INFO(%struct.iwl_priv*, i8*) #1

declare dso_local i32 @iwl_dvm_set_pmi(%struct.iwl_priv*, i32) #1

declare dso_local i32 @iwl_set_power(%struct.iwl_priv*, %struct.iwl_powertable_cmd*) #1

declare dso_local i32 @iwl_update_chain_flags(%struct.iwl_priv*) #1

declare dso_local i32 @IWL_DEBUG_POWER(%struct.iwl_priv*, i8*, i64) #1

declare dso_local i32 @IWL_ERR(%struct.iwl_priv*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
