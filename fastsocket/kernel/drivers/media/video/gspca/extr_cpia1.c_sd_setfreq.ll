; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_cpia1.c_sd_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@flicker_jumps = common dso_local global i32*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, i32)* @sd_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_setfreq(%struct.gspca_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sd*, align 8
  %7 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %9 = bitcast %struct.gspca_dev* %8 to %struct.sd*
  store %struct.sd* %9, %struct.sd** %6, align 8
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %18 [
    i32 0, label %11
    i32 1, label %12
    i32 2, label %15
  ]

11:                                               ; preds = %2
  store i32 0, i32* %7, align 4
  br label %21

12:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %13 = load %struct.sd*, %struct.sd** %6, align 8
  %14 = getelementptr inbounds %struct.sd, %struct.sd* %13, i32 0, i32 0
  store i32 0, i32* %14, align 8
  br label %21

15:                                               ; preds = %2
  store i32 1, i32* %7, align 4
  %16 = load %struct.sd*, %struct.sd** %6, align 8
  %17 = getelementptr inbounds %struct.sd, %struct.sd* %16, i32 0, i32 0
  store i32 1, i32* %17, align 8
  br label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %56

21:                                               ; preds = %15, %12, %11
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sd*, %struct.sd** %6, align 8
  %24 = getelementptr inbounds %struct.sd, %struct.sd* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load i32***, i32**** @flicker_jumps, align 8
  %26 = load %struct.sd*, %struct.sd** %6, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32**, i32*** %25, i64 %29
  %31 = load i32**, i32*** %30, align 8
  %32 = load %struct.sd*, %struct.sd** %6, align 8
  %33 = getelementptr inbounds %struct.sd, %struct.sd* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds i32*, i32** %31, i64 %36
  %38 = load i32*, i32** %37, align 8
  %39 = load %struct.sd*, %struct.sd** %6, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %38, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sd*, %struct.sd** %6, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  store i32 %45, i32* %49, align 8
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %51 = load i32, i32* %7, align 4
  %52 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %53 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @set_flicker(%struct.gspca_dev* %50, i32 %51, i32 %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %21, %18
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i32 @set_flicker(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
