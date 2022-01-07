; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mars.c_sd_start.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_mars.c_sd_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32*, i32, i64 }
%struct.sd = type { %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@GAMMA = common dso_local global i64 0, align 8
@COLORS = common dso_local global i64 0, align 8
@BRIGHTNESS = common dso_local global i64 0, align 8
@SHARPNESS = common dso_local global i64 0, align 8
@mi_data = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sd_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sd_start(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %6 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %7 = bitcast %struct.gspca_dev* %6 to %struct.sd*
  store %struct.sd* %7, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %15 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @jpeg_define(i32 %10, i32 %13, i32 %16, i32 33)
  %18 = load %struct.sd*, %struct.sd** %3, align 8
  %19 = getelementptr inbounds %struct.sd, %struct.sd* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sd*, %struct.sd** %3, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @jpeg_set_qual(i32 %20, i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  store i32* %27, i32** %4, align 8
  %28 = load i32*, i32** %4, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 1, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 1
  store i32 1, i32* %31, align 4
  %32 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %33 = call i32 @reg_w(%struct.gspca_dev* %32, i32 2)
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 0, i32* %35, align 4
  %36 = load i32*, i32** %4, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 1
  store i32 13, i32* %37, align 4
  %38 = load i32*, i32** %4, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 2
  store i32 1, i32* %39, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = sdiv i32 %42, 8
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %47 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = sdiv i32 %48, 8
  %50 = load i32*, i32** %4, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %4, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 5
  store i32 48, i32* %53, align 4
  %54 = load i32*, i32** %4, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 6
  store i32 2, i32* %55, align 4
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = getelementptr inbounds %struct.sd, %struct.sd* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i64, i64* @GAMMA, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = mul nsw i32 %62, 64
  %64 = load i32*, i32** %4, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 7
  store i32 %63, i32* %65, align 4
  %66 = load i32*, i32** %4, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 8
  store i32 1, i32* %67, align 4
  %68 = load i32*, i32** %4, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 9
  store i32 82, i32* %69, align 4
  %70 = load i32*, i32** %4, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 10
  store i32 24, i32* %71, align 4
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %73 = call i32 @reg_w(%struct.gspca_dev* %72, i32 11)
  %74 = load i32*, i32** %4, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 35, i32* %75, align 4
  %76 = load i32*, i32** %4, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 9, i32* %77, align 4
  %78 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %79 = call i32 @reg_w(%struct.gspca_dev* %78, i32 2)
  %80 = load i32*, i32** %4, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 0
  store i32 60, i32* %81, align 4
  %82 = load i32*, i32** %4, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 50, i32* %83, align 4
  %84 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %85 = call i32 @reg_w(%struct.gspca_dev* %84, i32 2)
  %86 = load i32*, i32** %4, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  store i32 94, i32* %87, align 4
  %88 = load i32*, i32** %4, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 0, i32* %89, align 4
  %90 = load %struct.sd*, %struct.sd** %3, align 8
  %91 = getelementptr inbounds %struct.sd, %struct.sd* %90, i32 0, i32 0
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = load i64, i64* @COLORS, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = shl i32 %96, 3
  %98 = load i32*, i32** %4, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 2
  store i32 %97, i32* %99, align 4
  %100 = load %struct.sd*, %struct.sd** %3, align 8
  %101 = getelementptr inbounds %struct.sd, %struct.sd* %100, i32 0, i32 0
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** %101, align 8
  %103 = load i64, i64* @COLORS, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = ashr i32 %106, 2
  %108 = and i32 %107, 248
  %109 = or i32 %108, 4
  %110 = load i32*, i32** %4, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 3
  store i32 %109, i32* %111, align 4
  %112 = load %struct.sd*, %struct.sd** %3, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 0
  %114 = load %struct.TYPE_2__*, %struct.TYPE_2__** %113, align 8
  %115 = load i64, i64* @BRIGHTNESS, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 4
  %119 = load i32*, i32** %4, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 4
  store i32 %118, i32* %120, align 4
  %121 = load i32*, i32** %4, align 8
  %122 = getelementptr inbounds i32, i32* %121, i64 5
  store i32 0, i32* %122, align 4
  %123 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %124 = call i32 @reg_w(%struct.gspca_dev* %123, i32 6)
  %125 = load i32*, i32** %4, align 8
  %126 = getelementptr inbounds i32, i32* %125, i64 0
  store i32 103, i32* %126, align 4
  %127 = load %struct.sd*, %struct.sd** %3, align 8
  %128 = getelementptr inbounds %struct.sd, %struct.sd* %127, i32 0, i32 0
  %129 = load %struct.TYPE_2__*, %struct.TYPE_2__** %128, align 8
  %130 = load i64, i64* @SHARPNESS, align 8
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %129, i64 %130
  %132 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i32 0, i32 0
  %133 = load i32, i32* %132, align 4
  %134 = mul nsw i32 %133, 4
  %135 = add nsw i32 %134, 3
  %136 = load i32*, i32** %4, align 8
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 %135, i32* %137, align 4
  %138 = load i32*, i32** %4, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 2
  store i32 20, i32* %139, align 4
  %140 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %141 = call i32 @reg_w(%struct.gspca_dev* %140, i32 3)
  %142 = load i32*, i32** %4, align 8
  %143 = getelementptr inbounds i32, i32* %142, i64 0
  store i32 105, i32* %143, align 4
  %144 = load i32*, i32** %4, align 8
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 47, i32* %145, align 4
  %146 = load i32*, i32** %4, align 8
  %147 = getelementptr inbounds i32, i32* %146, i64 2
  store i32 40, i32* %147, align 4
  %148 = load i32*, i32** %4, align 8
  %149 = getelementptr inbounds i32, i32* %148, i64 3
  store i32 66, i32* %149, align 4
  %150 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %151 = call i32 @reg_w(%struct.gspca_dev* %150, i32 4)
  %152 = load i32*, i32** %4, align 8
  %153 = getelementptr inbounds i32, i32* %152, i64 0
  store i32 99, i32* %153, align 4
  %154 = load i32*, i32** %4, align 8
  %155 = getelementptr inbounds i32, i32* %154, i64 1
  store i32 7, i32* %155, align 4
  %156 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %157 = call i32 @reg_w(%struct.gspca_dev* %156, i32 2)
  store i32 0, i32* %5, align 4
  br label %158

158:                                              ; preds = %172, %1
  %159 = load i32, i32* %5, align 4
  %160 = sext i32 %159 to i64
  %161 = icmp ult i64 %160, 8
  br i1 %161, label %162, label %175

162:                                              ; preds = %158
  %163 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %164 = load i32, i32* %5, align 4
  %165 = add nsw i32 %164, 1
  %166 = load i32*, i32** @mi_data, align 8
  %167 = load i32, i32* %5, align 4
  %168 = sext i32 %167 to i64
  %169 = getelementptr inbounds i32, i32* %166, i64 %168
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @mi_w(%struct.gspca_dev* %163, i32 %165, i32 %170)
  br label %172

172:                                              ; preds = %162
  %173 = load i32, i32* %5, align 4
  %174 = add nsw i32 %173, 1
  store i32 %174, i32* %5, align 4
  br label %158

175:                                              ; preds = %158
  %176 = load i32*, i32** %4, align 8
  %177 = getelementptr inbounds i32, i32* %176, i64 0
  store i32 0, i32* %177, align 4
  %178 = load i32*, i32** %4, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  store i32 77, i32* %179, align 4
  %180 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %181 = call i32 @reg_w(%struct.gspca_dev* %180, i32 2)
  %182 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %183 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %182, i32 0, i32 4
  store i64 0, i64* %183, align 8
  %184 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %185 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %184, i32 0, i32 3
  %186 = load i32, i32* %185, align 8
  ret i32 %186
}

declare dso_local i32 @jpeg_define(i32, i32, i32, i32) #1

declare dso_local i32 @jpeg_set_qual(i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32) #1

declare dso_local i32 @mi_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
