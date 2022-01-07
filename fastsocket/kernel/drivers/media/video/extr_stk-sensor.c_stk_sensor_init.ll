; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_stk-sensor.c_stk_sensor_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stk_camera = type { i32 }

@STK_IIC_ENABLE = common dso_local global i32 0, align 4
@STK_IIC_ENABLE_YES = common dso_local global i32 0, align 4
@STK_IIC_ADDR = common dso_local global i32 0, align 4
@SENSOR_ADDRESS = common dso_local global i32 0, align 4
@REG_COM7 = common dso_local global i32 0, align 4
@COM7_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Sensor resetting failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@REG_MIDH = common dso_local global i32 0, align 4
@REG_MIDL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"Strange error reading sensor ID\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Huh? you don't have a sensor from ovt\0A\00", align 1
@REG_PID = common dso_local global i32 0, align 4
@REG_VER = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"Could not read sensor model\0A\00", align 1
@ov_initvals = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [55 x i8] c"OmniVision sensor detected, id %02X%02X at address %x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @stk_sensor_init(%struct.stk_camera* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.stk_camera*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.stk_camera* %0, %struct.stk_camera** %3, align 8
  store i32 0, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %6 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %7 = load i32, i32* @STK_IIC_ENABLE, align 4
  %8 = load i32, i32* @STK_IIC_ENABLE_YES, align 4
  %9 = call i64 @stk_camera_write_reg(%struct.stk_camera* %6, i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %23, label %11

11:                                               ; preds = %1
  %12 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %13 = load i32, i32* @STK_IIC_ADDR, align 4
  %14 = load i32, i32* @SENSOR_ADDRESS, align 4
  %15 = call i64 @stk_camera_write_reg(%struct.stk_camera* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %11
  %18 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %19 = load i32, i32* @REG_COM7, align 4
  %20 = load i32, i32* @COM7_RESET, align 4
  %21 = call i64 @stk_sensor_outb(%struct.stk_camera* %18, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %17, %11, %1
  %24 = call i32 @STK_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %75

27:                                               ; preds = %17
  %28 = call i32 @msleep(i32 10)
  %29 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %30 = load i32, i32* @REG_MIDH, align 4
  %31 = call i64 @stk_sensor_inb(%struct.stk_camera* %29, i32 %30, i32* %5)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %27
  %34 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %35 = load i32, i32* @REG_MIDL, align 4
  %36 = call i64 @stk_sensor_inb(%struct.stk_camera* %34, i32 %35, i32* %4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %33, %27
  %39 = call i32 @STK_ERROR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  %40 = load i32, i32* @ENODEV, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %2, align 4
  br label %75

42:                                               ; preds = %33
  %43 = load i32, i32* %5, align 4
  %44 = icmp ne i32 %43, 127
  br i1 %44, label %48, label %45

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = icmp ne i32 %46, 162
  br i1 %47, label %48, label %52

48:                                               ; preds = %45, %42
  %49 = call i32 @STK_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @ENODEV, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %2, align 4
  br label %75

52:                                               ; preds = %45
  %53 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %54 = load i32, i32* @REG_PID, align 4
  %55 = call i64 @stk_sensor_inb(%struct.stk_camera* %53, i32 %54, i32* %5)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %62, label %57

57:                                               ; preds = %52
  %58 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %59 = load i32, i32* @REG_VER, align 4
  %60 = call i64 @stk_sensor_inb(%struct.stk_camera* %58, i32 %59, i32* %4)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %57, %52
  %63 = call i32 @STK_ERROR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %64 = load i32, i32* @ENODEV, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %2, align 4
  br label %75

66:                                               ; preds = %57
  %67 = load %struct.stk_camera*, %struct.stk_camera** %3, align 8
  %68 = load i32, i32* @ov_initvals, align 4
  %69 = call i32 @stk_sensor_write_regvals(%struct.stk_camera* %67, i32 %68)
  %70 = call i32 @msleep(i32 10)
  %71 = load i32, i32* %5, align 4
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @SENSOR_ADDRESS, align 4
  %74 = call i32 @STK_INFO(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.4, i64 0, i64 0), i32 %71, i32 %72, i32 %73)
  store i32 0, i32* %2, align 4
  br label %75

75:                                               ; preds = %66, %62, %48, %38, %23
  %76 = load i32, i32* %2, align 4
  ret i32 %76
}

declare dso_local i64 @stk_camera_write_reg(%struct.stk_camera*, i32, i32) #1

declare dso_local i64 @stk_sensor_outb(%struct.stk_camera*, i32, i32) #1

declare dso_local i32 @STK_ERROR(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i64 @stk_sensor_inb(%struct.stk_camera*, i32, i32*) #1

declare dso_local i32 @stk_sensor_write_regvals(%struct.stk_camera*, i32) #1

declare dso_local i32 @STK_INFO(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
