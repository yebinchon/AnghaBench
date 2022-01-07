; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_calc_audio_properties.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cx2341x.c_cx2341x_calc_audio_properties.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx2341x_mpeg_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17 = common dso_local global i32 0, align 4
@CX2341X_CAP_HAS_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_AC3 = common dso_local global i32 0, align 4
@V4L2_MPEG_AUDIO_ENCODING_LAYER_2 = common dso_local global i32 0, align 4
@CX2341X_AUDIO_ENCODING_METHOD_AC3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cx2341x_mpeg_params*)* @cx2341x_calc_audio_properties to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cx2341x_calc_audio_properties(%struct.cx2341x_mpeg_params* %0) #0 {
  %2 = alloca %struct.cx2341x_mpeg_params*, align 8
  store %struct.cx2341x_mpeg_params* %0, %struct.cx2341x_mpeg_params** %2, align 8
  %3 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %4 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = shl i32 %5, 0
  %7 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %8 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %7, i32 0, i32 2
  %9 = load i32, i32* %8, align 4
  %10 = shl i32 %9, 8
  %11 = or i32 %6, %10
  %12 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %13 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = shl i32 %14, 10
  %16 = or i32 %11, %15
  %17 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %18 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @V4L2_MPEG_AUDIO_EMPHASIS_CCITT_J17, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %1
  br label %27

23:                                               ; preds = %1
  %24 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %25 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  br label %27

27:                                               ; preds = %23, %22
  %28 = phi i32 [ 3, %22 ], [ %26, %23 ]
  %29 = shl i32 %28, 12
  %30 = or i32 %16, %29
  %31 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %32 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 14
  %35 = or i32 %30, %34
  %36 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %37 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  %38 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %39 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %38, i32 0, i32 6
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @CX2341X_CAP_HAS_AC3, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %66

44:                                               ; preds = %27
  %45 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %46 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %45, i32 0, i32 7
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_AC3, align 4
  %49 = icmp eq i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %44
  %51 = load i32, i32* @V4L2_MPEG_AUDIO_ENCODING_LAYER_2, align 4
  %52 = sub nsw i32 3, %51
  %53 = shl i32 %52, 2
  %54 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %55 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %54, i32 0, i32 8
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 4
  %58 = or i32 %53, %57
  %59 = load i32, i32* @CX2341X_AUDIO_ENCODING_METHOD_AC3, align 4
  %60 = shl i32 %59, 28
  %61 = or i32 %58, %60
  %62 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %63 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 4
  br label %82

66:                                               ; preds = %44, %27
  %67 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %68 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %67, i32 0, i32 7
  %69 = load i32, i32* %68, align 4
  %70 = sub nsw i32 3, %69
  %71 = shl i32 %70, 2
  %72 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %73 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %72, i32 0, i32 9
  %74 = load i32, i32* %73, align 4
  %75 = add nsw i32 1, %74
  %76 = shl i32 %75, 4
  %77 = or i32 %71, %76
  %78 = load %struct.cx2341x_mpeg_params*, %struct.cx2341x_mpeg_params** %2, align 8
  %79 = getelementptr inbounds %struct.cx2341x_mpeg_params, %struct.cx2341x_mpeg_params* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %77
  store i32 %81, i32* %79, align 4
  br label %82

82:                                               ; preds = %66, %50
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
