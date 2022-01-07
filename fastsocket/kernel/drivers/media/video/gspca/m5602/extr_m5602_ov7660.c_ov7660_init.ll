; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov7660.c_ov7660_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov7660.c_ov7660_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32* }

@init_ov7660 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@dump_sensor = common dso_local global i64 0, align 8
@GAIN_IDX = common dso_local global i64 0, align 8
@AUTO_WHITE_BALANCE_IDX = common dso_local global i64 0, align 8
@AUTO_GAIN_CTRL_IDX = common dso_local global i64 0, align 8
@AUTO_EXPOSURE_IDX = common dso_local global i64 0, align 8
@HFLIP_IDX = common dso_local global i64 0, align 8
@VFLIP_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov7660_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i64], align 16
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %63, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i64**, i64*** @init_ov7660, align 8
  %14 = call i32 @ARRAY_SIZE(i64** %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %66

16:                                               ; preds = %11
  %17 = load i64**, i64*** @init_ov7660, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i64*, i64** %17, i64 %19
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @BRIDGE, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %43

26:                                               ; preds = %16
  %27 = load %struct.sd*, %struct.sd** %3, align 8
  %28 = load i64**, i64*** @init_ov7660, align 8
  %29 = load i32, i32* %4, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64*, i64** %28, i64 %30
  %32 = load i64*, i64** %31, align 8
  %33 = getelementptr inbounds i64, i64* %32, i64 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64**, i64*** @init_ov7660, align 8
  %36 = load i32, i32* %4, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i64*, i64** %35, i64 %37
  %39 = load i64*, i64** %38, align 8
  %40 = getelementptr inbounds i64, i64* %39, i64 2
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @m5602_write_bridge(%struct.sd* %27, i64 %34, i64 %41)
  store i32 %42, i32* %5, align 4
  br label %62

43:                                               ; preds = %16
  %44 = load i64**, i64*** @init_ov7660, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i64*, i64** %44, i64 %46
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 2
  %50 = load i64, i64* %49, align 8
  %51 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %50, i64* %51, align 16
  %52 = load %struct.sd*, %struct.sd** %3, align 8
  %53 = load i64**, i64*** @init_ov7660, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64*, i64** %53, i64 %55
  %57 = load i64*, i64** %56, align 8
  %58 = getelementptr inbounds i64, i64* %57, i64 1
  %59 = load i64, i64* %58, align 8
  %60 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %61 = call i32 @m5602_write_sensor(%struct.sd* %52, i64 %59, i64* %60, i32 1)
  store i32 %61, i32* %5, align 4
  br label %62

62:                                               ; preds = %43, %26
  br label %63

63:                                               ; preds = %62
  %64 = load i32, i32* %4, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %4, align 4
  br label %11

66:                                               ; preds = %11
  %67 = load i64, i64* @dump_sensor, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = load %struct.sd*, %struct.sd** %3, align 8
  %71 = call i32 @ov7660_dump_registers(%struct.sd* %70)
  br label %72

72:                                               ; preds = %69, %66
  %73 = load %struct.sd*, %struct.sd** %3, align 8
  %74 = getelementptr inbounds %struct.sd, %struct.sd* %73, i32 0, i32 0
  %75 = load i32*, i32** %6, align 8
  %76 = load i64, i64* @GAIN_IDX, align 8
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ov7660_set_gain(i32* %74, i32 %78)
  store i32 %79, i32* %5, align 4
  %80 = load i32, i32* %5, align 4
  %81 = icmp slt i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %72
  %83 = load i32, i32* %5, align 4
  store i32 %83, i32* %2, align 4
  br label %141

84:                                               ; preds = %72
  %85 = load %struct.sd*, %struct.sd** %3, align 8
  %86 = getelementptr inbounds %struct.sd, %struct.sd* %85, i32 0, i32 0
  %87 = load i32*, i32** %6, align 8
  %88 = load i64, i64* @AUTO_WHITE_BALANCE_IDX, align 8
  %89 = getelementptr inbounds i32, i32* %87, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @ov7660_set_auto_white_balance(i32* %86, i32 %90)
  store i32 %91, i32* %5, align 4
  %92 = load i32, i32* %5, align 4
  %93 = icmp slt i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %84
  %95 = load i32, i32* %5, align 4
  store i32 %95, i32* %2, align 4
  br label %141

96:                                               ; preds = %84
  %97 = load %struct.sd*, %struct.sd** %3, align 8
  %98 = getelementptr inbounds %struct.sd, %struct.sd* %97, i32 0, i32 0
  %99 = load i32*, i32** %6, align 8
  %100 = load i64, i64* @AUTO_GAIN_CTRL_IDX, align 8
  %101 = getelementptr inbounds i32, i32* %99, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ov7660_set_auto_gain(i32* %98, i32 %102)
  store i32 %103, i32* %5, align 4
  %104 = load i32, i32* %5, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %108

106:                                              ; preds = %96
  %107 = load i32, i32* %5, align 4
  store i32 %107, i32* %2, align 4
  br label %141

108:                                              ; preds = %96
  %109 = load %struct.sd*, %struct.sd** %3, align 8
  %110 = getelementptr inbounds %struct.sd, %struct.sd* %109, i32 0, i32 0
  %111 = load i32*, i32** %6, align 8
  %112 = load i64, i64* @AUTO_EXPOSURE_IDX, align 8
  %113 = getelementptr inbounds i32, i32* %111, i64 %112
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @ov7660_set_auto_exposure(i32* %110, i32 %114)
  store i32 %115, i32* %5, align 4
  %116 = load i32, i32* %5, align 4
  %117 = icmp slt i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %108
  %119 = load i32, i32* %5, align 4
  store i32 %119, i32* %2, align 4
  br label %141

120:                                              ; preds = %108
  %121 = load %struct.sd*, %struct.sd** %3, align 8
  %122 = getelementptr inbounds %struct.sd, %struct.sd* %121, i32 0, i32 0
  %123 = load i32*, i32** %6, align 8
  %124 = load i64, i64* @HFLIP_IDX, align 8
  %125 = getelementptr inbounds i32, i32* %123, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @ov7660_set_hflip(i32* %122, i32 %126)
  store i32 %127, i32* %5, align 4
  %128 = load i32, i32* %5, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %120
  %131 = load i32, i32* %5, align 4
  store i32 %131, i32* %2, align 4
  br label %141

132:                                              ; preds = %120
  %133 = load %struct.sd*, %struct.sd** %3, align 8
  %134 = getelementptr inbounds %struct.sd, %struct.sd* %133, i32 0, i32 0
  %135 = load i32*, i32** %6, align 8
  %136 = load i64, i64* @VFLIP_IDX, align 8
  %137 = getelementptr inbounds i32, i32* %135, i64 %136
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @ov7660_set_vflip(i32* %134, i32 %138)
  store i32 %139, i32* %5, align 4
  %140 = load i32, i32* %5, align 4
  store i32 %140, i32* %2, align 4
  br label %141

141:                                              ; preds = %132, %130, %118, %106, %94, %82
  %142 = load i32, i32* %2, align 4
  ret i32 %142
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @ov7660_dump_registers(%struct.sd*) #1

declare dso_local i32 @ov7660_set_gain(i32*, i32) #1

declare dso_local i32 @ov7660_set_auto_white_balance(i32*, i32) #1

declare dso_local i32 @ov7660_set_auto_gain(i32*, i32) #1

declare dso_local i32 @ov7660_set_auto_exposure(i32*, i32) #1

declare dso_local i32 @ov7660_set_hflip(i32*, i32) #1

declare dso_local i32 @ov7660_set_vflip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
