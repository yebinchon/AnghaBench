; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_setexposure.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sq930x.c_setexposure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sensor_s = type { i32, i32 }
%struct.gspca_dev = type { i32 }
%struct.sd = type { i32, i32, i32 }

@SQ930_CTRL_SET_EXPOSURE = common dso_local global i32 0, align 4
@sensor_tb = common dso_local global %struct.sensor_s* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setexposure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setexposure(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.sensor_s*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [15 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %12 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %13 = bitcast %struct.gspca_dev* %12 to %struct.sd*
  store %struct.sd* %13, %struct.sd** %3, align 8
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = getelementptr inbounds %struct.sd, %struct.sd* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %5, align 4
  store i32 0, i32* %4, align 4
  %17 = load i32, i32* @SQ930_CTRL_SET_EXPOSURE, align 4
  store i32 %17, i32* %10, align 4
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %68 [
    i32 129, label %21
    i32 128, label %21
  ]

21:                                               ; preds = %1, %1
  %22 = load %struct.sd*, %struct.sd** %3, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 129
  %26 = zext i1 %25 to i64
  %27 = select i1 %25, i32 528, i32 623
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %8, align 4
  %30 = icmp sge i32 %28, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  store i32 0, i32* %6, align 4
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %7, align 4
  br label %38

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %5, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %7, align 4
  br label %38

38:                                               ; preds = %33, %31
  %39 = load i32, i32* %6, align 4
  %40 = ashr i32 %39, 8
  %41 = load i32, i32* %4, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %4, align 4
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %43
  store i32 %40, i32* %44, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %4, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %7, align 4
  %51 = ashr i32 %50, 8
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  %54 = sext i32 %52 to i64
  %55 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %54
  store i32 %51, i32* %55, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %4, align 4
  %59 = sext i32 %57 to i64
  %60 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %59
  store i32 %56, i32* %60, align 4
  %61 = load %struct.sd*, %struct.sd** %3, align 8
  %62 = getelementptr inbounds %struct.sd, %struct.sd* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  %66 = sext i32 %64 to i64
  %67 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %66
  store i32 %63, i32* %67, align 4
  br label %154

68:                                               ; preds = %1
  %69 = load i32, i32* %10, align 4
  %70 = or i32 %69, 256
  store i32 %70, i32* %10, align 4
  %71 = load %struct.sensor_s*, %struct.sensor_s** @sensor_tb, align 8
  %72 = load %struct.sd*, %struct.sd** %3, align 8
  %73 = getelementptr inbounds %struct.sd, %struct.sd* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %71, i64 %75
  store %struct.sensor_s* %76, %struct.sensor_s** %9, align 8
  %77 = load %struct.sensor_s*, %struct.sensor_s** %9, align 8
  %78 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %4, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %4, align 4
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %82
  store i32 %79, i32* %83, align 4
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  %86 = sext i32 %84 to i64
  %87 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %86
  store i32 8, i32* %87, align 4
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %4, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %90
  store i32 9, i32* %91, align 4
  %92 = load i32, i32* %5, align 4
  %93 = ashr i32 %92, 8
  %94 = load i32, i32* %4, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %4, align 4
  %96 = sext i32 %94 to i64
  %97 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %96
  store i32 %93, i32* %97, align 4
  %98 = load %struct.sensor_s*, %struct.sensor_s** %9, align 8
  %99 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* %4, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %4, align 4
  %103 = sext i32 %101 to i64
  %104 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %103
  store i32 %100, i32* %104, align 4
  %105 = load i32, i32* %5, align 4
  %106 = load i32, i32* %4, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %4, align 4
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %108
  store i32 %105, i32* %109, align 4
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, 1
  store i32 %111, i32* %4, align 4
  %112 = sext i32 %110 to i64
  %113 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %112
  store i32 53, i32* %113, align 4
  %114 = load i32, i32* %4, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %4, align 4
  %116 = sext i32 %114 to i64
  %117 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %116
  store i32 0, i32* %117, align 4
  %118 = load %struct.sensor_s*, %struct.sensor_s** %9, align 8
  %119 = getelementptr inbounds %struct.sensor_s, %struct.sensor_s* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 4
  %121 = load i32, i32* %4, align 4
  %122 = add nsw i32 %121, 1
  store i32 %122, i32* %4, align 4
  %123 = sext i32 %121 to i64
  %124 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %123
  store i32 %120, i32* %124, align 4
  %125 = load %struct.sd*, %struct.sd** %3, align 8
  %126 = getelementptr inbounds %struct.sd, %struct.sd* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 4
  %128 = sdiv i32 %127, 2
  %129 = add nsw i32 128, %128
  %130 = load i32, i32* %4, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %4, align 4
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %132
  store i32 %129, i32* %133, align 4
  %134 = load i32, i32* %4, align 4
  %135 = add nsw i32 %134, 1
  store i32 %135, i32* %4, align 4
  %136 = sext i32 %134 to i64
  %137 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %136
  store i32 0, i32* %137, align 4
  %138 = load i32, i32* %4, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %4, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %140
  store i32 0, i32* %141, align 4
  %142 = load i32, i32* %4, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %4, align 4
  %144 = sext i32 %142 to i64
  %145 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %144
  store i32 0, i32* %145, align 4
  %146 = load i32, i32* %4, align 4
  %147 = add nsw i32 %146, 1
  store i32 %147, i32* %4, align 4
  %148 = sext i32 %146 to i64
  %149 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %148
  store i32 0, i32* %149, align 4
  %150 = load i32, i32* %4, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %4, align 4
  %152 = sext i32 %150 to i64
  %153 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 %152
  store i32 131, i32* %153, align 4
  br label %154

154:                                              ; preds = %68, %38
  %155 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %156 = load i32, i32* %10, align 4
  %157 = getelementptr inbounds [15 x i32], [15 x i32]* %11, i64 0, i64 0
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @reg_wb(%struct.gspca_dev* %155, i32 %156, i32 0, i32* %157, i32 %158)
  ret void
}

declare dso_local i32 @reg_wb(%struct.gspca_dev*, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
