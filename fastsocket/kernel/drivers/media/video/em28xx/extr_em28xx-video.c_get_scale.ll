; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_get_scale.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/em28xx/extr_em28xx-video.c_get_scale.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.em28xx = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.em28xx*, i32, i32, i32*, i32*)* @get_scale to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_scale(%struct.em28xx* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.em28xx*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.em28xx* %0, %struct.em28xx** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %13 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %14 = call i32 @norm_maxw(%struct.em28xx* %13)
  store i32 %14, i32* %11, align 4
  %15 = load %struct.em28xx*, %struct.em28xx** %6, align 8
  %16 = call i32 @norm_maxh(%struct.em28xx* %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %11, align 4
  %18 = zext i32 %17 to i64
  %19 = shl i64 %18, 12
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = udiv i64 %19, %21
  %23 = sub i64 %22, 4096
  %24 = trunc i64 %23 to i32
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = load i32, i32* %26, align 4
  %28 = icmp uge i32 %27, 16384
  br i1 %28, label %29, label %31

29:                                               ; preds = %5
  %30 = load i32*, i32** %9, align 8
  store i32 16383, i32* %30, align 4
  br label %31

31:                                               ; preds = %29, %5
  %32 = load i32, i32* %12, align 4
  %33 = zext i32 %32 to i64
  %34 = shl i64 %33, 12
  %35 = load i32, i32* %8, align 4
  %36 = zext i32 %35 to i64
  %37 = udiv i64 %34, %36
  %38 = sub i64 %37, 4096
  %39 = trunc i64 %38 to i32
  %40 = load i32*, i32** %10, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = load i32, i32* %41, align 4
  %43 = icmp uge i32 %42, 16384
  br i1 %43, label %44, label %46

44:                                               ; preds = %31
  %45 = load i32*, i32** %10, align 8
  store i32 16383, i32* %45, align 4
  br label %46

46:                                               ; preds = %44, %31
  ret void
}

declare dso_local i32 @norm_maxw(%struct.em28xx*) #1

declare dso_local i32 @norm_maxh(%struct.em28xx*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
