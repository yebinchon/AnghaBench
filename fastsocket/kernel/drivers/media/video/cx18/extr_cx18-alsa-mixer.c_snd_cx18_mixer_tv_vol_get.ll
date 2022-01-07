; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-mixer.c_snd_cx18_mixer_tv_vol_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-alsa-mixer.c_snd_cx18_mixer_tv_vol_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.snd_cx18_card = type { i32 }
%struct.cx18 = type { i32 }
%struct.v4l2_control = type { i32, i32 }

@V4L2_CID_AUDIO_VOLUME = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@g_ctrl = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* @snd_cx18_mixer_tv_vol_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_cx18_mixer_tv_vol_get(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_value* %1) #0 {
  %3 = alloca %struct.snd_kcontrol*, align 8
  %4 = alloca %struct.snd_ctl_elem_value*, align 8
  %5 = alloca %struct.snd_cx18_card*, align 8
  %6 = alloca %struct.cx18*, align 8
  %7 = alloca %struct.v4l2_control, align 4
  %8 = alloca i32, align 4
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %3, align 8
  store %struct.snd_ctl_elem_value* %1, %struct.snd_ctl_elem_value** %4, align 8
  %9 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %3, align 8
  %10 = call %struct.snd_cx18_card* @snd_kcontrol_chip(%struct.snd_kcontrol* %9)
  store %struct.snd_cx18_card* %10, %struct.snd_cx18_card** %5, align 8
  %11 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %5, align 8
  %12 = getelementptr inbounds %struct.snd_cx18_card, %struct.snd_cx18_card* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.cx18* @to_cx18(i32 %13)
  store %struct.cx18* %14, %struct.cx18** %6, align 8
  %15 = load i32, i32* @V4L2_CID_AUDIO_VOLUME, align 4
  %16 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %7, i32 0, i32 1
  store i32 %15, i32* %16, align 4
  %17 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %18 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @dB_to_cx18_av_vol(i32 %23)
  %25 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %7, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %5, align 8
  %27 = call i32 @snd_cx18_lock(%struct.snd_cx18_card* %26)
  %28 = load %struct.cx18*, %struct.cx18** %6, align 8
  %29 = getelementptr inbounds %struct.cx18, %struct.cx18* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @core, align 4
  %32 = load i32, i32* @g_ctrl, align 4
  %33 = call i32 @v4l2_subdev_call(i32 %30, i32 %31, i32 %32, %struct.v4l2_control* %7)
  store i32 %33, i32* %8, align 4
  %34 = load %struct.snd_cx18_card*, %struct.snd_cx18_card** %5, align 8
  %35 = call i32 @snd_cx18_unlock(%struct.snd_cx18_card* %34)
  %36 = load i32, i32* %8, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %48, label %38

38:                                               ; preds = %2
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %7, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @cx18_av_vol_to_dB(i32 %40)
  %42 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %4, align 8
  %43 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 %41, i32* %47, align 4
  br label %48

48:                                               ; preds = %38, %2
  %49 = load i32, i32* %8, align 4
  ret i32 %49
}

declare dso_local %struct.snd_cx18_card* @snd_kcontrol_chip(%struct.snd_kcontrol*) #1

declare dso_local %struct.cx18* @to_cx18(i32) #1

declare dso_local i32 @dB_to_cx18_av_vol(i32) #1

declare dso_local i32 @snd_cx18_lock(%struct.snd_cx18_card*) #1

declare dso_local i32 @v4l2_subdev_call(i32, i32, i32, %struct.v4l2_control*) #1

declare dso_local i32 @snd_cx18_unlock(%struct.snd_cx18_card*) #1

declare dso_local i32 @cx18_av_vol_to_dB(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
