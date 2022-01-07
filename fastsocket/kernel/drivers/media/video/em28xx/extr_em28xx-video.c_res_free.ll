; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_res_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_res_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx_fh = type { i32, %struct.em28xx* }
%struct.em28xx = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"res: put %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx_fh*, i32)* @res_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @res_free(%struct.em28xx_fh* %0, i32 %1) #0 {
  %3 = alloca %struct.em28xx_fh*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.em28xx*, align 8
  store %struct.em28xx_fh* %0, %struct.em28xx_fh** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.em28xx_fh*, %struct.em28xx_fh** %3, align 8
  %7 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %6, i32 0, i32 1
  %8 = load %struct.em28xx*, %struct.em28xx** %7, align 8
  store %struct.em28xx* %8, %struct.em28xx** %5, align 8
  %9 = load %struct.em28xx_fh*, %struct.em28xx_fh** %3, align 8
  %10 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* %4, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load i32, i32* %4, align 4
  %19 = xor i32 %18, -1
  %20 = load %struct.em28xx_fh*, %struct.em28xx_fh** %3, align 8
  %21 = getelementptr inbounds %struct.em28xx_fh, %struct.em28xx_fh* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %19
  store i32 %23, i32* %21, align 8
  %24 = load i32, i32* %4, align 4
  %25 = xor i32 %24, -1
  %26 = load %struct.em28xx*, %struct.em28xx** %5, align 8
  %27 = getelementptr inbounds %struct.em28xx, %struct.em28xx* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, %25
  store i32 %29, i32* %27, align 4
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @em28xx_videodbg(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %30)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @em28xx_videodbg(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
