; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_ucb1x00-ts.c_ucb1x00_ts_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucb1x00_dev = type { %struct.ucb1x00_ts*, %struct.TYPE_4__* }
%struct.ucb1x00_ts = type { %struct.TYPE_4__*, i32, %struct.input_dev* }
%struct.input_dev = type { i8*, i32, i32, i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@adcsync = common dso_local global i64 0, align 8
@UCB_SYNC = common dso_local global i32 0, align 4
@UCB_NOSYNC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"Touchscreen panel\00", align 1
@ucb1x00_ts_open = common dso_local global i32 0, align 4
@ucb1x00_ts_close = common dso_local global i32 0, align 4
@EV_ABS = common dso_local global i32 0, align 4
@ABS_X = common dso_local global i32 0, align 4
@ABS_Y = common dso_local global i32 0, align 4
@ABS_PRESSURE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ucb1x00_dev*)* @ucb1x00_ts_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ucb1x00_ts_add(%struct.ucb1x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ucb1x00_dev*, align 8
  %4 = alloca %struct.ucb1x00_ts*, align 8
  %5 = alloca %struct.input_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.ucb1x00_dev* %0, %struct.ucb1x00_dev** %3, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.ucb1x00_ts* @kzalloc(i32 24, i32 %7)
  store %struct.ucb1x00_ts* %8, %struct.ucb1x00_ts** %4, align 8
  %9 = call %struct.input_dev* (...) @input_allocate_device()
  store %struct.input_dev* %9, %struct.input_dev** %5, align 8
  %10 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %11 = icmp ne %struct.ucb1x00_ts* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %14 = icmp ne %struct.input_dev* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %12, %1
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %6, align 4
  br label %85

18:                                               ; preds = %12
  %19 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %3, align 8
  %20 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %23 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %22, i32 0, i32 0
  store %struct.TYPE_4__* %21, %struct.TYPE_4__** %23, align 8
  %24 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %25 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %26 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %25, i32 0, i32 2
  store %struct.input_dev* %24, %struct.input_dev** %26, align 8
  %27 = load i64, i64* @adcsync, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %18
  %30 = load i32, i32* @UCB_SYNC, align 4
  br label %33

31:                                               ; preds = %18
  %32 = load i32, i32* @UCB_NOSYNC, align 4
  br label %33

33:                                               ; preds = %31, %29
  %34 = phi i32 [ %30, %29 ], [ %32, %31 ]
  %35 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %36 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 8
  %37 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %38 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %37, i32 0, i32 0
  store i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8** %38, align 8
  %39 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %40 = getelementptr inbounds %struct.ucb1x00_ts, %struct.ucb1x00_ts* %39, i32 0, i32 0
  %41 = load %struct.TYPE_4__*, %struct.TYPE_4__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %45 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %44, i32 0, i32 5
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i32 %43, i32* %46, align 8
  %47 = load i32, i32* @ucb1x00_ts_open, align 4
  %48 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %49 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* @ucb1x00_ts_close, align 4
  %51 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %52 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %51, i32 0, i32 3
  store i32 %50, i32* %52, align 8
  %53 = load i32, i32* @EV_ABS, align 4
  %54 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %55 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @__set_bit(i32 %53, i32 %56)
  %58 = load i32, i32* @ABS_X, align 4
  %59 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %60 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @__set_bit(i32 %58, i32 %61)
  %63 = load i32, i32* @ABS_Y, align 4
  %64 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %65 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @__set_bit(i32 %63, i32 %66)
  %68 = load i32, i32* @ABS_PRESSURE, align 4
  %69 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %70 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = call i32 @__set_bit(i32 %68, i32 %71)
  %73 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %74 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %75 = call i32 @input_set_drvdata(%struct.input_dev* %73, %struct.ucb1x00_ts* %74)
  %76 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %77 = call i32 @input_register_device(%struct.input_dev* %76)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %33
  br label %85

81:                                               ; preds = %33
  %82 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %83 = load %struct.ucb1x00_dev*, %struct.ucb1x00_dev** %3, align 8
  %84 = getelementptr inbounds %struct.ucb1x00_dev, %struct.ucb1x00_dev* %83, i32 0, i32 0
  store %struct.ucb1x00_ts* %82, %struct.ucb1x00_ts** %84, align 8
  store i32 0, i32* %2, align 4
  br label %91

85:                                               ; preds = %80, %15
  %86 = load %struct.input_dev*, %struct.input_dev** %5, align 8
  %87 = call i32 @input_free_device(%struct.input_dev* %86)
  %88 = load %struct.ucb1x00_ts*, %struct.ucb1x00_ts** %4, align 8
  %89 = call i32 @kfree(%struct.ucb1x00_ts* %88)
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %91

91:                                               ; preds = %85, %81
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local %struct.ucb1x00_ts* @kzalloc(i32, i32) #1

declare dso_local %struct.input_dev* @input_allocate_device(...) #1

declare dso_local i32 @__set_bit(i32, i32) #1

declare dso_local i32 @input_set_drvdata(%struct.input_dev*, %struct.ucb1x00_ts*) #1

declare dso_local i32 @input_register_device(%struct.input_dev*) #1

declare dso_local i32 @input_free_device(%struct.input_dev*) #1

declare dso_local i32 @kfree(%struct.ucb1x00_ts*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
