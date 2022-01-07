; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_zhenhua.c_zhenhua_connect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_zhenhua.c_zhenhua_connect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { i8*, i32 }
%struct.serio_driver = type { i32 }
%struct.zhenhua = type { %struct.input_dev*, i32 }
%struct.input_dev = type { i8*, i32*, %struct.TYPE_4__, %struct.TYPE_3__, i32 }
%struct.TYPE_4__ = type { i32* }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"%s/input0\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Zhen Hua 5-byte device\00", align 1
@BUS_RS232 = common dso_local global i32 0, align 4
@SERIO_ZHENHUA = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_Z = common dso_local global i32 0, align 4
@ABS_RZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, %struct.serio_driver*)* @zhenhua_connect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zhenhua_connect(%struct.serio* %0, %struct.serio_driver* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.serio*, align 8
  %5 = alloca %struct.serio_driver*, align 8
  %6 = alloca %struct.zhenhua*, align 8
  %7 = alloca %struct.input_dev*, align 8
  %8 = alloca i32, align 4
  store %struct.serio* %0, %struct.serio** %4, align 8
  store %struct.serio_driver* %1, %struct.serio_driver** %5, align 8
  %9 = load i32, i32* @ENOMEM, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %8, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.zhenhua* @kzalloc(i32 16, i32 %11)
  store %struct.zhenhua* %12, %struct.zhenhua** %6, align 8
  %13 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %13, %struct.input_dev** %7, align 8
  %14 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %15 = icmp ne %struct.zhenhua* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %18 = icmp ne %struct.input_dev* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16, %2
  br label %99

20:                                               ; preds = %16
  %21 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %22 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %23 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %22, i32 0, i32 0
  store %struct.input_dev* %21, %struct.input_dev** %23, align 8
  %24 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %25 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.serio*, %struct.serio** %4, align 8
  %28 = getelementptr inbounds %struct.serio, %struct.serio* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @snprintf(i32 %26, i32 4, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %32 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %31, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i8** %32, align 8
  %33 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %34 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %37 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %36, i32 0, i32 4
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @BUS_RS232, align 4
  %39 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %40 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 3
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* @SERIO_ZHENHUA, align 4
  %43 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %44 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 2
  store i32 %42, i32* %45, align 8
  %46 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %47 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  store i32 1, i32* %48, align 8
  %49 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %50 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %49, i32 0, i32 3
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 1
  store i32 256, i32* %51, align 4
  %52 = load %struct.serio*, %struct.serio** %4, align 8
  %53 = getelementptr inbounds %struct.serio, %struct.serio* %52, i32 0, i32 1
  %54 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 2
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* %53, i32** %56, align 8
  %57 = load i32, i32* @EV_ABS, align 4
  %58 = call i32 @BIT(i32 %57)
  %59 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 1
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 0
  store i32 %58, i32* %62, align 4
  %63 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %64 = load i32, i32* @ABS_X, align 4
  %65 = call i32 @input_set_abs_params(%struct.input_dev* %63, i32 %64, i32 50, i32 200, i32 0, i32 0)
  %66 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %67 = load i32, i32* @ABS_Y, align 4
  %68 = call i32 @input_set_abs_params(%struct.input_dev* %66, i32 %67, i32 50, i32 200, i32 0, i32 0)
  %69 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %70 = load i32, i32* @ABS_Z, align 4
  %71 = call i32 @input_set_abs_params(%struct.input_dev* %69, i32 %70, i32 50, i32 200, i32 0, i32 0)
  %72 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %73 = load i32, i32* @ABS_RZ, align 4
  %74 = call i32 @input_set_abs_params(%struct.input_dev* %72, i32 %73, i32 50, i32 200, i32 0, i32 0)
  %75 = load %struct.serio*, %struct.serio** %4, align 8
  %76 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %77 = call i32 @serio_set_drvdata(%struct.serio* %75, %struct.zhenhua* %76)
  %78 = load %struct.serio*, %struct.serio** %4, align 8
  %79 = load %struct.serio_driver*, %struct.serio_driver** %5, align 8
  %80 = call i32 @serio_open(%struct.serio* %78, %struct.serio_driver* %79)
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %20
  br label %96

84:                                               ; preds = %20
  %85 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %86 = getelementptr inbounds %struct.zhenhua, %struct.zhenhua* %85, i32 0, i32 0
  %87 = load %struct.input_dev*, %struct.input_dev** %86, align 8
  %88 = call i32 @input_register_device(%struct.input_dev* %87)
  store i32 %88, i32* %8, align 4
  %89 = load i32, i32* %8, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %84
  br label %93

92:                                               ; preds = %84
  store i32 0, i32* %3, align 4
  br label %105

93:                                               ; preds = %91
  %94 = load %struct.serio*, %struct.serio** %4, align 8
  %95 = call i32 @serio_close(%struct.serio* %94)
  br label %96

96:                                               ; preds = %93, %83
  %97 = load %struct.serio*, %struct.serio** %4, align 8
  %98 = call i32 @serio_set_drvdata(%struct.serio* %97, %struct.zhenhua* null)
  br label %99

99:                                               ; preds = %96, %19
  %100 = load %struct.input_dev*, %struct.input_dev** %7, align 8
  %101 = call i32 @input_free_device(%struct.input_dev* %100)
  %102 = load %struct.zhenhua*, %struct.zhenhua** %6, align 8
  %103 = call i32 @kfree(%struct.zhenhua* %102)
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %99, %92
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.zhenhua* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @input_set_abs_params(%struct.input_dev*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @serio_set_drvdata(%struct.serio*, %struct.zhenhua*) #1

declare dso_local i32 @serio_open(%struct.serio*, %struct.serio_driver*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @serio_close(%struct.serio*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.zhenhua*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
