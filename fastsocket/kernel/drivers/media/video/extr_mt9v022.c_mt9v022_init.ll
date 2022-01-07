; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mt9v022.c_mt9v022_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }
%struct.mt9v022 = type { i32 }

@MT9V022_CHIP_CONTROL = common dso_local global i32 0, align 4
@MT9V022_READ_MODE = common dso_local global i32 0, align 4
@MT9V022_AEC_AGC_ENABLE = common dso_local global i32 0, align 4
@MT9V022_ANALOG_GAIN = common dso_local global i32 0, align 4
@MT9V022_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@MT9V022_MAX_TOTAL_SHUTTER_WIDTH = common dso_local global i32 0, align 4
@MT9V022_BLACK_LEVEL_CALIB_CTRL = common dso_local global i32 0, align 4
@MT9V022_DIGITAL_TEST_PATTERN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*)* @mt9v022_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt9v022_init(%struct.i2c_client* %0) #0 {
  %2 = alloca %struct.i2c_client*, align 8
  %3 = alloca %struct.mt9v022*, align 8
  %4 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %2, align 8
  %5 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %6 = call %struct.mt9v022* @to_mt9v022(%struct.i2c_client* %5)
  store %struct.mt9v022* %6, %struct.mt9v022** %3, align 8
  %7 = load %struct.mt9v022*, %struct.mt9v022** %3, align 8
  %8 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = or i32 %9, 16
  store i32 %10, i32* %8, align 4
  %11 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %12 = load i32, i32* @MT9V022_CHIP_CONTROL, align 4
  %13 = load %struct.mt9v022*, %struct.mt9v022** %3, align 8
  %14 = getelementptr inbounds %struct.mt9v022, %struct.mt9v022* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @reg_write(%struct.i2c_client* %11, i32 %12, i32 %15)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %1
  %20 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %21 = load i32, i32* @MT9V022_READ_MODE, align 4
  %22 = call i32 @reg_write(%struct.i2c_client* %20, i32 %21, i32 768)
  store i32 %22, i32* %4, align 4
  br label %23

23:                                               ; preds = %19, %1
  %24 = load i32, i32* %4, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %23
  %27 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %28 = load i32, i32* @MT9V022_AEC_AGC_ENABLE, align 4
  %29 = call i32 @reg_set(%struct.i2c_client* %27, i32 %28, i32 3)
  store i32 %29, i32* %4, align 4
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i32, i32* %4, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %37, label %33

33:                                               ; preds = %30
  %34 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %35 = load i32, i32* @MT9V022_ANALOG_GAIN, align 4
  %36 = call i32 @reg_write(%struct.i2c_client* %34, i32 %35, i32 16)
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %33, %30
  %38 = load i32, i32* %4, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %42 = load i32, i32* @MT9V022_TOTAL_SHUTTER_WIDTH, align 4
  %43 = call i32 @reg_write(%struct.i2c_client* %41, i32 %42, i32 480)
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %40, %37
  %45 = load i32, i32* %4, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %51, label %47

47:                                               ; preds = %44
  %48 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %49 = load i32, i32* @MT9V022_MAX_TOTAL_SHUTTER_WIDTH, align 4
  %50 = call i32 @reg_write(%struct.i2c_client* %48, i32 %49, i32 480)
  store i32 %50, i32* %4, align 4
  br label %51

51:                                               ; preds = %47, %44
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %51
  %55 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %56 = load i32, i32* @MT9V022_BLACK_LEVEL_CALIB_CTRL, align 4
  %57 = call i32 @reg_clear(%struct.i2c_client* %55, i32 %56, i32 1)
  store i32 %57, i32* %4, align 4
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32, i32* %4, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %65, label %61

61:                                               ; preds = %58
  %62 = load %struct.i2c_client*, %struct.i2c_client** %2, align 8
  %63 = load i32, i32* @MT9V022_DIGITAL_TEST_PATTERN, align 4
  %64 = call i32 @reg_write(%struct.i2c_client* %62, i32 %63, i32 0)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local %struct.mt9v022* @to_mt9v022(%struct.i2c_client*) #1

declare dso_local i32 @reg_write(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_set(%struct.i2c_client*, i32, i32) #1

declare dso_local i32 @reg_clear(%struct.i2c_client*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
