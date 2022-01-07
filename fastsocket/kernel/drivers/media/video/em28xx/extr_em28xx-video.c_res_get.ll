; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_res_get.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_res_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_fh = type { i32, %struct.em28xx* }
%struct.em28xx = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"res: get %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.em28xx_fh*, i32)* @res_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @res_get(%struct.em28xx_fh* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.em28xx_fh*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.em28xx*, align 8
  store %struct.em28xx_fh* %0, %struct.em28xx_fh** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %8 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %7, i32 0, i32 1
  %9 = load %struct.em28xx*, %struct.em28xx** %8, align 8
  store %struct.em28xx* %9, %struct.em28xx** %6, align 8
  %10 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %11 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %38

17:                                               ; preds = %2
  %18 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %19 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* %5, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %38

25:                                               ; preds = %17
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.em28xx_fh*, %struct.em28xx_fh** %4, align 8
  %28 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = or i32 %29, %26
  store i32 %30, i32* %28, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %33 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %36)
  store i32 1, i32* %3, align 4
  br label %38

38:                                               ; preds = %25, %24, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i32 @em28xx_videodbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
