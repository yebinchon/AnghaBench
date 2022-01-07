; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_mxb_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_mxb_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7146_dev = type { i64 }
%struct.saa7146_pci_extension_data = type { i32 }
%struct.mxb = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"dev:%p\0A\00", align 1
@vv_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@vidioc_queryctrl = common dso_local global i32 0, align 4
@vidioc_g_ctrl = common dso_local global i32 0, align 4
@vidioc_s_ctrl = common dso_local global i32 0, align 4
@vidioc_enum_input = common dso_local global i32 0, align 4
@vidioc_g_input = common dso_local global i32 0, align 4
@vidioc_s_input = common dso_local global i32 0, align 4
@vidioc_g_tuner = common dso_local global i32 0, align 4
@vidioc_s_tuner = common dso_local global i32 0, align 4
@vidioc_g_frequency = common dso_local global i32 0, align 4
@vidioc_s_frequency = common dso_local global i32 0, align 4
@vidioc_g_audio = common dso_local global i32 0, align 4
@vidioc_s_audio = common dso_local global i32 0, align 4
@vidioc_default = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"mxb\00", align 1
@VFL_TYPE_GRABBER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [48 x i8] c"cannot register capture v4l2 device. skipping.\0A\00", align 1
@VFL_TYPE_VBI = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [44 x i8] c"cannot register vbi v4l2 device. skipping.\0A\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"mxb: found Multimedia eXtension Board #%d.\0A\00", align 1
@mxb_num = common dso_local global i32 0, align 4
@vidioc_g_register = common dso_local global i32 0, align 4
@vidioc_s_register = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_pci_extension_data*)* @mxb_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mxb_attach(%struct.saa7146_dev* %0, %struct.saa7146_pci_extension_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7146_dev*, align 8
  %5 = alloca %struct.saa7146_pci_extension_data*, align 8
  %6 = alloca %struct.mxb*, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %4, align 8
  store %struct.saa7146_pci_extension_data* %1, %struct.saa7146_pci_extension_data** %5, align 8
  %7 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %8 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.mxb*
  store %struct.mxb* %10, %struct.mxb** %6, align 8
  %11 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %12 = bitcast %struct.saa7146_dev* %11 to i8*
  %13 = call i32 @DEB_EE(i8* %12)
  %14 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %15 = call i32 @saa7146_vv_init(%struct.saa7146_dev* %14, %struct.TYPE_5__* @vv_data)
  %16 = load i32, i32* @vidioc_queryctrl, align 4
  store i32 %16, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 14), align 4
  %17 = load i32, i32* @vidioc_g_ctrl, align 4
  store i32 %17, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 13), align 4
  %18 = load i32, i32* @vidioc_s_ctrl, align 4
  store i32 %18, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 12), align 4
  %19 = load i32, i32* @vidioc_enum_input, align 4
  store i32 %19, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 11), align 4
  %20 = load i32, i32* @vidioc_g_input, align 4
  store i32 %20, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 10), align 4
  %21 = load i32, i32* @vidioc_s_input, align 4
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 9), align 4
  %22 = load i32, i32* @vidioc_g_tuner, align 4
  store i32 %22, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 8), align 4
  %23 = load i32, i32* @vidioc_s_tuner, align 4
  store i32 %23, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 7), align 4
  %24 = load i32, i32* @vidioc_g_frequency, align 4
  store i32 %24, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 6), align 4
  %25 = load i32, i32* @vidioc_s_frequency, align 4
  store i32 %25, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 5), align 4
  %26 = load i32, i32* @vidioc_g_audio, align 4
  store i32 %26, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 4), align 4
  %27 = load i32, i32* @vidioc_s_audio, align 4
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 3), align 4
  %28 = load i32, i32* @vidioc_default, align 4
  store i32 %28, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vv_data, i32 0, i32 0, i32 0), align 4
  %29 = load %struct.mxb*, %struct.mxb** %6, align 8
  %30 = getelementptr inbounds %struct.mxb, %struct.mxb* %29, i32 0, i32 1
  %31 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %32 = load i32, i32* @VFL_TYPE_GRABBER, align 4
  %33 = call i64 @saa7146_register_device(i32* %30, %struct.saa7146_dev* %31, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %2
  %36 = call i32 @ERR(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

37:                                               ; preds = %2
  %38 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %39 = call i64 @MXB_BOARD_CAN_DO_VBI(%struct.saa7146_dev* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %51

41:                                               ; preds = %37
  %42 = load %struct.mxb*, %struct.mxb** %6, align 8
  %43 = getelementptr inbounds %struct.mxb, %struct.mxb* %42, i32 0, i32 0
  %44 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %45 = load i32, i32* @VFL_TYPE_VBI, align 4
  %46 = call i64 @saa7146_register_device(i32* %43, %struct.saa7146_dev* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0), i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %41
  %49 = call i32 @ERR(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.3, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %41
  br label %51

51:                                               ; preds = %50, %37
  %52 = load i32, i32* @mxb_num, align 4
  %53 = call i32 @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @mxb_num, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* @mxb_num, align 4
  %56 = load %struct.saa7146_dev*, %struct.saa7146_dev** %4, align 8
  %57 = call i32 @mxb_init_done(%struct.saa7146_dev* %56)
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %51, %35
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @DEB_EE(i8*) #1

declare dso_local i32 @saa7146_vv_init(%struct.saa7146_dev*, %struct.TYPE_5__*) #1

declare dso_local i64 @saa7146_register_device(i32*, %struct.saa7146_dev*, i8*, i32) #1

declare dso_local i32 @ERR(i8*) #1

declare dso_local i64 @MXB_BOARD_CAN_DO_VBI(%struct.saa7146_dev*) #1

declare dso_local i32 @printk(i8*, i32) #1

declare dso_local i32 @mxb_init_done(%struct.saa7146_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
