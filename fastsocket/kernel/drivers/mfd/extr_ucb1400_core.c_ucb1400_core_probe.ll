; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1400_core.c_ucb1400_core_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1400_core.c_ucb1400_core_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.ucb1400 = type { i8*, i8* }
%struct.ucb1400_ts = type { i64, %struct.snd_ac97* }
%struct.snd_ac97 = type { i32 }
%struct.ucb1400_gpio = type { i64, %struct.snd_ac97* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@UCB_ID = common dso_local global i32 0, align 4
@UCB_ID_1400 = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"ucb1400_gpio\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"ucb1400_ts\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @ucb1400_core_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1400_core_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucb1400*, align 8
  %6 = alloca %struct.ucb1400_ts, align 8
  %7 = alloca %struct.ucb1400_gpio, align 8
  %8 = alloca %struct.snd_ac97*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = call i32 @memset(%struct.ucb1400_ts* %6, i32 0, i32 16)
  %10 = bitcast %struct.ucb1400_gpio* %7 to %struct.ucb1400_ts*
  %11 = call i32 @memset(%struct.ucb1400_ts* %10, i32 0, i32 16)
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.ucb1400* @kzalloc(i32 16, i32 %12)
  store %struct.ucb1400* %13, %struct.ucb1400** %5, align 8
  %14 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %15 = icmp ne %struct.ucb1400* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %114

19:                                               ; preds = %1
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %22 = call i32 @dev_set_drvdata(%struct.device* %20, %struct.ucb1400* %21)
  %23 = load %struct.device*, %struct.device** %3, align 8
  %24 = call %struct.snd_ac97* @to_ac97_t(%struct.device* %23)
  store %struct.snd_ac97* %24, %struct.snd_ac97** %8, align 8
  %25 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %26 = load i32, i32* @UCB_ID, align 4
  %27 = call i64 @ucb1400_reg_read(%struct.snd_ac97* %25, i32 %26)
  %28 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 0
  store i64 %27, i64* %28, align 8
  %29 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @UCB_ID_1400, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %19
  %34 = load i32, i32* @ENODEV, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %111

36:                                               ; preds = %19
  %37 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %38 = getelementptr inbounds %struct.ucb1400_gpio, %struct.ucb1400_gpio* %7, i32 0, i32 1
  store %struct.snd_ac97* %37, %struct.snd_ac97** %38, align 8
  %39 = call i8* @platform_device_alloc(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 -1)
  %40 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %41 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %40, i32 0, i32 0
  store i8* %39, i8** %41, align 8
  %42 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %43 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %36
  %47 = load i32, i32* @ENOMEM, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %111

49:                                               ; preds = %36
  %50 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %51 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = bitcast %struct.ucb1400_gpio* %7 to %struct.ucb1400_ts*
  %54 = call i32 @platform_device_add_data(i8* %52, %struct.ucb1400_ts* %53, i32 16)
  store i32 %54, i32* %4, align 4
  %55 = load i32, i32* %4, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %49
  br label %106

58:                                               ; preds = %49
  %59 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %60 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @platform_device_add(i8* %61)
  store i32 %62, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %58
  br label %106

66:                                               ; preds = %58
  %67 = load %struct.snd_ac97*, %struct.snd_ac97** %8, align 8
  %68 = getelementptr inbounds %struct.ucb1400_ts, %struct.ucb1400_ts* %6, i32 0, i32 1
  store %struct.snd_ac97* %67, %struct.snd_ac97** %68, align 8
  %69 = call i8* @platform_device_alloc(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %70 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %71 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %70, i32 0, i32 1
  store i8* %69, i8** %71, align 8
  %72 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %73 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = icmp ne i8* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %66
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %101

79:                                               ; preds = %66
  %80 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %81 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %80, i32 0, i32 1
  %82 = load i8*, i8** %81, align 8
  %83 = call i32 @platform_device_add_data(i8* %82, %struct.ucb1400_ts* %6, i32 16)
  store i32 %83, i32* %4, align 4
  %84 = load i32, i32* %4, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %79
  br label %96

87:                                               ; preds = %79
  %88 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %89 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %88, i32 0, i32 1
  %90 = load i8*, i8** %89, align 8
  %91 = call i32 @platform_device_add(i8* %90)
  store i32 %91, i32* %4, align 4
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  br label %96

95:                                               ; preds = %87
  store i32 0, i32* %2, align 4
  br label %116

96:                                               ; preds = %94, %86
  %97 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %98 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %97, i32 0, i32 1
  %99 = load i8*, i8** %98, align 8
  %100 = call i32 @platform_device_put(i8* %99)
  br label %101

101:                                              ; preds = %96, %76
  %102 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %103 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %102, i32 0, i32 0
  %104 = load i8*, i8** %103, align 8
  %105 = call i32 @platform_device_unregister(i8* %104)
  br label %106

106:                                              ; preds = %101, %65, %57
  %107 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %108 = getelementptr inbounds %struct.ucb1400, %struct.ucb1400* %107, i32 0, i32 0
  %109 = load i8*, i8** %108, align 8
  %110 = call i32 @platform_device_put(i8* %109)
  br label %111

111:                                              ; preds = %106, %46, %33
  %112 = load %struct.ucb1400*, %struct.ucb1400** %5, align 8
  %113 = call i32 @kfree(%struct.ucb1400* %112)
  br label %114

114:                                              ; preds = %111, %16
  %115 = load i32, i32* %4, align 4
  store i32 %115, i32* %2, align 4
  br label %116

116:                                              ; preds = %114, %95
  %117 = load i32, i32* %2, align 4
  ret i32 %117
}

declare dso_local i32 @memset(%struct.ucb1400_ts*, i32, i32) #1

declare dso_local %struct.ucb1400* @kzalloc(i32, i32) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.ucb1400*) #1

declare dso_local %struct.snd_ac97* @to_ac97_t(%struct.device*) #1

declare dso_local i64 @ucb1400_reg_read(%struct.snd_ac97*, i32) #1

declare dso_local i8* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_device_add_data(i8*, %struct.ucb1400_ts*, i32) #1

declare dso_local i32 @platform_device_add(i8*) #1

declare dso_local i32 @platform_device_put(i8*) #1

declare dso_local i32 @platform_device_unregister(i8*) #1

declare dso_local i32 @kfree(%struct.ucb1400*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
