; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_register_regulator.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_wm8350-regulator.c_wm8350_register_regulator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wm8350 = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.platform_device** }
%struct.platform_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.regulator_init_data* }
%struct.regulator_init_data = type { %struct.wm8350* }

@NUM_WM8350_REGULATORS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@WM8350_DCDC_1 = common dso_local global i32 0, align 4
@WM8350_DCDC_6 = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@WM8350_ISINK_A = common dso_local global i32 0, align 4
@WM8350_ISINK_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"wm8350-regulator\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Failed to register regulator %d: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wm8350_register_regulator(%struct.wm8350* %0, i32 %1, %struct.regulator_init_data* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wm8350*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.regulator_init_data*, align 8
  %8 = alloca %struct.platform_device*, align 8
  %9 = alloca i32, align 4
  store %struct.wm8350* %0, %struct.wm8350** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.regulator_init_data* %2, %struct.regulator_init_data** %7, align 8
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %3
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @NUM_WM8350_REGULATORS, align 4
  %15 = icmp sge i32 %13, %14
  br i1 %15, label %16, label %19

16:                                               ; preds = %12, %3
  %17 = load i32, i32* @EINVAL, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %123

19:                                               ; preds = %12
  %20 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %21 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load %struct.platform_device**, %struct.platform_device*** %22, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %23, i64 %25
  %27 = load %struct.platform_device*, %struct.platform_device** %26, align 8
  %28 = icmp ne %struct.platform_device* %27, null
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i32, i32* @EBUSY, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %123

32:                                               ; preds = %19
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @WM8350_DCDC_1, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @WM8350_DCDC_6, align 4
  %39 = icmp sle i32 %37, %38
  br i1 %39, label %40, label %50

40:                                               ; preds = %36
  %41 = load i32, i32* %6, align 4
  %42 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %43 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = icmp sgt i32 %41, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %40
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %4, align 4
  br label %123

50:                                               ; preds = %40, %36, %32
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* @WM8350_ISINK_A, align 4
  %53 = icmp sge i32 %51, %52
  br i1 %53, label %54, label %68

54:                                               ; preds = %50
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @WM8350_ISINK_B, align 4
  %57 = icmp sle i32 %55, %56
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = load i32, i32* %6, align 4
  %60 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %61 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %59, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %58
  %66 = load i32, i32* @ENODEV, align 4
  %67 = sub nsw i32 0, %66
  store i32 %67, i32* %4, align 4
  br label %123

68:                                               ; preds = %58, %54, %50
  %69 = load i32, i32* %6, align 4
  %70 = call %struct.platform_device* @platform_device_alloc(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %69)
  store %struct.platform_device* %70, %struct.platform_device** %8, align 8
  %71 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %72 = icmp ne %struct.platform_device* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %68
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %4, align 4
  br label %123

76:                                               ; preds = %68
  %77 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %78 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %79 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 2
  %81 = load %struct.platform_device**, %struct.platform_device*** %80, align 8
  %82 = load i32, i32* %6, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %81, i64 %83
  store %struct.platform_device* %77, %struct.platform_device** %84, align 8
  %85 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %86 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %87 = getelementptr inbounds %struct.regulator_init_data, %struct.regulator_init_data* %86, i32 0, i32 0
  store %struct.wm8350* %85, %struct.wm8350** %87, align 8
  %88 = load %struct.regulator_init_data*, %struct.regulator_init_data** %7, align 8
  %89 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %90 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i32 0, i32 1
  store %struct.regulator_init_data* %88, %struct.regulator_init_data** %91, align 8
  %92 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %93 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %96 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  store i32 %94, i32* %97, align 8
  %98 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %99 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %100 = call i32 @platform_set_drvdata(%struct.platform_device* %98, %struct.wm8350* %99)
  %101 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %102 = call i32 @platform_device_add(%struct.platform_device* %101)
  store i32 %102, i32* %9, align 4
  %103 = load i32, i32* %9, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %121

105:                                              ; preds = %76
  %106 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %107 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %106, i32 0, i32 1
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @dev_err(i32 %108, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %109, i32 %110)
  %112 = load %struct.platform_device*, %struct.platform_device** %8, align 8
  %113 = call i32 @platform_device_del(%struct.platform_device* %112)
  %114 = load %struct.wm8350*, %struct.wm8350** %5, align 8
  %115 = getelementptr inbounds %struct.wm8350, %struct.wm8350* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 2
  %117 = load %struct.platform_device**, %struct.platform_device*** %116, align 8
  %118 = load i32, i32* %6, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.platform_device*, %struct.platform_device** %117, i64 %119
  store %struct.platform_device* null, %struct.platform_device** %120, align 8
  br label %121

121:                                              ; preds = %105, %76
  %122 = load i32, i32* %9, align 4
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %121, %73, %65, %47, %29, %16
  %124 = load i32, i32* %4, align 4
  ret i32 %124
}

declare dso_local %struct.platform_device* @platform_device_alloc(i8*, i32) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.wm8350*) #1

declare dso_local i32 @platform_device_add(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @platform_device_del(%struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
