; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_std_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_mxb.c_std_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7146_dev = type { i64 }
%struct.saa7146_standard = type { i64 }
%struct.mxb = type { i32 }

@V4L2_STD_PAL_I = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"VIDIOC_S_STD: setting mxb for PAL_I.\0A\00", align 1
@GPIO_CTRL = common dso_local global i32 0, align 4
@core = common dso_local global i32 0, align 4
@s_gpio = common dso_local global i32 0, align 4
@s_std = common dso_local global i32 0, align 4
@V4L2_STD_PAL_BG = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [47 x i8] c"VIDIOC_S_STD: setting mxb for PAL/NTSC/SECAM.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7146_dev*, %struct.saa7146_standard*)* @std_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @std_callback(%struct.saa7146_dev* %0, %struct.saa7146_standard* %1) #0 {
  %3 = alloca %struct.saa7146_dev*, align 8
  %4 = alloca %struct.saa7146_standard*, align 8
  %5 = alloca %struct.mxb*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.saa7146_dev* %0, %struct.saa7146_dev** %3, align 8
  store %struct.saa7146_standard* %1, %struct.saa7146_standard** %4, align 8
  %8 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %9 = getelementptr inbounds %struct.saa7146_dev, %struct.saa7146_dev* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.mxb*
  store %struct.mxb* %11, %struct.mxb** %5, align 8
  %12 = load i64, i64* @V4L2_STD_PAL_I, align 8
  %13 = load %struct.saa7146_standard*, %struct.saa7146_standard** %4, align 8
  %14 = getelementptr inbounds %struct.saa7146_standard, %struct.saa7146_standard* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %12, %15
  br i1 %16, label %17, label %32

17:                                               ; preds = %2
  %18 = load i64, i64* @V4L2_STD_PAL_I, align 8
  store i64 %18, i64* %6, align 8
  %19 = call i32 @DEB_D(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %21 = load i32, i32* @GPIO_CTRL, align 4
  %22 = call i32 @saa7146_write(%struct.saa7146_dev* %20, i32 %21, i32 4210768)
  %23 = load %struct.mxb*, %struct.mxb** %5, align 8
  %24 = load i32, i32* @core, align 4
  %25 = load i32, i32* @s_gpio, align 4
  %26 = call i32 @saa7111a_call(%struct.mxb* %23, i32 %24, i32 %25, i32 0)
  %27 = load %struct.mxb*, %struct.mxb** %5, align 8
  %28 = load i32, i32* @core, align 4
  %29 = load i32, i32* @s_std, align 4
  %30 = load i64, i64* %6, align 8
  %31 = call i32 @tuner_call(%struct.mxb* %27, i32 %28, i32 %29, i64 %30)
  br label %47

32:                                               ; preds = %2
  %33 = load i64, i64* @V4L2_STD_PAL_BG, align 8
  store i64 %33, i64* %7, align 8
  %34 = call i32 @DEB_D(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0))
  %35 = load %struct.saa7146_dev*, %struct.saa7146_dev** %3, align 8
  %36 = load i32, i32* @GPIO_CTRL, align 4
  %37 = call i32 @saa7146_write(%struct.saa7146_dev* %35, i32 %36, i32 4210768)
  %38 = load %struct.mxb*, %struct.mxb** %5, align 8
  %39 = load i32, i32* @core, align 4
  %40 = load i32, i32* @s_gpio, align 4
  %41 = call i32 @saa7111a_call(%struct.mxb* %38, i32 %39, i32 %40, i32 1)
  %42 = load %struct.mxb*, %struct.mxb** %5, align 8
  %43 = load i32, i32* @core, align 4
  %44 = load i32, i32* @s_std, align 4
  %45 = load i64, i64* %7, align 8
  %46 = call i32 @tuner_call(%struct.mxb* %42, i32 %43, i32 %44, i64 %45)
  br label %47

47:                                               ; preds = %32, %17
  ret i32 0
}

declare dso_local i32 @DEB_D(i8*) #1

declare dso_local i32 @saa7146_write(%struct.saa7146_dev*, i32, i32) #1

declare dso_local i32 @saa7111a_call(%struct.mxb*, i32, i32, i32) #1

declare dso_local i32 @tuner_call(%struct.mxb*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
