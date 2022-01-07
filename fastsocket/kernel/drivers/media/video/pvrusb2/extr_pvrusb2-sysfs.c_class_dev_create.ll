; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_class_dev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-sysfs.c_class_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_sysfs = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.device*, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_4__ }
%struct.device = type { i32, i32* }
%struct.TYPE_6__ = type { i32*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_4__ = type { i32 }
%struct.pvr2_sysfs_class = type { i32 }
%struct.usb_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Creating class_dev id=%p\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@PVR2_TRACE_ERROR_LEGS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [23 x i8] c"device_register failed\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"v4l_minor_number\00", align 1
@S_IRUGO = common dso_local global i8* null, align 8
@v4l_minor_number_show = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"device_create_file error: %d\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"v4l_radio_minor_number\00", align 1
@v4l_radio_minor_number_show = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"unit_number\00", align 1
@unit_number_show = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [13 x i8] c"bus_info_str\00", align 1
@bus_info_show = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [21 x i8] c"device_hardware_type\00", align 1
@hdw_name_show = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [28 x i8] c"device_hardware_description\00", align 1
@hdw_desc_show = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_sysfs*, %struct.pvr2_sysfs_class*)* @class_dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @class_dev_create(%struct.pvr2_sysfs* %0, %struct.pvr2_sysfs_class* %1) #0 {
  %3 = alloca %struct.pvr2_sysfs*, align 8
  %4 = alloca %struct.pvr2_sysfs_class*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca %struct.device*, align 8
  %7 = alloca i32, align 4
  store %struct.pvr2_sysfs* %0, %struct.pvr2_sysfs** %3, align 8
  store %struct.pvr2_sysfs_class* %1, %struct.pvr2_sysfs_class** %4, align 8
  %8 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %9 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %8, i32 0, i32 13
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = call %struct.usb_device* @pvr2_hdw_get_dev(i32 %11)
  store %struct.usb_device* %12, %struct.usb_device** %5, align 8
  %13 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %14 = icmp ne %struct.usb_device* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %2
  br label %251

16:                                               ; preds = %2
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call %struct.device* @kzalloc(i32 16, i32 %17)
  store %struct.device* %18, %struct.device** %6, align 8
  %19 = load %struct.device*, %struct.device** %6, align 8
  %20 = icmp ne %struct.device* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %16
  br label %251

22:                                               ; preds = %16
  %23 = load %struct.device*, %struct.device** %6, align 8
  %24 = call i32 @pvr2_sysfs_trace(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), %struct.device* %23)
  %25 = load %struct.pvr2_sysfs_class*, %struct.pvr2_sysfs_class** %4, align 8
  %26 = getelementptr inbounds %struct.pvr2_sysfs_class, %struct.pvr2_sysfs_class* %25, i32 0, i32 0
  %27 = load %struct.device*, %struct.device** %6, align 8
  %28 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 1
  store i32* %26, i32** %28, align 8
  %29 = load %struct.device*, %struct.device** %6, align 8
  %30 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %31 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %30, i32 0, i32 13
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @pvr2_hdw_get_device_identifier(i32 %33)
  %35 = call i32 @dev_set_name(%struct.device* %29, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %34)
  %36 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %37 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %36, i32 0, i32 0
  %38 = call i32 @get_device(i32* %37)
  %39 = load %struct.device*, %struct.device** %6, align 8
  %40 = getelementptr inbounds %struct.device, %struct.device* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 8
  %41 = load %struct.device*, %struct.device** %6, align 8
  %42 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %43 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %42, i32 0, i32 7
  store %struct.device* %41, %struct.device** %43, align 8
  %44 = load %struct.device*, %struct.device** %6, align 8
  %45 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %46 = call i32 @dev_set_drvdata(%struct.device* %44, %struct.pvr2_sysfs* %45)
  %47 = load %struct.device*, %struct.device** %6, align 8
  %48 = call i32 @device_register(%struct.device* %47)
  store i32 %48, i32* %7, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %22
  %52 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %53 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  %54 = load %struct.device*, %struct.device** %6, align 8
  %55 = call i32 @put_device(%struct.device* %54)
  br label %251

56:                                               ; preds = %22
  %57 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %58 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %57, i32 0, i32 12
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i8** %60, align 8
  %61 = load i8*, i8** @S_IRUGO, align 8
  %62 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %63 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %62, i32 0, i32 12
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 1
  store i8* %61, i8** %65, align 8
  %66 = load i32, i32* @v4l_minor_number_show, align 4
  %67 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %68 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %67, i32 0, i32 12
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 1
  store i32 %66, i32* %69, align 8
  %70 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %71 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %70, i32 0, i32 12
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  store i32* null, i32** %72, align 8
  %73 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %74 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %73, i32 0, i32 7
  %75 = load %struct.device*, %struct.device** %74, align 8
  %76 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %77 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %76, i32 0, i32 12
  %78 = call i32 @device_create_file(%struct.device* %75, %struct.TYPE_6__* %77)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %56
  %82 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %82, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %83)
  br label %88

85:                                               ; preds = %56
  %86 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %87 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  br label %88

88:                                               ; preds = %85, %81
  %89 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %90 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %89, i32 0, i32 11
  %91 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i32 0, i32 0
  store i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i8** %92, align 8
  %93 = load i8*, i8** @S_IRUGO, align 8
  %94 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %95 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %94, i32 0, i32 11
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 1
  store i8* %93, i8** %97, align 8
  %98 = load i32, i32* @v4l_radio_minor_number_show, align 4
  %99 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %100 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %99, i32 0, i32 11
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %100, i32 0, i32 1
  store i32 %98, i32* %101, align 8
  %102 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %103 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %102, i32 0, i32 11
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  store i32* null, i32** %104, align 8
  %105 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %106 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %105, i32 0, i32 7
  %107 = load %struct.device*, %struct.device** %106, align 8
  %108 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %109 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %108, i32 0, i32 11
  %110 = call i32 @device_create_file(%struct.device* %107, %struct.TYPE_6__* %109)
  store i32 %110, i32* %7, align 4
  %111 = load i32, i32* %7, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %117

113:                                              ; preds = %88
  %114 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %115 = load i32, i32* %7, align 4
  %116 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %114, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %115)
  br label %120

117:                                              ; preds = %88
  %118 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %119 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %118, i32 0, i32 1
  store i32 1, i32* %119, align 4
  br label %120

120:                                              ; preds = %117, %113
  %121 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %122 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %121, i32 0, i32 10
  %123 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %122, i32 0, i32 2
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 0
  store i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i8** %124, align 8
  %125 = load i8*, i8** @S_IRUGO, align 8
  %126 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %127 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %126, i32 0, i32 10
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 1
  store i8* %125, i8** %129, align 8
  %130 = load i32, i32* @unit_number_show, align 4
  %131 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %132 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %131, i32 0, i32 10
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  store i32 %130, i32* %133, align 8
  %134 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %135 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %134, i32 0, i32 10
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i32* null, i32** %136, align 8
  %137 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %138 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %137, i32 0, i32 7
  %139 = load %struct.device*, %struct.device** %138, align 8
  %140 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %141 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %140, i32 0, i32 10
  %142 = call i32 @device_create_file(%struct.device* %139, %struct.TYPE_6__* %141)
  store i32 %142, i32* %7, align 4
  %143 = load i32, i32* %7, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %149

145:                                              ; preds = %120
  %146 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %147 = load i32, i32* %7, align 4
  %148 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %146, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %147)
  br label %152

149:                                              ; preds = %120
  %150 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %151 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %150, i32 0, i32 2
  store i32 1, i32* %151, align 8
  br label %152

152:                                              ; preds = %149, %145
  %153 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %154 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %153, i32 0, i32 9
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 2
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  store i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i64 0, i64 0), i8** %156, align 8
  %157 = load i8*, i8** @S_IRUGO, align 8
  %158 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %159 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %158, i32 0, i32 9
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 2
  %161 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %160, i32 0, i32 1
  store i8* %157, i8** %161, align 8
  %162 = load i32, i32* @bus_info_show, align 4
  %163 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %164 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %163, i32 0, i32 9
  %165 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %164, i32 0, i32 1
  store i32 %162, i32* %165, align 8
  %166 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %167 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %166, i32 0, i32 9
  %168 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %167, i32 0, i32 0
  store i32* null, i32** %168, align 8
  %169 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %170 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %169, i32 0, i32 7
  %171 = load %struct.device*, %struct.device** %170, align 8
  %172 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %173 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %172, i32 0, i32 9
  %174 = call i32 @device_create_file(%struct.device* %171, %struct.TYPE_6__* %173)
  store i32 %174, i32* %7, align 4
  %175 = load i32, i32* %7, align 4
  %176 = icmp slt i32 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %152
  %178 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %179 = load i32, i32* %7, align 4
  %180 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %178, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %179)
  br label %184

181:                                              ; preds = %152
  %182 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %183 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %182, i32 0, i32 3
  store i32 1, i32* %183, align 4
  br label %184

184:                                              ; preds = %181, %177
  %185 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %186 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %185, i32 0, i32 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 2
  %188 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %187, i32 0, i32 0
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.8, i64 0, i64 0), i8** %188, align 8
  %189 = load i8*, i8** @S_IRUGO, align 8
  %190 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %191 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %190, i32 0, i32 8
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 2
  %193 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %192, i32 0, i32 1
  store i8* %189, i8** %193, align 8
  %194 = load i32, i32* @hdw_name_show, align 4
  %195 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %196 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %195, i32 0, i32 8
  %197 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %196, i32 0, i32 1
  store i32 %194, i32* %197, align 8
  %198 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %199 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %198, i32 0, i32 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  store i32* null, i32** %200, align 8
  %201 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %202 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %201, i32 0, i32 7
  %203 = load %struct.device*, %struct.device** %202, align 8
  %204 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %205 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %204, i32 0, i32 8
  %206 = call i32 @device_create_file(%struct.device* %203, %struct.TYPE_6__* %205)
  store i32 %206, i32* %7, align 4
  %207 = load i32, i32* %7, align 4
  %208 = icmp slt i32 %207, 0
  br i1 %208, label %209, label %213

209:                                              ; preds = %184
  %210 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %211 = load i32, i32* %7, align 4
  %212 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %210, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %211)
  br label %216

213:                                              ; preds = %184
  %214 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %215 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %214, i32 0, i32 4
  store i32 1, i32* %215, align 8
  br label %216

216:                                              ; preds = %213, %209
  %217 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %218 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %217, i32 0, i32 6
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  %220 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %219, i32 0, i32 0
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.9, i64 0, i64 0), i8** %220, align 8
  %221 = load i8*, i8** @S_IRUGO, align 8
  %222 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %223 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %222, i32 0, i32 6
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 2
  %225 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %224, i32 0, i32 1
  store i8* %221, i8** %225, align 8
  %226 = load i32, i32* @hdw_desc_show, align 4
  %227 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %228 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %227, i32 0, i32 6
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  store i32 %226, i32* %229, align 8
  %230 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %231 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %230, i32 0, i32 6
  %232 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %231, i32 0, i32 0
  store i32* null, i32** %232, align 8
  %233 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %234 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %233, i32 0, i32 7
  %235 = load %struct.device*, %struct.device** %234, align 8
  %236 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %237 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %236, i32 0, i32 6
  %238 = call i32 @device_create_file(%struct.device* %235, %struct.TYPE_6__* %237)
  store i32 %238, i32* %7, align 4
  %239 = load i32, i32* %7, align 4
  %240 = icmp slt i32 %239, 0
  br i1 %240, label %241, label %245

241:                                              ; preds = %216
  %242 = load i32, i32* @PVR2_TRACE_ERROR_LEGS, align 4
  %243 = load i32, i32* %7, align 4
  %244 = call i32 (i32, i8*, ...) @pvr2_trace(i32 %242, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %243)
  br label %248

245:                                              ; preds = %216
  %246 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %247 = getelementptr inbounds %struct.pvr2_sysfs, %struct.pvr2_sysfs* %246, i32 0, i32 5
  store i32 1, i32* %247, align 4
  br label %248

248:                                              ; preds = %245, %241
  %249 = load %struct.pvr2_sysfs*, %struct.pvr2_sysfs** %3, align 8
  %250 = call i32 @pvr2_sysfs_add_controls(%struct.pvr2_sysfs* %249)
  br label %251

251:                                              ; preds = %248, %51, %21, %15
  ret void
}

declare dso_local %struct.usb_device* @pvr2_hdw_get_dev(i32) #1

declare dso_local %struct.device* @kzalloc(i32, i32) #1

declare dso_local i32 @pvr2_sysfs_trace(i8*, %struct.device*) #1

declare dso_local i32 @dev_set_name(%struct.device*, i8*, i32) #1

declare dso_local i32 @pvr2_hdw_get_device_identifier(i32) #1

declare dso_local i32 @get_device(i32*) #1

declare dso_local i32 @dev_set_drvdata(%struct.device*, %struct.pvr2_sysfs*) #1

declare dso_local i32 @device_register(%struct.device*) #1

declare dso_local i32 @pvr2_trace(i32, i8*, ...) #1

declare dso_local i32 @put_device(%struct.device*) #1

declare dso_local i32 @device_create_file(%struct.device*, %struct.TYPE_6__*) #1

declare dso_local i32 @pvr2_sysfs_add_controls(%struct.pvr2_sysfs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
