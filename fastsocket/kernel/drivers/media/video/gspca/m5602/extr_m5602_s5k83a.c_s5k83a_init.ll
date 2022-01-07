; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_s5k83a.c_s5k83a_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i64 }
%struct.s5k83a_priv = type { i32* }

@init_s5k83a = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid stream command, exiting init\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dump_sensor = common dso_local global i64 0, align 8
@GAIN_IDX = common dso_local global i64 0, align 8
@BRIGHTNESS_IDX = common dso_local global i64 0, align 8
@EXPOSURE_IDX = common dso_local global i64 0, align 8
@HFLIP_IDX = common dso_local global i64 0, align 8
@VFLIP_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @s5k83a_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  store i32 0, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.s5k83a_priv*
  %12 = getelementptr inbounds %struct.s5k83a_priv, %struct.s5k83a_priv* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %102, %1
  %15 = load i32, i32* %4, align 4
  %16 = load i32**, i32*** @init_s5k83a, align 8
  %17 = call i32 @ARRAY_SIZE(i32** %16)
  %18 = icmp slt i32 %15, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %14
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  br label %23

23:                                               ; preds = %19, %14
  %24 = phi i1 [ false, %14 ], [ %22, %19 ]
  br i1 %24, label %25, label %105

25:                                               ; preds = %23
  %26 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %26, i8 0, i64 8, i1 false)
  %27 = load i32**, i32*** @init_s5k83a, align 8
  %28 = load i32, i32* %4, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32*, i32** %27, i64 %29
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  %33 = load i32, i32* %32, align 4
  switch i32 %33, label %97 [
    i32 130, label %34
    i32 129, label %51
    i32 128, label %70
  ]

34:                                               ; preds = %25
  %35 = load %struct.sd*, %struct.sd** %3, align 8
  %36 = load i32**, i32*** @init_s5k83a, align 8
  %37 = load i32, i32* %4, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32*, i32** %36, i64 %38
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = load i32**, i32*** @init_s5k83a, align 8
  %44 = load i32, i32* %4, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32*, i32** %43, i64 %45
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @m5602_write_bridge(%struct.sd* %35, i32 %42, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %101

51:                                               ; preds = %25
  %52 = load i32**, i32*** @init_s5k83a, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32*, i32** %52, i64 %54
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.sd*, %struct.sd** %3, align 8
  %61 = load i32**, i32*** @init_s5k83a, align 8
  %62 = load i32, i32* %4, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32*, i32** %61, i64 %63
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  %67 = load i32, i32* %66, align 4
  %68 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %69 = call i32 @m5602_write_sensor(%struct.sd* %60, i32 %67, i32* %68, i32 1)
  store i32 %69, i32* %5, align 4
  br label %101

70:                                               ; preds = %25
  %71 = load i32**, i32*** @init_s5k83a, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32*, i32** %71, i64 %73
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 2
  %77 = load i32, i32* %76, align 4
  %78 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %77, i32* %78, align 4
  %79 = load i32**, i32*** @init_s5k83a, align 8
  %80 = load i32, i32* %4, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i32*, i32** %79, i64 %81
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 3
  %85 = load i32, i32* %84, align 4
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 1
  store i32 %85, i32* %86, align 4
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = load i32**, i32*** @init_s5k83a, align 8
  %89 = load i32, i32* %4, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32*, i32** %88, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  %94 = load i32, i32* %93, align 4
  %95 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %96 = call i32 @m5602_write_sensor(%struct.sd* %87, i32 %94, i32* %95, i32 2)
  store i32 %96, i32* %5, align 4
  br label %101

97:                                               ; preds = %25
  %98 = call i32 @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %99 = load i32, i32* @EINVAL, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %2, align 4
  br label %168

101:                                              ; preds = %70, %51, %34
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %4, align 4
  %104 = add nsw i32 %103, 1
  store i32 %104, i32* %4, align 4
  br label %14

105:                                              ; preds = %23
  %106 = load i64, i64* @dump_sensor, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %105
  %109 = load %struct.sd*, %struct.sd** %3, align 8
  %110 = call i32 @s5k83a_dump_registers(%struct.sd* %109)
  br label %111

111:                                              ; preds = %108, %105
  %112 = load %struct.sd*, %struct.sd** %3, align 8
  %113 = getelementptr inbounds %struct.sd, %struct.sd* %112, i32 0, i32 0
  %114 = load i32*, i32** %6, align 8
  %115 = load i64, i64* @GAIN_IDX, align 8
  %116 = getelementptr inbounds i32, i32* %114, i64 %115
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @s5k83a_set_gain(i32* %113, i32 %117)
  store i32 %118, i32* %5, align 4
  %119 = load i32, i32* %5, align 4
  %120 = icmp slt i32 %119, 0
  br i1 %120, label %121, label %123

121:                                              ; preds = %111
  %122 = load i32, i32* %5, align 4
  store i32 %122, i32* %2, align 4
  br label %168

123:                                              ; preds = %111
  %124 = load %struct.sd*, %struct.sd** %3, align 8
  %125 = getelementptr inbounds %struct.sd, %struct.sd* %124, i32 0, i32 0
  %126 = load i32*, i32** %6, align 8
  %127 = load i64, i64* @BRIGHTNESS_IDX, align 8
  %128 = getelementptr inbounds i32, i32* %126, i64 %127
  %129 = load i32, i32* %128, align 4
  %130 = call i32 @s5k83a_set_brightness(i32* %125, i32 %129)
  store i32 %130, i32* %5, align 4
  %131 = load i32, i32* %5, align 4
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %123
  %134 = load i32, i32* %5, align 4
  store i32 %134, i32* %2, align 4
  br label %168

135:                                              ; preds = %123
  %136 = load %struct.sd*, %struct.sd** %3, align 8
  %137 = getelementptr inbounds %struct.sd, %struct.sd* %136, i32 0, i32 0
  %138 = load i32*, i32** %6, align 8
  %139 = load i64, i64* @EXPOSURE_IDX, align 8
  %140 = getelementptr inbounds i32, i32* %138, i64 %139
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @s5k83a_set_exposure(i32* %137, i32 %141)
  store i32 %142, i32* %5, align 4
  %143 = load i32, i32* %5, align 4
  %144 = icmp slt i32 %143, 0
  br i1 %144, label %145, label %147

145:                                              ; preds = %135
  %146 = load i32, i32* %5, align 4
  store i32 %146, i32* %2, align 4
  br label %168

147:                                              ; preds = %135
  %148 = load %struct.sd*, %struct.sd** %3, align 8
  %149 = getelementptr inbounds %struct.sd, %struct.sd* %148, i32 0, i32 0
  %150 = load i32*, i32** %6, align 8
  %151 = load i64, i64* @HFLIP_IDX, align 8
  %152 = getelementptr inbounds i32, i32* %150, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @s5k83a_set_hflip(i32* %149, i32 %153)
  store i32 %154, i32* %5, align 4
  %155 = load i32, i32* %5, align 4
  %156 = icmp slt i32 %155, 0
  br i1 %156, label %157, label %159

157:                                              ; preds = %147
  %158 = load i32, i32* %5, align 4
  store i32 %158, i32* %2, align 4
  br label %168

159:                                              ; preds = %147
  %160 = load %struct.sd*, %struct.sd** %3, align 8
  %161 = getelementptr inbounds %struct.sd, %struct.sd* %160, i32 0, i32 0
  %162 = load i32*, i32** %6, align 8
  %163 = load i64, i64* @VFLIP_IDX, align 8
  %164 = getelementptr inbounds i32, i32* %162, i64 %163
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @s5k83a_set_vflip(i32* %161, i32 %165)
  store i32 %166, i32* %5, align 4
  %167 = load i32, i32* %5, align 4
  store i32 %167, i32* %2, align 4
  br label %168

168:                                              ; preds = %159, %157, %145, %133, %121, %97
  %169 = load i32, i32* %2, align 4
  ret i32 %169
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @s5k83a_dump_registers(%struct.sd*) #1

declare dso_local i32 @s5k83a_set_gain(i32*, i32) #1

declare dso_local i32 @s5k83a_set_brightness(i32*, i32) #1

declare dso_local i32 @s5k83a_set_exposure(i32*, i32) #1

declare dso_local i32 @s5k83a_set_hflip(i32*, i32) #1

declare dso_local i32 @s5k83a_set_vflip(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
