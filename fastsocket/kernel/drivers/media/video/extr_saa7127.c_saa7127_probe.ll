; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa7127.c_saa7127_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.i2c_device_id = type { i64 }
%struct.saa7127_state = type { i64, %struct.v4l2_subdev }
%struct.v4l2_subdev = type { i32 }
%struct.v4l2_sliced_vbi_data = type { i32, i32, i32, i32 }

@I2C_FUNC_SMBUS_BYTE_DATA = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"detecting saa7127 client on address 0x%x\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@saa7127_ops = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"saa7127 not found\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@SAA7129_REG_FADE_KEY_COL2 = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7129 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"saa7129\00", align 1
@I2C_NAME_SIZE = common dso_local global i32 0, align 4
@V4L2_IDENT_SAA7127 = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [8 x i8] c"saa7127\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"%s found @ 0x%x (%s)\0A\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"Configuring encoder\0A\00", align 1
@saa7127_init_config_common = common dso_local global i32 0, align 4
@V4L2_STD_NTSC = common dso_local global i32 0, align 4
@SAA7127_OUTPUT_TYPE_BOTH = common dso_local global i32 0, align 4
@test_image = common dso_local global i32 0, align 4
@SAA7127_INPUT_TYPE_TEST_IMAGE = common dso_local global i32 0, align 4
@SAA7127_INPUT_TYPE_NORMAL = common dso_local global i32 0, align 4
@saa7129_init_config_extra = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i2c_client*, %struct.i2c_device_id*)* @saa7127_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7127_probe(%struct.i2c_client* %0, %struct.i2c_device_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.i2c_client*, align 8
  %5 = alloca %struct.i2c_device_id*, align 8
  %6 = alloca %struct.saa7127_state*, align 8
  %7 = alloca %struct.v4l2_subdev*, align 8
  %8 = alloca %struct.v4l2_sliced_vbi_data, align 4
  %9 = alloca i32, align 4
  store %struct.i2c_client* %0, %struct.i2c_client** %4, align 8
  store %struct.i2c_device_id* %1, %struct.i2c_device_id** %5, align 8
  %10 = bitcast %struct.v4l2_sliced_vbi_data* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 16, i1 false)
  %11 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %12 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %11, i32 0, i32 1
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i32, i32* @I2C_FUNC_SMBUS_BYTE_DATA, align 4
  %15 = call i32 @i2c_check_functionality(%struct.TYPE_2__* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %161

20:                                               ; preds = %2
  %21 = load i32, i32* @debug, align 4
  %22 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %23 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %24 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = shl i32 %25, 1
  %27 = call i32 @v4l_dbg(i32 1, i32 %21, %struct.i2c_client* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %26)
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.saa7127_state* @kzalloc(i32 16, i32 %28)
  store %struct.saa7127_state* %29, %struct.saa7127_state** %6, align 8
  %30 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %31 = icmp eq %struct.saa7127_state* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %20
  %33 = load i32, i32* @ENOMEM, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %161

35:                                               ; preds = %20
  %36 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %37 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %36, i32 0, i32 1
  store %struct.v4l2_subdev* %37, %struct.v4l2_subdev** %7, align 8
  %38 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %39 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %40 = call i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev* %38, %struct.i2c_client* %39, i32* @saa7127_ops)
  %41 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %42 = call i32 @saa7127_read(%struct.v4l2_subdev* %41, i32 0)
  %43 = and i32 %42, 228
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %35
  %46 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %47 = call i32 @saa7127_read(%struct.v4l2_subdev* %46, i32 41)
  %48 = and i32 %47, 63
  %49 = icmp ne i32 %48, 29
  br i1 %49, label %50, label %58

50:                                               ; preds = %45, %35
  %51 = load i32, i32* @debug, align 4
  %52 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %53 = call i32 @v4l2_dbg(i32 1, i32 %51, %struct.v4l2_subdev* %52, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %54 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %55 = call i32 @kfree(%struct.saa7127_state* %54)
  %56 = load i32, i32* @ENODEV, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %161

58:                                               ; preds = %45
  %59 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %60 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %58
  %64 = load %struct.i2c_device_id*, %struct.i2c_device_id** %5, align 8
  %65 = getelementptr inbounds %struct.i2c_device_id, %struct.i2c_device_id* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %68 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %67, i32 0, i32 0
  store i64 %66, i64* %68, align 8
  br label %103

69:                                               ; preds = %58
  %70 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %71 = load i32, i32* @SAA7129_REG_FADE_KEY_COL2, align 4
  %72 = call i32 @saa7127_read(%struct.v4l2_subdev* %70, i32 %71)
  store i32 %72, i32* %9, align 4
  %73 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %74 = load i32, i32* @SAA7129_REG_FADE_KEY_COL2, align 4
  %75 = call i32 @saa7127_write(%struct.v4l2_subdev* %73, i32 %74, i32 170)
  %76 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %77 = load i32, i32* @SAA7129_REG_FADE_KEY_COL2, align 4
  %78 = call i32 @saa7127_read(%struct.v4l2_subdev* %76, i32 %77)
  %79 = icmp eq i32 %78, 170
  br i1 %79, label %80, label %93

80:                                               ; preds = %69
  %81 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %82 = load i32, i32* @SAA7129_REG_FADE_KEY_COL2, align 4
  %83 = load i32, i32* %9, align 4
  %84 = call i32 @saa7127_write(%struct.v4l2_subdev* %81, i32 %82, i32 %83)
  %85 = load i64, i64* @V4L2_IDENT_SAA7129, align 8
  %86 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %87 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %89 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 8
  %91 = load i32, i32* @I2C_NAME_SIZE, align 4
  %92 = call i32 @strlcpy(i32 %90, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %91)
  br label %102

93:                                               ; preds = %69
  %94 = load i64, i64* @V4L2_IDENT_SAA7127, align 8
  %95 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %96 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %95, i32 0, i32 0
  store i64 %94, i64* %96, align 8
  %97 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %98 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %97, i32 0, i32 2
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @I2C_NAME_SIZE, align 4
  %101 = call i32 @strlcpy(i32 %99, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %100)
  br label %102

102:                                              ; preds = %93, %80
  br label %103

103:                                              ; preds = %102, %63
  %104 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %105 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %106 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %109 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = shl i32 %110, 1
  %112 = load %struct.i2c_client*, %struct.i2c_client** %4, align 8
  %113 = getelementptr inbounds %struct.i2c_client, %struct.i2c_client* %112, i32 0, i32 1
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @v4l2_info(%struct.v4l2_subdev* %104, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0), i32 %107, i32 %111, i32 %116)
  %118 = load i32, i32* @debug, align 4
  %119 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %120 = call i32 @v4l2_dbg(i32 1, i32 %118, %struct.v4l2_subdev* %119, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  %121 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %122 = load i32, i32* @saa7127_init_config_common, align 4
  %123 = call i32 @saa7127_write_inittab(%struct.v4l2_subdev* %121, i32 %122)
  %124 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %125 = load i32, i32* @V4L2_STD_NTSC, align 4
  %126 = call i32 @saa7127_set_std(%struct.v4l2_subdev* %124, i32 %125)
  %127 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %128 = load i32, i32* @SAA7127_OUTPUT_TYPE_BOTH, align 4
  %129 = call i32 @saa7127_set_output_type(%struct.v4l2_subdev* %127, i32 %128)
  %130 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %131 = call i32 @saa7127_set_vps(%struct.v4l2_subdev* %130, %struct.v4l2_sliced_vbi_data* %8)
  %132 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %133 = call i32 @saa7127_set_wss(%struct.v4l2_subdev* %132, %struct.v4l2_sliced_vbi_data* %8)
  %134 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %135 = call i32 @saa7127_set_cc(%struct.v4l2_subdev* %134, %struct.v4l2_sliced_vbi_data* %8)
  %136 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %137 = call i32 @saa7127_set_xds(%struct.v4l2_subdev* %136, %struct.v4l2_sliced_vbi_data* %8)
  %138 = load i32, i32* @test_image, align 4
  %139 = icmp eq i32 %138, 1
  br i1 %139, label %140, label %144

140:                                              ; preds = %103
  %141 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %142 = load i32, i32* @SAA7127_INPUT_TYPE_TEST_IMAGE, align 4
  %143 = call i32 @saa7127_set_input_type(%struct.v4l2_subdev* %141, i32 %142)
  br label %148

144:                                              ; preds = %103
  %145 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %146 = load i32, i32* @SAA7127_INPUT_TYPE_NORMAL, align 4
  %147 = call i32 @saa7127_set_input_type(%struct.v4l2_subdev* %145, i32 %146)
  br label %148

148:                                              ; preds = %144, %140
  %149 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %150 = call i32 @saa7127_set_video_enable(%struct.v4l2_subdev* %149, i32 1)
  %151 = load %struct.saa7127_state*, %struct.saa7127_state** %6, align 8
  %152 = getelementptr inbounds %struct.saa7127_state, %struct.saa7127_state* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load i64, i64* @V4L2_IDENT_SAA7129, align 8
  %155 = icmp eq i64 %153, %154
  br i1 %155, label %156, label %160

156:                                              ; preds = %148
  %157 = load %struct.v4l2_subdev*, %struct.v4l2_subdev** %7, align 8
  %158 = load i32, i32* @saa7129_init_config_extra, align 4
  %159 = call i32 @saa7127_write_inittab(%struct.v4l2_subdev* %157, i32 %158)
  br label %160

160:                                              ; preds = %156, %148
  store i32 0, i32* %3, align 4
  br label %161

161:                                              ; preds = %160, %50, %32, %17
  %162 = load i32, i32* %3, align 4
  ret i32 %162
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @i2c_check_functionality(%struct.TYPE_2__*, i32) #2

declare dso_local i32 @v4l_dbg(i32, i32, %struct.i2c_client*, i8*, i32) #2

declare dso_local %struct.saa7127_state* @kzalloc(i32, i32) #2

declare dso_local i32 @v4l2_i2c_subdev_init(%struct.v4l2_subdev*, %struct.i2c_client*, i32*) #2

declare dso_local i32 @saa7127_read(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @v4l2_dbg(i32, i32, %struct.v4l2_subdev*, i8*) #2

declare dso_local i32 @kfree(%struct.saa7127_state*) #2

declare dso_local i32 @saa7127_write(%struct.v4l2_subdev*, i32, i32) #2

declare dso_local i32 @strlcpy(i32, i8*, i32) #2

declare dso_local i32 @v4l2_info(%struct.v4l2_subdev*, i8*, i32, i32, i32) #2

declare dso_local i32 @saa7127_write_inittab(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @saa7127_set_std(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @saa7127_set_output_type(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @saa7127_set_vps(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #2

declare dso_local i32 @saa7127_set_wss(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #2

declare dso_local i32 @saa7127_set_cc(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #2

declare dso_local i32 @saa7127_set_xds(%struct.v4l2_subdev*, %struct.v4l2_sliced_vbi_data*) #2

declare dso_local i32 @saa7127_set_input_type(%struct.v4l2_subdev*, i32) #2

declare dso_local i32 @saa7127_set_video_enable(%struct.v4l2_subdev*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
