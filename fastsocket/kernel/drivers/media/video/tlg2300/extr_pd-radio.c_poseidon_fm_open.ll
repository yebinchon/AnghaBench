; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_fm_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-radio.c_poseidon_fm_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.poseidon* }
%struct.poseidon = type { i32, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32 }
%struct.video_device = type { i32 }

@POSEIDON_STATE_DISCONNECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@POSEIDON_STATE_FM = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@TLG_TUNE_ASTD_FM_EUR = common dso_local global i64 0, align 8
@debug_mode = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @poseidon_fm_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @poseidon_fm_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.video_device*, align 8
  %5 = alloca %struct.poseidon*, align 8
  %6 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %3, align 8
  %7 = load %struct.file*, %struct.file** %3, align 8
  %8 = call %struct.video_device* @video_devdata(%struct.file* %7)
  store %struct.video_device* %8, %struct.video_device** %4, align 8
  %9 = load %struct.video_device*, %struct.video_device** %4, align 8
  %10 = call %struct.poseidon* @video_get_drvdata(%struct.video_device* %9)
  store %struct.poseidon* %10, %struct.poseidon** %5, align 8
  store i32 0, i32* %6, align 4
  %11 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %12 = icmp ne %struct.poseidon* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %98

14:                                               ; preds = %1
  %15 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %16 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %15, i32 0, i32 1
  %17 = call i32 @mutex_lock(i32* %16)
  %18 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %19 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = load i32, i32* @POSEIDON_STATE_DISCONNECT, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %6, align 4
  br label %93

27:                                               ; preds = %14
  %28 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %29 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %27
  %33 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %34 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @POSEIDON_STATE_FM, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %6, align 4
  br label %93

42:                                               ; preds = %32, %27
  %43 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %44 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %43, i32 0, i32 4
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @usb_autopm_get_interface(i32 %45)
  %47 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %48 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = icmp eq i32 0, %49
  br i1 %50, label %51, label %81

51:                                               ; preds = %42
  %52 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %53 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %52, i32 0, i32 3
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %51
  %58 = load i64, i64* @TLG_TUNE_ASTD_FM_EUR, align 8
  %59 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %60 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i64 %58, i64* %61, align 8
  br label %62

62:                                               ; preds = %57, %51
  %63 = load %struct.video_device*, %struct.video_device** %4, align 8
  %64 = load i32, i32* @debug_mode, align 4
  %65 = call i32 @set_debug_mode(%struct.video_device* %63, i32 %64)
  %66 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %67 = call i32 @poseidon_check_mode_radio(%struct.poseidon* %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %62
  %71 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %72 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @usb_autopm_put_interface(i32 %73)
  br label %93

75:                                               ; preds = %62
  %76 = load i32, i32* @POSEIDON_STATE_FM, align 4
  %77 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %78 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = or i32 %79, %76
  store i32 %80, i32* %78, align 8
  br label %81

81:                                               ; preds = %75, %42
  %82 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %83 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 8
  %87 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %88 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %87, i32 0, i32 2
  %89 = call i32 @kref_get(i32* %88)
  %90 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %91 = load %struct.file*, %struct.file** %3, align 8
  %92 = getelementptr inbounds %struct.file, %struct.file* %91, i32 0, i32 0
  store %struct.poseidon* %90, %struct.poseidon** %92, align 8
  br label %93

93:                                               ; preds = %81, %70, %39, %24
  %94 = load %struct.poseidon*, %struct.poseidon** %5, align 8
  %95 = getelementptr inbounds %struct.poseidon, %struct.poseidon* %94, i32 0, i32 1
  %96 = call i32 @mutex_unlock(i32* %95)
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %93, %13
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local %struct.video_device* @video_devdata(%struct.file*) #1

declare dso_local %struct.poseidon* @video_get_drvdata(%struct.video_device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_autopm_get_interface(i32) #1

declare dso_local i32 @set_debug_mode(%struct.video_device*, i32) #1

declare dso_local i32 @poseidon_check_mode_radio(%struct.poseidon*) #1

declare dso_local i32 @usb_autopm_put_interface(i32) #1

declare dso_local i32 @kref_get(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
