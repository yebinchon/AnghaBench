; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vidioc_s_input.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_vivi.c_vidioc_s_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.vivi_fh = type { %struct.vivi_dev* }
%struct.vivi_dev = type { i32 }

@NUM_INPUTS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i8*, i32)* @vidioc_s_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vidioc_s_input(%struct.file* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.vivi_fh*, align 8
  %9 = alloca %struct.vivi_dev*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.vivi_fh*
  store %struct.vivi_fh* %11, %struct.vivi_fh** %8, align 8
  %12 = load %struct.vivi_fh*, %struct.vivi_fh** %8, align 8
  %13 = getelementptr inbounds %struct.vivi_fh, %struct.vivi_fh* %12, i32 0, i32 0
  %14 = load %struct.vivi_dev*, %struct.vivi_dev** %13, align 8
  store %struct.vivi_dev* %14, %struct.vivi_dev** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @NUM_INPUTS, align 4
  %17 = icmp uge i32 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %27

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.vivi_dev*, %struct.vivi_dev** %9, align 8
  %24 = getelementptr inbounds %struct.vivi_dev, %struct.vivi_dev* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load %struct.vivi_fh*, %struct.vivi_fh** %8, align 8
  %26 = call i32 @precalculate_bars(%struct.vivi_fh* %25)
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %21, %18
  %28 = load i32, i32* %4, align 4
  ret i32 %28
}

declare dso_local i32 @precalculate_bars(%struct.vivi_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
