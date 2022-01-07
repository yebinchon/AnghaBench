; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_power_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/iwlegacy/extr_common.c_il_power_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.il_priv = type { %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i32 (%struct.il_priv*)* }
%struct.il_powertable_cmd = type { i32 }

@IL_CHAIN_NOISE_DONE = common dso_local global i64 0, align 8
@IL_CHAIN_NOISE_ALIVE = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@S_SCANNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Defer power set mode while scanning\0A\00", align 1
@IL_POWER_DRIVER_ALLOW_SLEEP_MSK = common dso_local global i32 0, align 4
@S_POWER_PMI = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [62 x i8] c"Cannot update the power, chain noise calibration running: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"set power fail, ret = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.il_priv*, %struct.il_powertable_cmd*, i32)* @il_power_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @il_power_set_mode(%struct.il_priv* %0, %struct.il_powertable_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.il_priv*, align 8
  %6 = alloca %struct.il_powertable_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.il_priv* %0, %struct.il_priv** %5, align 8
  store %struct.il_powertable_cmd* %1, %struct.il_powertable_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %11 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %10, i32 0, i32 4
  %12 = call i32 @lockdep_assert_held(i32* %11)
  %13 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %14 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @IL_CHAIN_NOISE_DONE, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %3
  %20 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %21 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @IL_CHAIN_NOISE_ALIVE, align 8
  %25 = icmp eq i64 %23, %24
  br label %26

26:                                               ; preds = %19, %3
  %27 = phi i1 [ true, %3 ], [ %25, %19 ]
  %28 = zext i1 %27 to i32
  store i32 %28, i32* %9, align 4
  %29 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %30 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load %struct.il_powertable_cmd*, %struct.il_powertable_cmd** %6, align 8
  %33 = call i32 @memcmp(i32* %31, %struct.il_powertable_cmd* %32, i32 4)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %35
  store i32 0, i32* %4, align 4
  br label %135

39:                                               ; preds = %35, %26
  %40 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %41 = call i32 @il_is_ready_rf(%struct.il_priv* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %39
  %44 = load i32, i32* @EIO, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %4, align 4
  br label %135

46:                                               ; preds = %39
  %47 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %48 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load %struct.il_powertable_cmd*, %struct.il_powertable_cmd** %6, align 8
  %51 = call i32 @memcpy(i32* %49, %struct.il_powertable_cmd* %50, i32 4)
  %52 = load i32, i32* @S_SCANNING, align 4
  %53 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %54 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %53, i32 0, i32 3
  %55 = call i64 @test_bit(i32 %52, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %46
  %58 = load i32, i32* %7, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %62, label %60

60:                                               ; preds = %57
  %61 = call i32 @D_INFO(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %135

62:                                               ; preds = %57, %46
  %63 = load %struct.il_powertable_cmd*, %struct.il_powertable_cmd** %6, align 8
  %64 = getelementptr inbounds %struct.il_powertable_cmd, %struct.il_powertable_cmd* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @IL_POWER_DRIVER_ALLOW_SLEEP_MSK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %62
  %70 = load i32, i32* @S_POWER_PMI, align 4
  %71 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %72 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %71, i32 0, i32 3
  %73 = call i32 @set_bit(i32 %70, i32* %72)
  br label %74

74:                                               ; preds = %69, %62
  %75 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %76 = load %struct.il_powertable_cmd*, %struct.il_powertable_cmd** %6, align 8
  %77 = call i32 @il_set_power(%struct.il_priv* %75, %struct.il_powertable_cmd* %76)
  store i32 %77, i32* %8, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %130, label %80

80:                                               ; preds = %74
  %81 = load %struct.il_powertable_cmd*, %struct.il_powertable_cmd** %6, align 8
  %82 = getelementptr inbounds %struct.il_powertable_cmd, %struct.il_powertable_cmd* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @IL_POWER_DRIVER_ALLOW_SLEEP_MSK, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %92, label %87

87:                                               ; preds = %80
  %88 = load i32, i32* @S_POWER_PMI, align 4
  %89 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %90 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %89, i32 0, i32 3
  %91 = call i32 @clear_bit(i32 %88, i32* %90)
  br label %92

92:                                               ; preds = %87, %80
  %93 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %94 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %93, i32 0, i32 2
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %96, align 8
  %98 = icmp ne i32 (%struct.il_priv*)* %97, null
  br i1 %98, label %99, label %110

99:                                               ; preds = %92
  %100 = load i32, i32* %9, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %104 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %103, i32 0, i32 2
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %106, align 8
  %108 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %109 = call i32 %107(%struct.il_priv* %108)
  br label %124

110:                                              ; preds = %99, %92
  %111 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %112 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %111, i32 0, i32 2
  %113 = load %struct.TYPE_4__*, %struct.TYPE_4__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = load i32 (%struct.il_priv*)*, i32 (%struct.il_priv*)** %114, align 8
  %116 = icmp ne i32 (%struct.il_priv*)* %115, null
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %119 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = call i32 @D_POWER(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0), i64 %121)
  br label %123

123:                                              ; preds = %117, %110
  br label %124

124:                                              ; preds = %123, %102
  %125 = load %struct.il_priv*, %struct.il_priv** %5, align 8
  %126 = getelementptr inbounds %struct.il_priv, %struct.il_priv* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %126, i32 0, i32 0
  %128 = load %struct.il_powertable_cmd*, %struct.il_powertable_cmd** %6, align 8
  %129 = call i32 @memcpy(i32* %127, %struct.il_powertable_cmd* %128, i32 4)
  br label %133

130:                                              ; preds = %74
  %131 = load i32, i32* %8, align 4
  %132 = call i32 @IL_ERR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %131)
  br label %133

133:                                              ; preds = %130, %124
  %134 = load i32, i32* %8, align 4
  store i32 %134, i32* %4, align 4
  br label %135

135:                                              ; preds = %133, %60, %43, %38
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local i32 @memcmp(i32*, %struct.il_powertable_cmd*, i32) #1

declare dso_local i32 @il_is_ready_rf(%struct.il_priv*) #1

declare dso_local i32 @memcpy(i32*, %struct.il_powertable_cmd*, i32) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @D_INFO(i8*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @il_set_power(%struct.il_priv*, %struct.il_powertable_cmd*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @D_POWER(i8*, i64) #1

declare dso_local i32 @IL_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
