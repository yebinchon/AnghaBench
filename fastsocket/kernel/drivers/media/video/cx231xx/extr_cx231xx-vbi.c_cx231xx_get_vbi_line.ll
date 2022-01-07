; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_get_vbi_line.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-vbi.c_cx231xx_get_vbi_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }
%struct.cx231xx_dmaqueue = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_get_vbi_line(%struct.cx231xx* %0, %struct.cx231xx_dmaqueue* %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca %struct.cx231xx_dmaqueue*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store %struct.cx231xx_dmaqueue* %1, %struct.cx231xx_dmaqueue** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 -1, i32* %13, align 4
  %14 = load i32, i32* %9, align 4
  switch i32 %14, label %17 [
    i32 129, label %15
    i32 128, label %16
  ]

15:                                               ; preds = %5
  store i32 1, i32* %13, align 4
  br label %18

16:                                               ; preds = %5
  store i32 2, i32* %13, align 4
  br label %18

17:                                               ; preds = %5
  br label %18

18:                                               ; preds = %17, %16, %15
  %19 = load i32, i32* %13, align 4
  %20 = icmp slt i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %18
  %22 = load i32, i32* %12, align 4
  store i32 %22, i32* %6, align 4
  br label %34

23:                                               ; preds = %18
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %26 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  %27 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %28 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %8, align 8
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %11, align 4
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @cx231xx_copy_vbi_line(%struct.cx231xx* %27, %struct.cx231xx_dmaqueue* %28, i32* %29, i32 %30, i32 %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  store i32 %33, i32* %6, align 4
  br label %34

34:                                               ; preds = %23, %21
  %35 = load i32, i32* %6, align 4
  ret i32 %35
}

declare dso_local i32 @cx231xx_copy_vbi_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
