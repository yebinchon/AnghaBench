; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov9650.c_ov9650_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_ov9650.c_ov9650_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32* }

@dump_sensor = common dso_local global i64 0, align 8
@init_ov9650 = common dso_local global i64** null, align 8
@SENSOR = common dso_local global i64 0, align 8
@EXPOSURE_IDX = common dso_local global i64 0, align 8
@GAIN_IDX = common dso_local global i64 0, align 8
@RED_BALANCE_IDX = common dso_local global i64 0, align 8
@BLUE_BALANCE_IDX = common dso_local global i64 0, align 8
@HFLIP_IDX = common dso_local global i64 0, align 8
@VFLIP_IDX = common dso_local global i64 0, align 8
@AUTO_EXPOSURE_IDX = common dso_local global i64 0, align 8
@AUTO_WHITE_BALANCE_IDX = common dso_local global i64 0, align 8
@AUTO_GAIN_CTRL_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov9650_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %7, align 8
  %11 = load i64, i64* @dump_sensor, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %1
  %14 = load %struct.sd*, %struct.sd** %3, align 8
  %15 = call i32 @ov9650_dump_registers(%struct.sd* %14)
  br label %16

16:                                               ; preds = %13, %1
  store i32 0, i32* %4, align 4
  br label %17

17:                                               ; preds = %67, %16
  %18 = load i32, i32* %4, align 4
  %19 = load i64**, i64*** @init_ov9650, align 8
  %20 = call i32 @ARRAY_SIZE(i64** %19)
  %21 = icmp slt i32 %18, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load i32, i32* %5, align 4
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %22, %17
  %27 = phi i1 [ false, %17 ], [ %25, %22 ]
  br i1 %27, label %28, label %70

28:                                               ; preds = %26
  %29 = load i64**, i64*** @init_ov9650, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i64*, i64** %29, i64 %31
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %6, align 8
  %36 = load i64**, i64*** @init_ov9650, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i64*, i64** %36, i64 %38
  %40 = load i64*, i64** %39, align 8
  %41 = getelementptr inbounds i64, i64* %40, i64 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @SENSOR, align 8
  %44 = icmp eq i64 %42, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %28
  %46 = load %struct.sd*, %struct.sd** %3, align 8
  %47 = load i64**, i64*** @init_ov9650, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i64*, i64** %47, i64 %49
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @m5602_write_sensor(%struct.sd* %46, i64 %53, i64* %6, i32 1)
  store i32 %54, i32* %5, align 4
  br label %66

55:                                               ; preds = %28
  %56 = load %struct.sd*, %struct.sd** %3, align 8
  %57 = load i64**, i64*** @init_ov9650, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i64*, i64** %57, i64 %59
  %61 = load i64*, i64** %60, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %6, align 8
  %65 = call i32 @m5602_write_bridge(%struct.sd* %56, i64 %63, i64 %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %55, %45
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %17

70:                                               ; preds = %26
  %71 = load %struct.sd*, %struct.sd** %3, align 8
  %72 = getelementptr inbounds %struct.sd, %struct.sd* %71, i32 0, i32 0
  %73 = load i32*, i32** %7, align 8
  %74 = load i64, i64* @EXPOSURE_IDX, align 8
  %75 = getelementptr inbounds i32, i32* %73, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @ov9650_set_exposure(i32* %72, i32 %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* %5, align 4
  store i32 %81, i32* %2, align 4
  br label %175

82:                                               ; preds = %70
  %83 = load %struct.sd*, %struct.sd** %3, align 8
  %84 = getelementptr inbounds %struct.sd, %struct.sd* %83, i32 0, i32 0
  %85 = load i32*, i32** %7, align 8
  %86 = load i64, i64* @GAIN_IDX, align 8
  %87 = getelementptr inbounds i32, i32* %85, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ov9650_set_gain(i32* %84, i32 %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %94

92:                                               ; preds = %82
  %93 = load i32, i32* %5, align 4
  store i32 %93, i32* %2, align 4
  br label %175

94:                                               ; preds = %82
  %95 = load %struct.sd*, %struct.sd** %3, align 8
  %96 = getelementptr inbounds %struct.sd, %struct.sd* %95, i32 0, i32 0
  %97 = load i32*, i32** %7, align 8
  %98 = load i64, i64* @RED_BALANCE_IDX, align 8
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ov9650_set_red_balance(i32* %96, i32 %100)
  store i32 %101, i32* %5, align 4
  %102 = load i32, i32* %5, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %94
  %105 = load i32, i32* %5, align 4
  store i32 %105, i32* %2, align 4
  br label %175

106:                                              ; preds = %94
  %107 = load %struct.sd*, %struct.sd** %3, align 8
  %108 = getelementptr inbounds %struct.sd, %struct.sd* %107, i32 0, i32 0
  %109 = load i32*, i32** %7, align 8
  %110 = load i64, i64* @BLUE_BALANCE_IDX, align 8
  %111 = getelementptr inbounds i32, i32* %109, i64 %110
  %112 = load i32, i32* %111, align 4
  %113 = call i32 @ov9650_set_blue_balance(i32* %108, i32 %112)
  store i32 %113, i32* %5, align 4
  %114 = load i32, i32* %5, align 4
  %115 = icmp slt i32 %114, 0
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = load i32, i32* %5, align 4
  store i32 %117, i32* %2, align 4
  br label %175

118:                                              ; preds = %106
  %119 = load %struct.sd*, %struct.sd** %3, align 8
  %120 = getelementptr inbounds %struct.sd, %struct.sd* %119, i32 0, i32 0
  %121 = load i32*, i32** %7, align 8
  %122 = load i64, i64* @HFLIP_IDX, align 8
  %123 = getelementptr inbounds i32, i32* %121, i64 %122
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @ov9650_set_hflip(i32* %120, i32 %124)
  store i32 %125, i32* %5, align 4
  %126 = load i32, i32* %5, align 4
  %127 = icmp slt i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %118
  %129 = load i32, i32* %5, align 4
  store i32 %129, i32* %2, align 4
  br label %175

130:                                              ; preds = %118
  %131 = load %struct.sd*, %struct.sd** %3, align 8
  %132 = getelementptr inbounds %struct.sd, %struct.sd* %131, i32 0, i32 0
  %133 = load i32*, i32** %7, align 8
  %134 = load i64, i64* @VFLIP_IDX, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @ov9650_set_vflip(i32* %132, i32 %136)
  store i32 %137, i32* %5, align 4
  %138 = load i32, i32* %5, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %142

140:                                              ; preds = %130
  %141 = load i32, i32* %5, align 4
  store i32 %141, i32* %2, align 4
  br label %175

142:                                              ; preds = %130
  %143 = load %struct.sd*, %struct.sd** %3, align 8
  %144 = getelementptr inbounds %struct.sd, %struct.sd* %143, i32 0, i32 0
  %145 = load i32*, i32** %7, align 8
  %146 = load i64, i64* @AUTO_EXPOSURE_IDX, align 8
  %147 = getelementptr inbounds i32, i32* %145, i64 %146
  %148 = load i32, i32* %147, align 4
  %149 = call i32 @ov9650_set_auto_exposure(i32* %144, i32 %148)
  store i32 %149, i32* %5, align 4
  %150 = load i32, i32* %5, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %142
  %153 = load i32, i32* %5, align 4
  store i32 %153, i32* %2, align 4
  br label %175

154:                                              ; preds = %142
  %155 = load %struct.sd*, %struct.sd** %3, align 8
  %156 = getelementptr inbounds %struct.sd, %struct.sd* %155, i32 0, i32 0
  %157 = load i32*, i32** %7, align 8
  %158 = load i64, i64* @AUTO_WHITE_BALANCE_IDX, align 8
  %159 = getelementptr inbounds i32, i32* %157, i64 %158
  %160 = load i32, i32* %159, align 4
  %161 = call i32 @ov9650_set_auto_white_balance(i32* %156, i32 %160)
  store i32 %161, i32* %5, align 4
  %162 = load i32, i32* %5, align 4
  %163 = icmp slt i32 %162, 0
  br i1 %163, label %164, label %166

164:                                              ; preds = %154
  %165 = load i32, i32* %5, align 4
  store i32 %165, i32* %2, align 4
  br label %175

166:                                              ; preds = %154
  %167 = load %struct.sd*, %struct.sd** %3, align 8
  %168 = getelementptr inbounds %struct.sd, %struct.sd* %167, i32 0, i32 0
  %169 = load i32*, i32** %7, align 8
  %170 = load i64, i64* @AUTO_GAIN_CTRL_IDX, align 8
  %171 = getelementptr inbounds i32, i32* %169, i64 %170
  %172 = load i32, i32* %171, align 4
  %173 = call i32 @ov9650_set_auto_gain(i32* %168, i32 %172)
  store i32 %173, i32* %5, align 4
  %174 = load i32, i32* %5, align 4
  store i32 %174, i32* %2, align 4
  br label %175

175:                                              ; preds = %166, %164, %152, %140, %128, %116, %104, %92, %80
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

declare dso_local i32 @ov9650_dump_registers(%struct.sd*) #1

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @ov9650_set_exposure(i32*, i32) #1

declare dso_local i32 @ov9650_set_gain(i32*, i32) #1

declare dso_local i32 @ov9650_set_red_balance(i32*, i32) #1

declare dso_local i32 @ov9650_set_blue_balance(i32*, i32) #1

declare dso_local i32 @ov9650_set_hflip(i32*, i32) #1

declare dso_local i32 @ov9650_set_vflip(i32*, i32) #1

declare dso_local i32 @ov9650_set_auto_exposure(i32*, i32) #1

declare dso_local i32 @ov9650_set_auto_white_balance(i32*, i32) #1

declare dso_local i32 @ov9650_set_auto_gain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
