; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_gain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_gain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i64 }

@ov_gain = common dso_local global i32* null, align 8
@micron1_gain = common dso_local global i32* null, align 8
@micron2_gain = common dso_local global i32* null, align 8
@hv7131r_gain = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @set_gain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_gain(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca %struct.sd*, align 8
  %5 = alloca [8 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %4, align 8
  %8 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  store i32 129, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  %10 = load %struct.sd*, %struct.sd** %4, align 8
  %11 = getelementptr inbounds %struct.sd, %struct.sd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 0, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 0, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 0, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 0, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 29, i32* %18, align 4
  %19 = load %struct.sd*, %struct.sd** %4, align 8
  %20 = getelementptr inbounds %struct.sd, %struct.sd* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %108 [
    i32 132, label %22
    i32 131, label %22
    i32 128, label %22
    i32 129, label %22
    i32 130, label %22
    i32 134, label %33
    i32 133, label %54
    i32 135, label %75
    i32 136, label %96
  ]

22:                                               ; preds = %1, %1, %1, %1, %1
  %23 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %24 = load i32, i32* %23, align 16
  %25 = or i32 %24, 32
  store i32 %25, i32* %23, align 16
  %26 = load i32*, i32** @ov_gain, align 8
  %27 = load %struct.sd*, %struct.sd** %4, align 8
  %28 = getelementptr inbounds %struct.sd, %struct.sd* %27, i32 0, i32 2
  %29 = load i64, i64* %28, align 8
  %30 = getelementptr inbounds i32, i32* %26, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %31, i32* %32, align 4
  br label %109

33:                                               ; preds = %1
  %34 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %35 = load i32, i32* %34, align 16
  %36 = or i32 %35, 48
  store i32 %36, i32* %34, align 16
  %37 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 53, i32* %37, align 8
  %38 = load i32*, i32** @micron1_gain, align 8
  %39 = load %struct.sd*, %struct.sd** %4, align 8
  %40 = getelementptr inbounds %struct.sd, %struct.sd* %39, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds i32, i32* %38, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = ashr i32 %43, 8
  %45 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %44, i32* %45, align 4
  %46 = load i32*, i32** @micron1_gain, align 8
  %47 = load %struct.sd*, %struct.sd** %4, align 8
  %48 = getelementptr inbounds %struct.sd, %struct.sd* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = getelementptr inbounds i32, i32* %46, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 255
  %53 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %52, i32* %53, align 16
  br label %109

54:                                               ; preds = %1
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %56 = load i32, i32* %55, align 16
  %57 = or i32 %56, 48
  store i32 %57, i32* %55, align 16
  %58 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 47, i32* %58, align 8
  %59 = load i32*, i32** @micron1_gain, align 8
  %60 = load %struct.sd*, %struct.sd** %4, align 8
  %61 = getelementptr inbounds %struct.sd, %struct.sd* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = getelementptr inbounds i32, i32* %59, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = ashr i32 %64, 8
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %65, i32* %66, align 4
  %67 = load i32*, i32** @micron1_gain, align 8
  %68 = load %struct.sd*, %struct.sd** %4, align 8
  %69 = getelementptr inbounds %struct.sd, %struct.sd* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i32, i32* %71, align 4
  %73 = and i32 %72, 255
  %74 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %73, i32* %74, align 16
  br label %109

75:                                               ; preds = %1
  %76 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %77 = load i32, i32* %76, align 16
  %78 = or i32 %77, 48
  store i32 %78, i32* %76, align 16
  %79 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 47, i32* %79, align 8
  %80 = load i32*, i32** @micron2_gain, align 8
  %81 = load %struct.sd*, %struct.sd** %4, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 2
  %83 = load i64, i64* %82, align 8
  %84 = getelementptr inbounds i32, i32* %80, i64 %83
  %85 = load i32, i32* %84, align 4
  %86 = ashr i32 %85, 8
  %87 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %86, i32* %87, align 4
  %88 = load i32*, i32** @micron2_gain, align 8
  %89 = load %struct.sd*, %struct.sd** %4, align 8
  %90 = getelementptr inbounds %struct.sd, %struct.sd* %89, i32 0, i32 2
  %91 = load i64, i64* %90, align 8
  %92 = getelementptr inbounds i32, i32* %88, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = and i32 %93, 255
  %95 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 4
  store i32 %94, i32* %95, align 16
  br label %109

96:                                               ; preds = %1
  %97 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %98 = load i32, i32* %97, align 16
  %99 = or i32 %98, 32
  store i32 %99, i32* %97, align 16
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 2
  store i32 48, i32* %100, align 8
  %101 = load i32*, i32** @hv7131r_gain, align 8
  %102 = load %struct.sd*, %struct.sd** %4, align 8
  %103 = getelementptr inbounds %struct.sd, %struct.sd* %102, i32 0, i32 2
  %104 = load i64, i64* %103, align 8
  %105 = getelementptr inbounds i32, i32* %101, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 3
  store i32 %106, i32* %107, align 4
  br label %109

108:                                              ; preds = %1
  store i32 0, i32* %2, align 4
  br label %113

109:                                              ; preds = %96, %75, %54, %33, %22
  %110 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %111 = getelementptr inbounds [8 x i32], [8 x i32]* %5, i64 0, i64 0
  %112 = call i32 @i2c_w(%struct.gspca_dev* %110, i32* %111)
  store i32 0, i32* %2, align 4
  br label %113

113:                                              ; preds = %109, %108
  %114 = load i32, i32* %2, align 4
  ret i32 %114
}

declare dso_local i32 @i2c_w(%struct.gspca_dev*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
