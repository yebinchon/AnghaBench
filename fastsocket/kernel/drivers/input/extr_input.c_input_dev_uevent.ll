; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_dev_uevent.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_input.c_input_dev_uevent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.kobj_uevent_env = type { i32 }
%struct.input_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i64, i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [20 x i8] c"PRODUCT=%x/%x/%x/%x\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"NAME=\22%s\22\00", align 1
@.str.2 = private unnamed_addr constant [10 x i8] c"PHYS=\22%s\22\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"UNIQ=\22%s\22\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"EV=\00", align 1
@EV_MAX = common dso_local global i32 0, align 4
@EV_KEY = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [5 x i8] c"KEY=\00", align 1
@KEY_MAX = common dso_local global i32 0, align 4
@EV_REL = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [5 x i8] c"REL=\00", align 1
@REL_MAX = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [5 x i8] c"ABS=\00", align 1
@ABS_MAX = common dso_local global i32 0, align 4
@EV_MSC = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"MSC=\00", align 1
@MSC_MAX = common dso_local global i32 0, align 4
@EV_LED = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [5 x i8] c"LED=\00", align 1
@LED_MAX = common dso_local global i32 0, align 4
@EV_SND = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [5 x i8] c"SND=\00", align 1
@SND_MAX = common dso_local global i32 0, align 4
@EV_FF = common dso_local global i32 0, align 4
@.str.11 = private unnamed_addr constant [4 x i8] c"FF=\00", align 1
@FF_MAX = common dso_local global i32 0, align 4
@EV_SW = common dso_local global i32 0, align 4
@.str.12 = private unnamed_addr constant [4 x i8] c"SW=\00", align 1
@SW_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.kobj_uevent_env*)* @input_dev_uevent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @input_dev_uevent(%struct.device* %0, %struct.kobj_uevent_env* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.kobj_uevent_env*, align 8
  %5 = alloca %struct.input_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.kobj_uevent_env* %1, %struct.kobj_uevent_env** %4, align 8
  %6 = load %struct.device*, %struct.device** %3, align 8
  %7 = call %struct.input_dev* @to_input_dev(%struct.device* %6)
  store %struct.input_dev* %7, %struct.input_dev** %5, align 8
  %8 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %9 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %8, i32 0, i32 12
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = sext i32 %11 to i64
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %13, i32 0, i32 12
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %18 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %17, i32 0, i32 12
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %22 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %21, i32 0, i32 12
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i64 %12, i32 %16, i32 %20, i32 %24)
  %26 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %27 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %26, i32 0, i32 11
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %2
  %31 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 11
  %33 = load i64, i64* %32, align 8
  %34 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %30, %2
  %36 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 10
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %42 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %41, i32 0, i32 10
  %43 = load i64, i64* %42, align 8
  %44 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.2, i64 0, i64 0), i64 %43)
  br label %45

45:                                               ; preds = %40, %35
  %46 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 9
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %45
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 9
  %53 = load i64, i64* %52, align 8
  %54 = call i32 (i8*, i64, ...) @INPUT_ADD_HOTPLUG_VAR(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i64 %53)
  br label %55

55:                                               ; preds = %50, %45
  %56 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %57 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* @EV_MAX, align 4
  %60 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* @EV_KEY, align 4
  %62 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %63 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i64 @test_bit(i32 %61, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %69 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %68, i32 0, i32 8
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @KEY_MAX, align 4
  %72 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i32 %70, i32 %71)
  br label %73

73:                                               ; preds = %67, %55
  %74 = load i32, i32* @EV_REL, align 4
  %75 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %76 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i64 @test_bit(i32 %74, i32 %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %86

80:                                               ; preds = %73
  %81 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %82 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %81, i32 0, i32 7
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @REL_MAX, align 4
  %85 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %83, i32 %84)
  br label %86

86:                                               ; preds = %80, %73
  %87 = load i32, i32* @EV_ABS, align 4
  %88 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %89 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = call i64 @test_bit(i32 %87, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %86
  %94 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %95 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %94, i32 0, i32 6
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @ABS_MAX, align 4
  %98 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.7, i64 0, i64 0), i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %93, %86
  %100 = load i32, i32* @EV_MSC, align 4
  %101 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %102 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = call i64 @test_bit(i32 %100, i32 %103)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %112

106:                                              ; preds = %99
  %107 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %108 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %107, i32 0, i32 5
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* @MSC_MAX, align 4
  %111 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %109, i32 %110)
  br label %112

112:                                              ; preds = %106, %99
  %113 = load i32, i32* @EV_LED, align 4
  %114 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %115 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = call i64 @test_bit(i32 %113, i32 %116)
  %118 = icmp ne i64 %117, 0
  br i1 %118, label %119, label %125

119:                                              ; preds = %112
  %120 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %121 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %120, i32 0, i32 4
  %122 = load i32, i32* %121, align 8
  %123 = load i32, i32* @LED_MAX, align 4
  %124 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.9, i64 0, i64 0), i32 %122, i32 %123)
  br label %125

125:                                              ; preds = %119, %112
  %126 = load i32, i32* @EV_SND, align 4
  %127 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %128 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i64 @test_bit(i32 %126, i32 %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %138

132:                                              ; preds = %125
  %133 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %134 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %133, i32 0, i32 3
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @SND_MAX, align 4
  %137 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.10, i64 0, i64 0), i32 %135, i32 %136)
  br label %138

138:                                              ; preds = %132, %125
  %139 = load i32, i32* @EV_FF, align 4
  %140 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %141 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = call i64 @test_bit(i32 %139, i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %151

145:                                              ; preds = %138
  %146 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %147 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = load i32, i32* @FF_MAX, align 4
  %150 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.11, i64 0, i64 0), i32 %148, i32 %149)
  br label %151

151:                                              ; preds = %145, %138
  %152 = load i32, i32* @EV_SW, align 4
  %153 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %154 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %153, i32 0, i32 1
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @test_bit(i32 %152, i32 %155)
  %157 = icmp ne i64 %156, 0
  br i1 %157, label %158, label %164

158:                                              ; preds = %151
  %159 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %160 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = load i32, i32* @SW_MAX, align 4
  %163 = call i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0), i32 %161, i32 %162)
  br label %164

164:                                              ; preds = %158, %151
  %165 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %166 = call i32 @INPUT_ADD_HOTPLUG_MODALIAS_VAR(%struct.input_dev* %165)
  ret i32 0
}

declare dso_local %struct.input_dev* @to_input_dev(%struct.device*) #1

declare dso_local i32 @INPUT_ADD_HOTPLUG_VAR(i8*, i64, ...) #1

declare dso_local i32 @INPUT_ADD_HOTPLUG_BM_VAR(i8*, i32, i32) #1

declare dso_local i64 @test_bit(i32, i32) #1

declare dso_local i32 @INPUT_ADD_HOTPLUG_MODALIAS_VAR(%struct.input_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
