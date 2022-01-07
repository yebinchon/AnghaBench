; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_cmatrix.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sn9c20x.c_set_cmatrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { i64, i32, i32, i32 }

@hsv_red_x = common dso_local global i32* null, align 8
@hsv_red_y = common dso_local global i32* null, align 8
@hsv_green_x = common dso_local global i32* null, align 8
@hsv_green_y = common dso_local global i32* null, align 8
@hsv_blue_x = common dso_local global i32* null, align 8
@hsv_blue_y = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @set_cmatrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_cmatrix(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca [21 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %8 = bitcast %struct.gspca_dev* %7 to %struct.sd*
  store %struct.sd* %8, %struct.sd** %3, align 8
  %9 = load %struct.sd*, %struct.sd** %3, align 8
  %10 = getelementptr inbounds %struct.sd, %struct.sd* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = add i64 180, %11
  store i64 %12, i64* %5, align 8
  %13 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 84)
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = mul nsw i32 %17, 37
  %19 = sdiv i32 %18, 256
  %20 = add nsw i32 %19, 38
  %21 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 2
  store i32 %20, i32* %21, align 8
  %22 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 2
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %23, 38
  %25 = mul nsw i32 %24, 19
  %26 = sdiv i32 %25, 37
  %27 = add nsw i32 19, %26
  %28 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 0
  store i32 %27, i32* %28, align 16
  %29 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 2
  %30 = load i32, i32* %29, align 8
  %31 = sub nsw i32 %30, 38
  %32 = mul nsw i32 %31, 7
  %33 = sdiv i32 %32, 37
  %34 = add nsw i32 7, %33
  %35 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 4
  store i32 %34, i32* %35, align 16
  %36 = load %struct.sd*, %struct.sd** %3, align 8
  %37 = getelementptr inbounds %struct.sd, %struct.sd* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = sub nsw i32 %38, 128
  %40 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 18
  store i32 %39, i32* %40, align 8
  %41 = load i32*, i32** @hsv_red_x, align 8
  %42 = load i64, i64* %5, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.sd*, %struct.sd** %3, align 8
  %46 = getelementptr inbounds %struct.sd, %struct.sd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = mul nsw i32 %44, %47
  %49 = ashr i32 %48, 8
  %50 = sext i32 %49 to i64
  store i64 %50, i64* %4, align 8
  %51 = load i64, i64* %4, align 8
  %52 = trunc i64 %51 to i32
  %53 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 6
  store i32 %52, i32* %53, align 8
  %54 = load i64, i64* %4, align 8
  %55 = lshr i64 %54, 8
  %56 = and i64 %55, 15
  %57 = trunc i64 %56 to i32
  %58 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 7
  store i32 %57, i32* %58, align 4
  %59 = load i32*, i32** @hsv_red_y, align 8
  %60 = load i64, i64* %5, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.sd*, %struct.sd** %3, align 8
  %64 = getelementptr inbounds %struct.sd, %struct.sd* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 8
  %66 = mul nsw i32 %62, %65
  %67 = ashr i32 %66, 8
  %68 = sext i32 %67 to i64
  store i64 %68, i64* %4, align 8
  %69 = load i64, i64* %4, align 8
  %70 = trunc i64 %69 to i32
  %71 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 8
  store i32 %70, i32* %71, align 16
  %72 = load i64, i64* %4, align 8
  %73 = lshr i64 %72, 8
  %74 = and i64 %73, 15
  %75 = trunc i64 %74 to i32
  %76 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 9
  store i32 %75, i32* %76, align 4
  %77 = load i32*, i32** @hsv_green_x, align 8
  %78 = load i64, i64* %5, align 8
  %79 = getelementptr inbounds i32, i32* %77, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.sd*, %struct.sd** %3, align 8
  %82 = getelementptr inbounds %struct.sd, %struct.sd* %81, i32 0, i32 3
  %83 = load i32, i32* %82, align 8
  %84 = mul nsw i32 %80, %83
  %85 = ashr i32 %84, 8
  %86 = sext i32 %85 to i64
  store i64 %86, i64* %4, align 8
  %87 = load i64, i64* %4, align 8
  %88 = trunc i64 %87 to i32
  %89 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 10
  store i32 %88, i32* %89, align 8
  %90 = load i64, i64* %4, align 8
  %91 = lshr i64 %90, 8
  %92 = and i64 %91, 15
  %93 = trunc i64 %92 to i32
  %94 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 11
  store i32 %93, i32* %94, align 4
  %95 = load i32*, i32** @hsv_green_y, align 8
  %96 = load i64, i64* %5, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.sd*, %struct.sd** %3, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = mul nsw i32 %98, %101
  %103 = ashr i32 %102, 8
  %104 = sext i32 %103 to i64
  store i64 %104, i64* %4, align 8
  %105 = load i64, i64* %4, align 8
  %106 = trunc i64 %105 to i32
  %107 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 12
  store i32 %106, i32* %107, align 16
  %108 = load i64, i64* %4, align 8
  %109 = lshr i64 %108, 8
  %110 = and i64 %109, 15
  %111 = trunc i64 %110 to i32
  %112 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 13
  store i32 %111, i32* %112, align 4
  %113 = load i32*, i32** @hsv_blue_x, align 8
  %114 = load i64, i64* %5, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.sd*, %struct.sd** %3, align 8
  %118 = getelementptr inbounds %struct.sd, %struct.sd* %117, i32 0, i32 3
  %119 = load i32, i32* %118, align 8
  %120 = mul nsw i32 %116, %119
  %121 = ashr i32 %120, 8
  %122 = sext i32 %121 to i64
  store i64 %122, i64* %4, align 8
  %123 = load i64, i64* %4, align 8
  %124 = trunc i64 %123 to i32
  %125 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 14
  store i32 %124, i32* %125, align 8
  %126 = load i64, i64* %4, align 8
  %127 = lshr i64 %126, 8
  %128 = and i64 %127, 15
  %129 = trunc i64 %128 to i32
  %130 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 15
  store i32 %129, i32* %130, align 4
  %131 = load i32*, i32** @hsv_blue_y, align 8
  %132 = load i64, i64* %5, align 8
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = mul nsw i32 %134, %137
  %139 = ashr i32 %138, 8
  %140 = sext i32 %139 to i64
  store i64 %140, i64* %4, align 8
  %141 = load i64, i64* %4, align 8
  %142 = trunc i64 %141 to i32
  %143 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 16
  store i32 %142, i32* %143, align 16
  %144 = load i64, i64* %4, align 8
  %145 = lshr i64 %144, 8
  %146 = and i64 %145, 15
  %147 = trunc i64 %146 to i32
  %148 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 17
  store i32 %147, i32* %148, align 4
  %149 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %150 = getelementptr inbounds [21 x i32], [21 x i32]* %6, i64 0, i64 0
  %151 = call i32 @reg_w(%struct.gspca_dev* %149, i32 4321, i32* %150, i32 21)
  ret i32 %151
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
