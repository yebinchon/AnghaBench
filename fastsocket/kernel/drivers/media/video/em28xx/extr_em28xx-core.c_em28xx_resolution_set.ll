; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_resolution_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-core.c_em28xx_resolution_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32, i32, i32, i32, i32, i32 }

@V4L2_STD_525_60 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @em28xx_resolution_set(%struct.em28xx* %0) #0 {
  %2 = alloca %struct.em28xx*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %2, align 8
  %5 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %6 = call i32 @norm_maxw(%struct.em28xx* %5)
  store i32 %6, i32* %3, align 4
  %7 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %8 = call i32 @norm_maxh(%struct.em28xx* %7)
  store i32 %8, i32* %4, align 4
  %9 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %10 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %9, i32 0, i32 0
  store i32 720, i32* %10, align 4
  %11 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %12 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @V4L2_STD_525_60, align 4
  %15 = and i32 %13, %14
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 2
  store i32 12, i32* %19, align 4
  br label %23

20:                                               ; preds = %1
  %21 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %22 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %21, i32 0, i32 2
  store i32 18, i32* %22, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %25 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %30 = call i32 @norm_maxh(%struct.em28xx* %29)
  %31 = load i32, i32* %4, align 4
  %32 = ashr i32 %31, %30
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %28, %23
  %34 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %35 = call i32 @em28xx_set_outfmt(%struct.em28xx* %34)
  %36 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sub nsw i32 %37, 4
  %39 = ashr i32 %38, 2
  %40 = load i32, i32* %4, align 4
  %41 = sub nsw i32 %40, 4
  %42 = ashr i32 %41, 2
  %43 = call i32 @em28xx_accumulator_set(%struct.em28xx* %36, i32 1, i32 %39, i32 1, i32 %42)
  %44 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %45 = call i32 @em28xx_vbi_supported(%struct.em28xx* %44)
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %54

47:                                               ; preds = %33
  %48 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %49 = load i32, i32* %3, align 4
  %50 = ashr i32 %49, 2
  %51 = load i32, i32* %4, align 4
  %52 = ashr i32 %51, 2
  %53 = call i32 @em28xx_capture_area_set(%struct.em28xx* %48, i32 0, i32 2, i32 %50, i32 %52)
  br label %61

54:                                               ; preds = %33
  %55 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %56 = load i32, i32* %3, align 4
  %57 = ashr i32 %56, 2
  %58 = load i32, i32* %4, align 4
  %59 = ashr i32 %58, 2
  %60 = call i32 @em28xx_capture_area_set(%struct.em28xx* %55, i32 0, i32 0, i32 %57, i32 %59)
  br label %61

61:                                               ; preds = %54, %47
  %62 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %63 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %64 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.em28xx*, %struct.em28xx** %2, align 8
  %67 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @em28xx_scaler_set(%struct.em28xx* %62, i32 %65, i32 %68)
  ret i32 %69
}

declare dso_local i32 @norm_maxw(%struct.em28xx*) #1

declare dso_local i32 @norm_maxh(%struct.em28xx*) #1

declare dso_local i32 @em28xx_set_outfmt(%struct.em28xx*) #1

declare dso_local i32 @em28xx_accumulator_set(%struct.em28xx*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_vbi_supported(%struct.em28xx*) #1

declare dso_local i32 @em28xx_capture_area_set(%struct.em28xx*, i32, i32, i32, i32) #1

declare dso_local i32 @em28xx_scaler_set(%struct.em28xx*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
