; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_do_mode_ctrl_overrides.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-avcore.c_cx231xx_do_mode_ctrl_overrides.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

@.str = private unnamed_addr constant [31 x i8] c"do_mode_ctrl_overrides : 0x%x\0A\00", align 1
@DFE_CTRL3 = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@V4L2_STD_PAL_M = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"do_mode_ctrl_overrides NTSC\0A\00", align 1
@VID_BLK_I2C_ADDRESS = common dso_local global i32 0, align 4
@VERT_TIM_CTRL = common dso_local global i32 0, align 4
@FLD_VBLANK_CNT = common dso_local global i32 0, align 4
@FLD_VACTIVE_CNT = common dso_local global i32 0, align 4
@FLD_V656BLANK_CNT = common dso_local global i32 0, align 4
@HORIZ_TIM_CTRL = common dso_local global i32 0, align 4
@FLD_HBLANK_CNT = common dso_local global i32 0, align 4
@V4L2_STD_SECAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [30 x i8] c"do_mode_ctrl_overrides SECAM\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"do_mode_ctrl_overrides PAL\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_do_mode_ctrl_overrides(%struct.cx231xx* %0) #0 {
  %2 = alloca %struct.cx231xx*, align 8
  %3 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %5 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %6)
  %8 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %9 = load i32, i32* @DFE_CTRL3, align 4
  %10 = call i32 @vid_blk_write_word(%struct.cx231xx* %8, i32 %9, i32 -851508608)
  store i32 %10, i32* %3, align 4
  %11 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %12 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @V4L2_STD_NTSC, align 4
  %15 = load i32, i32* @V4L2_STD_PAL_M, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %43

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %21 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %22 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %23 = load i32, i32* @VERT_TIM_CTRL, align 4
  %24 = load i32, i32* @FLD_VBLANK_CNT, align 4
  %25 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %21, i32 %22, i32 %23, i32 %24, i32 24)
  store i32 %25, i32* %3, align 4
  %26 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %27 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %28 = load i32, i32* @VERT_TIM_CTRL, align 4
  %29 = load i32, i32* @FLD_VACTIVE_CNT, align 4
  %30 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %26, i32 %27, i32 %28, i32 %29, i32 1994752)
  store i32 %30, i32* %3, align 4
  %31 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %32 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %33 = load i32, i32* @VERT_TIM_CTRL, align 4
  %34 = load i32, i32* @FLD_V656BLANK_CNT, align 4
  %35 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %31, i32 %32, i32 %33, i32 %34, i32 469762048)
  store i32 %35, i32* %3, align 4
  %36 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %37 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %38 = load i32, i32* @HORIZ_TIM_CTRL, align 4
  %39 = load i32, i32* @FLD_HBLANK_CNT, align 4
  %40 = load i32, i32* @FLD_HBLANK_CNT, align 4
  %41 = call i32 @cx231xx_set_field(i32 %40, i32 121)
  %42 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %36, i32 %37, i32 %38, i32 %39, i32 %41)
  store i32 %42, i32* %3, align 4
  br label %107

43:                                               ; preds = %1
  %44 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @V4L2_STD_SECAM, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %78

50:                                               ; preds = %43
  %51 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %52 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %53 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %54 = load i32, i32* @VERT_TIM_CTRL, align 4
  %55 = load i32, i32* @FLD_VBLANK_CNT, align 4
  %56 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %52, i32 %53, i32 %54, i32 %55, i32 32)
  store i32 %56, i32* %3, align 4
  %57 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %58 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %59 = load i32, i32* @VERT_TIM_CTRL, align 4
  %60 = load i32, i32* @FLD_VACTIVE_CNT, align 4
  %61 = load i32, i32* @FLD_VACTIVE_CNT, align 4
  %62 = call i32 @cx231xx_set_field(i32 %61, i32 580)
  %63 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %57, i32 %58, i32 %59, i32 %60, i32 %62)
  store i32 %63, i32* %3, align 4
  %64 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %65 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %66 = load i32, i32* @VERT_TIM_CTRL, align 4
  %67 = load i32, i32* @FLD_V656BLANK_CNT, align 4
  %68 = load i32, i32* @FLD_V656BLANK_CNT, align 4
  %69 = call i32 @cx231xx_set_field(i32 %68, i32 36)
  %70 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %64, i32 %65, i32 %66, i32 %67, i32 %69)
  store i32 %70, i32* %3, align 4
  %71 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %72 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %73 = load i32, i32* @HORIZ_TIM_CTRL, align 4
  %74 = load i32, i32* @FLD_HBLANK_CNT, align 4
  %75 = load i32, i32* @FLD_HBLANK_CNT, align 4
  %76 = call i32 @cx231xx_set_field(i32 %75, i32 133)
  %77 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %71, i32 %72, i32 %73, i32 %74, i32 %76)
  store i32 %77, i32* %3, align 4
  br label %106

78:                                               ; preds = %43
  %79 = call i32 (i8*, ...) @cx231xx_info(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %80 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %81 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %82 = load i32, i32* @VERT_TIM_CTRL, align 4
  %83 = load i32, i32* @FLD_VBLANK_CNT, align 4
  %84 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %80, i32 %81, i32 %82, i32 %83, i32 32)
  store i32 %84, i32* %3, align 4
  %85 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %86 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %87 = load i32, i32* @VERT_TIM_CTRL, align 4
  %88 = load i32, i32* @FLD_VACTIVE_CNT, align 4
  %89 = load i32, i32* @FLD_VACTIVE_CNT, align 4
  %90 = call i32 @cx231xx_set_field(i32 %89, i32 580)
  %91 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %85, i32 %86, i32 %87, i32 %88, i32 %90)
  store i32 %91, i32* %3, align 4
  %92 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %93 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %94 = load i32, i32* @VERT_TIM_CTRL, align 4
  %95 = load i32, i32* @FLD_V656BLANK_CNT, align 4
  %96 = load i32, i32* @FLD_V656BLANK_CNT, align 4
  %97 = call i32 @cx231xx_set_field(i32 %96, i32 36)
  %98 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %92, i32 %93, i32 %94, i32 %95, i32 %97)
  store i32 %98, i32* %3, align 4
  %99 = load %struct.cx231xx*, %struct.cx231xx** %2, align 8
  %100 = load i32, i32* @VID_BLK_I2C_ADDRESS, align 4
  %101 = load i32, i32* @HORIZ_TIM_CTRL, align 4
  %102 = load i32, i32* @FLD_HBLANK_CNT, align 4
  %103 = load i32, i32* @FLD_HBLANK_CNT, align 4
  %104 = call i32 @cx231xx_set_field(i32 %103, i32 133)
  %105 = call i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx* %99, i32 %100, i32 %101, i32 %102, i32 %104)
  store i32 %105, i32* %3, align 4
  br label %106

106:                                              ; preds = %78, %50
  br label %107

107:                                              ; preds = %106, %19
  %108 = load i32, i32* %3, align 4
  ret i32 %108
}

declare dso_local i32 @cx231xx_info(i8*, ...) #1

declare dso_local i32 @vid_blk_write_word(%struct.cx231xx*, i32, i32) #1

declare dso_local i32 @cx231xx_read_modify_write_i2c_dword(%struct.cx231xx*, i32, i32, i32, i32) #1

declare dso_local i32 @cx231xx_set_field(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
