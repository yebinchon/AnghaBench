; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_setup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_si4713-i2c.c_si4713_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.si4713_device = type { i32, %struct.TYPE_8__, i64, i32, i32, i64, i32, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__, i32 }
%struct.TYPE_8__ = type { i64, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }
%struct.v4l2_frequency = type { i64 }
%struct.v4l2_modulator = type { i32, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PI = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_THRESHOLD = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_GAIN = common dso_local global i32 0, align 4
@V4L2_CID_PILOT_TONE_FREQUENCY = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME = common dso_local global i32 0, align 4
@V4L2_CID_PILOT_TONE_DEVIATION = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LIMITER_DEVIATION = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_DEVIATION = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PTY = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LIMITER_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_PILOT_TONE_ENABLED = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_LIMITER_RELEASE_TIME = common dso_local global i32 0, align 4
@V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_PREEMPHASIS = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_PS_NAME = common dso_local global i32 0, align 4
@V4L2_CID_RDS_TX_RADIO_TEXT = common dso_local global i32 0, align 4
@DEFAULT_FREQUENCY = common dso_local global i64 0, align 8
@V4L2_CID_TUNE_POWER_LEVEL = common dso_local global i32 0, align 4
@V4L2_CID_TUNE_ANTENNA_CAPACITOR = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_STEREO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_MONO = common dso_local global i32 0, align 4
@V4L2_TUNER_SUB_RDS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.si4713_device*)* @si4713_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @si4713_setup(%struct.si4713_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.si4713_device*, align 8
  %4 = alloca %struct.v4l2_ext_control, align 4
  %5 = alloca %struct.v4l2_frequency, align 8
  %6 = alloca %struct.v4l2_modulator, align 8
  %7 = alloca %struct.si4713_device*, align 8
  %8 = alloca i32, align 4
  store %struct.si4713_device* %0, %struct.si4713_device** %3, align 8
  store i32 0, i32* %8, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.si4713_device* @kmalloc(i32 120, i32 %9)
  store %struct.si4713_device* %10, %struct.si4713_device** %7, align 8
  %11 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %12 = icmp ne %struct.si4713_device* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %2, align 4
  br label %281

16:                                               ; preds = %1
  %17 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %18 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %17, i32 0, i32 10
  %19 = call i32 @mutex_lock(i32* %18)
  %20 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %21 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %22 = call i32 @memcpy(%struct.si4713_device* %20, %struct.si4713_device* %21, i32 120)
  %23 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %24 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %23, i32 0, i32 10
  %25 = call i32 @mutex_unlock(i32* %24)
  %26 = load i32, i32* @V4L2_CID_RDS_TX_PI, align 4
  %27 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %26, i32* %27, align 4
  %28 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %29 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %31, i32* %32, align 4
  %33 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %34 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %33, %struct.v4l2_ext_control* %4)
  %35 = load i32, i32* %8, align 4
  %36 = or i32 %35, %34
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_THRESHOLD, align 4
  %38 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %37, i32* %38, align 4
  %39 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %40 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %45 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %44, %struct.v4l2_ext_control* %4)
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  %48 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_GAIN, align 4
  %49 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %48, i32* %49, align 4
  %50 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %51 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %50, i32 0, i32 7
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 3
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %53, i32* %54, align 4
  %55 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %56 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %55, %struct.v4l2_ext_control* %4)
  %57 = load i32, i32* %8, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* @V4L2_CID_PILOT_TONE_FREQUENCY, align 4
  %60 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %59, i32* %60, align 4
  %61 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %62 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %61, i32 0, i32 9
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %64, i32* %65, align 4
  %66 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %67 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %66, %struct.v4l2_ext_control* %4)
  %68 = load i32, i32* %8, align 4
  %69 = or i32 %68, %67
  store i32 %69, i32* %8, align 4
  %70 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_ATTACK_TIME, align 4
  %71 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %70, i32* %71, align 4
  %72 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %73 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %72, i32 0, i32 7
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 4
  %76 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %75, i32* %76, align 4
  %77 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %78 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %77, %struct.v4l2_ext_control* %4)
  %79 = load i32, i32* %8, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* @V4L2_CID_PILOT_TONE_DEVIATION, align 4
  %82 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %84 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %83, i32 0, i32 9
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %86, i32* %87, align 4
  %88 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %89 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %88, %struct.v4l2_ext_control* %4)
  %90 = load i32, i32* %8, align 4
  %91 = or i32 %90, %89
  store i32 %91, i32* %8, align 4
  %92 = load i32, i32* @V4L2_CID_AUDIO_LIMITER_DEVIATION, align 4
  %93 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %92, i32* %93, align 4
  %94 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %95 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %94, i32 0, i32 8
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %97, i32* %98, align 4
  %99 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %100 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %99, %struct.v4l2_ext_control* %4)
  %101 = load i32, i32* %8, align 4
  %102 = or i32 %101, %100
  store i32 %102, i32* %8, align 4
  %103 = load i32, i32* @V4L2_CID_RDS_TX_DEVIATION, align 4
  %104 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %103, i32* %104, align 4
  %105 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %106 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %108, i32* %109, align 4
  %110 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %111 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %110, %struct.v4l2_ext_control* %4)
  %112 = load i32, i32* %8, align 4
  %113 = or i32 %112, %111
  store i32 %113, i32* %8, align 4
  %114 = load i32, i32* @V4L2_CID_RDS_TX_PTY, align 4
  %115 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %114, i32* %115, align 4
  %116 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %117 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %116, i32 0, i32 1
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %119, i32* %120, align 4
  %121 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %122 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %121, %struct.v4l2_ext_control* %4)
  %123 = load i32, i32* %8, align 4
  %124 = or i32 %123, %122
  store i32 %124, i32* %8, align 4
  %125 = load i32, i32* @V4L2_CID_AUDIO_LIMITER_ENABLED, align 4
  %126 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %125, i32* %126, align 4
  %127 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %128 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %127, i32 0, i32 8
  %129 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %130, i32* %131, align 4
  %132 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %133 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %132, %struct.v4l2_ext_control* %4)
  %134 = load i32, i32* %8, align 4
  %135 = or i32 %134, %133
  store i32 %135, i32* %8, align 4
  %136 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_ENABLED, align 4
  %137 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %136, i32* %137, align 4
  %138 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %139 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %138, i32 0, i32 7
  %140 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %141, i32* %142, align 4
  %143 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %144 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %143, %struct.v4l2_ext_control* %4)
  %145 = load i32, i32* %8, align 4
  %146 = or i32 %145, %144
  store i32 %146, i32* %8, align 4
  %147 = load i32, i32* @V4L2_CID_PILOT_TONE_ENABLED, align 4
  %148 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %147, i32* %148, align 4
  %149 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %150 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %149, i32 0, i32 9
  %151 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %150, i32 0, i32 0
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %152, i32* %153, align 4
  %154 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %155 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %154, %struct.v4l2_ext_control* %4)
  %156 = load i32, i32* %8, align 4
  %157 = or i32 %156, %155
  store i32 %157, i32* %8, align 4
  %158 = load i32, i32* @V4L2_CID_AUDIO_LIMITER_RELEASE_TIME, align 4
  %159 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %158, i32* %159, align 4
  %160 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %161 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %160, i32 0, i32 8
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %163, i32* %164, align 4
  %165 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %166 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %165, %struct.v4l2_ext_control* %4)
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %8, align 4
  %169 = load i32, i32* @V4L2_CID_AUDIO_COMPRESSION_RELEASE_TIME, align 4
  %170 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %169, i32* %170, align 4
  %171 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %172 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %171, i32 0, i32 7
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %174, i32* %175, align 4
  %176 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %177 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %176, %struct.v4l2_ext_control* %4)
  %178 = load i32, i32* %8, align 4
  %179 = or i32 %178, %177
  store i32 %179, i32* %8, align 4
  %180 = load i32, i32* @V4L2_CID_TUNE_PREEMPHASIS, align 4
  %181 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %180, i32* %181, align 4
  %182 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %183 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %182, i32 0, i32 6
  %184 = load i32, i32* %183, align 8
  %185 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %184, i32* %185, align 4
  %186 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %187 = call i32 @si4713_write_econtrol_integers(%struct.si4713_device* %186, %struct.v4l2_ext_control* %4)
  %188 = load i32, i32* %8, align 4
  %189 = or i32 %188, %187
  store i32 %189, i32* %8, align 4
  %190 = load i32, i32* @V4L2_CID_RDS_TX_PS_NAME, align 4
  %191 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %190, i32* %191, align 4
  %192 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %193 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %194 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 2
  %196 = load i32, i32* %195, align 4
  %197 = call i32 @si4713_set_rds_ps_name(%struct.si4713_device* %192, i32 %196)
  %198 = load i32, i32* %8, align 4
  %199 = or i32 %198, %197
  store i32 %199, i32* %8, align 4
  %200 = load i32, i32* @V4L2_CID_RDS_TX_RADIO_TEXT, align 4
  %201 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %200, i32* %201, align 4
  %202 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %203 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %204 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %203, i32 0, i32 1
  %205 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  %207 = call i32 @si4713_set_rds_radio_text(%struct.si4713_device* %202, i32 %206)
  %208 = load i32, i32* %8, align 4
  %209 = or i32 %208, %207
  store i32 %209, i32* %8, align 4
  %210 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %211 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %210, i32 0, i32 5
  %212 = load i64, i64* %211, align 8
  %213 = icmp ne i64 %212, 0
  br i1 %213, label %214, label %218

214:                                              ; preds = %16
  %215 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %216 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %215, i32 0, i32 5
  %217 = load i64, i64* %216, align 8
  br label %220

218:                                              ; preds = %16
  %219 = load i64, i64* @DEFAULT_FREQUENCY, align 8
  br label %220

220:                                              ; preds = %218, %214
  %221 = phi i64 [ %217, %214 ], [ %219, %218 ]
  %222 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 0
  store i64 %221, i64* %222, align 8
  %223 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 0
  %224 = load i64, i64* %223, align 8
  %225 = call i64 @si4713_to_v4l2(i64 %224)
  %226 = getelementptr inbounds %struct.v4l2_frequency, %struct.v4l2_frequency* %5, i32 0, i32 0
  store i64 %225, i64* %226, align 8
  %227 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %228 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %227, i32 0, i32 0
  %229 = call i32 @si4713_s_frequency(i32* %228, %struct.v4l2_frequency* %5)
  %230 = load i32, i32* %8, align 4
  %231 = or i32 %230, %229
  store i32 %231, i32* %8, align 4
  %232 = load i32, i32* @V4L2_CID_TUNE_POWER_LEVEL, align 4
  %233 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %232, i32* %233, align 4
  %234 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %235 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %234, i32 0, i32 4
  %236 = load i32, i32* %235, align 4
  %237 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %236, i32* %237, align 4
  %238 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %239 = call i32 @si4713_write_econtrol_tune(%struct.si4713_device* %238, %struct.v4l2_ext_control* %4)
  %240 = load i32, i32* %8, align 4
  %241 = or i32 %240, %239
  store i32 %241, i32* %8, align 4
  %242 = load i32, i32* @V4L2_CID_TUNE_ANTENNA_CAPACITOR, align 4
  %243 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 1
  store i32 %242, i32* %243, align 4
  %244 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %245 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %244, i32 0, i32 3
  %246 = load i32, i32* %245, align 8
  %247 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %4, i32 0, i32 0
  store i32 %246, i32* %247, align 4
  %248 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %249 = call i32 @si4713_write_econtrol_tune(%struct.si4713_device* %248, %struct.v4l2_ext_control* %4)
  %250 = load i32, i32* %8, align 4
  %251 = or i32 %250, %249
  store i32 %251, i32* %8, align 4
  %252 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %6, i32 0, i32 1
  store i64 0, i64* %252, align 8
  %253 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %254 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %253, i32 0, i32 2
  %255 = load i64, i64* %254, align 8
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %257, label %260

257:                                              ; preds = %220
  %258 = load i32, i32* @V4L2_TUNER_SUB_STEREO, align 4
  %259 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %6, i32 0, i32 0
  store i32 %258, i32* %259, align 8
  br label %263

260:                                              ; preds = %220
  %261 = load i32, i32* @V4L2_TUNER_SUB_MONO, align 4
  %262 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %6, i32 0, i32 0
  store i32 %261, i32* %262, align 8
  br label %263

263:                                              ; preds = %260, %257
  %264 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %265 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %264, i32 0, i32 1
  %266 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %265, i32 0, i32 0
  %267 = load i64, i64* %266, align 8
  %268 = icmp ne i64 %267, 0
  br i1 %268, label %269, label %274

269:                                              ; preds = %263
  %270 = load i32, i32* @V4L2_TUNER_SUB_RDS, align 4
  %271 = getelementptr inbounds %struct.v4l2_modulator, %struct.v4l2_modulator* %6, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = or i32 %272, %270
  store i32 %273, i32* %271, align 8
  br label %274

274:                                              ; preds = %269, %263
  %275 = load %struct.si4713_device*, %struct.si4713_device** %3, align 8
  %276 = getelementptr inbounds %struct.si4713_device, %struct.si4713_device* %275, i32 0, i32 0
  %277 = call i32 @si4713_s_modulator(i32* %276, %struct.v4l2_modulator* %6)
  %278 = load %struct.si4713_device*, %struct.si4713_device** %7, align 8
  %279 = call i32 @kfree(%struct.si4713_device* %278)
  %280 = load i32, i32* %8, align 4
  store i32 %280, i32* %2, align 4
  br label %281

281:                                              ; preds = %274, %13
  %282 = load i32, i32* %2, align 4
  ret i32 %282
}

declare dso_local %struct.si4713_device* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @memcpy(%struct.si4713_device*, %struct.si4713_device*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @si4713_write_econtrol_integers(%struct.si4713_device*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @si4713_set_rds_ps_name(%struct.si4713_device*, i32) #1

declare dso_local i32 @si4713_set_rds_radio_text(%struct.si4713_device*, i32) #1

declare dso_local i64 @si4713_to_v4l2(i64) #1

declare dso_local i32 @si4713_s_frequency(i32*, %struct.v4l2_frequency*) #1

declare dso_local i32 @si4713_write_econtrol_tune(%struct.si4713_device*, %struct.v4l2_ext_control*) #1

declare dso_local i32 @si4713_s_modulator(i32*, %struct.v4l2_modulator*) #1

declare dso_local i32 @kfree(%struct.si4713_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
