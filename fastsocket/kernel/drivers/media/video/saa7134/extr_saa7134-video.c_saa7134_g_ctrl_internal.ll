; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_g_ctrl_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7134/extr_saa7134-video.c_saa7134_g_ctrl_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7134_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.saa7134_fh = type { i32 }
%struct.v4l2_control = type { i32, i32 }
%struct.v4l2_queryctrl = type { i32 }

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @saa7134_g_ctrl_internal(%struct.saa7134_dev* %0, %struct.saa7134_fh* %1, %struct.v4l2_control* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.saa7134_dev*, align 8
  %6 = alloca %struct.saa7134_fh*, align 8
  %7 = alloca %struct.v4l2_control*, align 8
  %8 = alloca %struct.v4l2_queryctrl*, align 8
  store %struct.saa7134_dev* %0, %struct.saa7134_dev** %5, align 8
  store %struct.saa7134_fh* %1, %struct.saa7134_fh** %6, align 8
  store %struct.v4l2_control* %2, %struct.v4l2_control** %7, align 8
  %9 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %10 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.v4l2_queryctrl* @ctrl_by_id(i32 %11)
  store %struct.v4l2_queryctrl* %12, %struct.v4l2_queryctrl** %8, align 8
  %13 = load %struct.v4l2_queryctrl*, %struct.v4l2_queryctrl** %8, align 8
  %14 = icmp eq %struct.v4l2_queryctrl* null, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %92

18:                                               ; preds = %3
  %19 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %20 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %88 [
    i32 136, label %22
    i32 133, label %28
    i32 135, label %34
    i32 128, label %40
    i32 138, label %46
    i32 137, label %52
    i32 131, label %58
    i32 134, label %64
    i32 130, label %70
    i32 129, label %76
    i32 132, label %82
  ]

22:                                               ; preds = %18
  %23 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %24 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %23, i32 0, i32 10
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %27 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  br label %91

28:                                               ; preds = %18
  %29 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %30 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %29, i32 0, i32 9
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %33 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %32, i32 0, i32 1
  store i32 %31, i32* %33, align 4
  br label %91

34:                                               ; preds = %18
  %35 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %36 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %35, i32 0, i32 8
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %39 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  br label %91

40:                                               ; preds = %18
  %41 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %42 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %41, i32 0, i32 7
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %45 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 4
  br label %91

46:                                               ; preds = %18
  %47 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %48 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %47, i32 0, i32 6
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %51 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %50, i32 0, i32 1
  store i32 %49, i32* %51, align 4
  br label %91

52:                                               ; preds = %18
  %53 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %54 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %57 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %56, i32 0, i32 1
  store i32 %55, i32* %57, align 4
  br label %91

58:                                               ; preds = %18
  %59 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %60 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %63 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  br label %91

64:                                               ; preds = %18
  %65 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %66 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %69 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  br label %91

70:                                               ; preds = %18
  %71 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %72 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %75 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  br label %91

76:                                               ; preds = %18
  %77 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %78 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %81 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %80, i32 0, i32 1
  store i32 %79, i32* %81, align 4
  br label %91

82:                                               ; preds = %18
  %83 = load %struct.saa7134_dev*, %struct.saa7134_dev** %5, align 8
  %84 = getelementptr inbounds %struct.saa7134_dev, %struct.saa7134_dev* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.v4l2_control*, %struct.v4l2_control** %7, align 8
  %87 = getelementptr inbounds %struct.v4l2_control, %struct.v4l2_control* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  br label %91

88:                                               ; preds = %18
  %89 = load i32, i32* @EINVAL, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %4, align 4
  br label %92

91:                                               ; preds = %82, %76, %70, %64, %58, %52, %46, %40, %34, %28, %22
  store i32 0, i32* %4, align 4
  br label %92

92:                                               ; preds = %91, %88, %15
  %93 = load i32, i32* %4, align 4
  ret i32 %93
}

declare dso_local %struct.v4l2_queryctrl* @ctrl_by_id(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
