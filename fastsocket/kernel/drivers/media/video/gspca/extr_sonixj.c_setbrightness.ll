; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setbrightness.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_setbrightness.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i8*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BRIGHTNESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setbrightness to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setbrightness(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = load i64, i64* @BRIGHTNESS, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = sub nsw i32 %16, 128
  %18 = ashr i32 %17, 2
  store i32 %18, i32* %6, align 4
  %19 = load %struct.sd*, %struct.sd** %3, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  switch i32 %21, label %77 [
    i32 135, label %22
    i32 133, label %27
    i32 132, label %44
    i32 130, label %44
    i32 131, label %52
    i32 134, label %60
    i32 129, label %60
    i32 128, label %67
  ]

22:                                               ; preds = %1
  %23 = load i32, i32* %6, align 4
  %24 = icmp sgt i32 %23, 31
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %6, align 4
  br label %26

26:                                               ; preds = %25, %22
  br label %77

27:                                               ; preds = %1
  %28 = load i32, i32* %5, align 4
  %29 = shl i32 %28, 12
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ugt i32 %30, 3000000
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 3000000, i32* %4, align 4
  br label %38

33:                                               ; preds = %27
  %34 = load i32, i32* %4, align 4
  %35 = icmp ult i32 %34, 672
  br i1 %35, label %36, label %37

36:                                               ; preds = %33
  store i32 672, i32* %4, align 4
  br label %37

37:                                               ; preds = %36, %33
  br label %38

38:                                               ; preds = %37, %32
  %39 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %40 = load i32, i32* %4, align 4
  %41 = call i8* @setexposure(%struct.gspca_dev* %39, i32 %40)
  %42 = load %struct.sd*, %struct.sd** %3, align 8
  %43 = getelementptr inbounds %struct.sd, %struct.sd* %42, i32 0, i32 1
  store i8* %41, i8** %43, align 8
  br label %77

44:                                               ; preds = %1, %1
  %45 = load i32, i32* %5, align 4
  %46 = shl i32 %45, 4
  store i32 %46, i32* %4, align 4
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i8* @setexposure(%struct.gspca_dev* %47, i32 %48)
  %50 = load %struct.sd*, %struct.sd** %3, align 8
  %51 = getelementptr inbounds %struct.sd, %struct.sd* %50, i32 0, i32 1
  store i8* %49, i8** %51, align 8
  br label %77

52:                                               ; preds = %1
  %53 = load i32, i32* %5, align 4
  %54 = shl i32 %53, 2
  store i32 %54, i32* %4, align 4
  %55 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %56 = load i32, i32* %4, align 4
  %57 = call i8* @setexposure(%struct.gspca_dev* %55, i32 %56)
  %58 = load %struct.sd*, %struct.sd** %3, align 8
  %59 = getelementptr inbounds %struct.sd, %struct.sd* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  br label %77

60:                                               ; preds = %1, %1
  %61 = load i32, i32* %5, align 4
  store i32 %61, i32* %4, align 4
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %63 = load i32, i32* %4, align 4
  %64 = call i8* @setexposure(%struct.gspca_dev* %62, i32 %63)
  %65 = load %struct.sd*, %struct.sd** %3, align 8
  %66 = getelementptr inbounds %struct.sd, %struct.sd* %65, i32 0, i32 1
  store i8* %64, i8** %66, align 8
  br label %81

67:                                               ; preds = %1
  %68 = load i32, i32* %5, align 4
  %69 = shl i32 %68, 2
  store i32 %69, i32* %4, align 4
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %71 = load i32, i32* %4, align 4
  %72 = call i8* @setexposure(%struct.gspca_dev* %70, i32 %71)
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 1
  store i8* %72, i8** %74, align 8
  %75 = load i32, i32* %5, align 4
  %76 = ashr i32 %75, 3
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %1, %67, %52, %44, %38, %26
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = load i32, i32* %6, align 4
  %80 = call i32 @reg_w1(%struct.gspca_dev* %78, i32 150, i32 %79)
  br label %81

81:                                               ; preds = %77, %60
  ret void
}

declare dso_local i8* @setexposure(%struct.gspca_dev*, i32) #1

declare dso_local i32 @reg_w1(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
