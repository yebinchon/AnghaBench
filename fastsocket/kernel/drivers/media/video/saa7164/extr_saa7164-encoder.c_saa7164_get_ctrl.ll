; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_saa7164_get_ctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/saa7164/extr_saa7164-encoder.c_saa7164_get_ctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa7164_port = type { %struct.saa7164_encoder_params }
%struct.saa7164_encoder_params = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.v4l2_ext_control = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa7164_port*, %struct.v4l2_ext_control*)* @saa7164_get_ctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa7164_get_ctrl(%struct.saa7164_port* %0, %struct.v4l2_ext_control* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa7164_port*, align 8
  %5 = alloca %struct.v4l2_ext_control*, align 8
  %6 = alloca %struct.saa7164_encoder_params*, align 8
  store %struct.saa7164_port* %0, %struct.saa7164_port** %4, align 8
  store %struct.v4l2_ext_control* %1, %struct.v4l2_ext_control** %5, align 8
  %7 = load %struct.saa7164_port*, %struct.saa7164_port** %4, align 8
  %8 = getelementptr inbounds %struct.saa7164_port, %struct.saa7164_port* %7, i32 0, i32 0
  store %struct.saa7164_encoder_params* %8, %struct.saa7164_encoder_params** %6, align 8
  %9 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %10 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  switch i32 %11, label %60 [
    i32 132, label %12
    i32 134, label %18
    i32 135, label %24
    i32 133, label %30
    i32 131, label %36
    i32 129, label %42
    i32 130, label %48
    i32 128, label %54
  ]

12:                                               ; preds = %2
  %13 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %14 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %13, i32 0, i32 7
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %17 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %16, i32 0, i32 1
  store i32 %15, i32* %17, align 4
  br label %63

18:                                               ; preds = %2
  %19 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %20 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %23 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  br label %63

24:                                               ; preds = %2
  %25 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %26 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %25, i32 0, i32 5
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %29 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  br label %63

30:                                               ; preds = %2
  %31 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %32 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %35 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  br label %63

36:                                               ; preds = %2
  %37 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %38 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %41 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  br label %63

42:                                               ; preds = %2
  %43 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %44 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %47 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  br label %63

48:                                               ; preds = %2
  %49 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %50 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %53 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %52, i32 0, i32 1
  store i32 %51, i32* %53, align 4
  br label %63

54:                                               ; preds = %2
  %55 = load %struct.saa7164_encoder_params*, %struct.saa7164_encoder_params** %6, align 8
  %56 = getelementptr inbounds %struct.saa7164_encoder_params, %struct.saa7164_encoder_params* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.v4l2_ext_control*, %struct.v4l2_ext_control** %5, align 8
  %59 = getelementptr inbounds %struct.v4l2_ext_control, %struct.v4l2_ext_control* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %63

60:                                               ; preds = %2
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %64

63:                                               ; preds = %54, %48, %42, %36, %30, %24, %18, %12
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %60
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
