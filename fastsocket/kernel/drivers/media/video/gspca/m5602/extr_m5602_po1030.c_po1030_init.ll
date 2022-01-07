; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_po1030.c_po1030_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_po1030.c_po1030_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32* }

@init_po1030 = common dso_local global i32** null, align 8
@.str = private unnamed_addr constant [37 x i8] c"Invalid stream command, exiting init\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@dump_sensor = common dso_local global i64 0, align 8
@EXPOSURE_IDX = common dso_local global i64 0, align 8
@GAIN_IDX = common dso_local global i64 0, align 8
@HFLIP_IDX = common dso_local global i64 0, align 8
@VFLIP_IDX = common dso_local global i64 0, align 8
@RED_BALANCE_IDX = common dso_local global i64 0, align 8
@BLUE_BALANCE_IDX = common dso_local global i64 0, align 8
@GREEN_BALANCE_IDX = common dso_local global i64 0, align 8
@AUTO_WHITE_BALANCE_IDX = common dso_local global i64 0, align 8
@AUTO_EXPOSURE_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @po1030_init(%struct.sd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [2 x i32], align 4
  store %struct.sd* %0, %struct.sd** %3, align 8
  %8 = load %struct.sd*, %struct.sd** %3, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %4, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %72, %1
  %12 = load i32, i32* %5, align 4
  %13 = load i32**, i32*** @init_po1030, align 8
  %14 = call i32 @ARRAY_SIZE(i32** %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %6, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %75

22:                                               ; preds = %20
  %23 = bitcast [2 x i32]* %7 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %23, i8 0, i64 8, i1 false)
  %24 = load i32**, i32*** @init_po1030, align 8
  %25 = load i32, i32* %5, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32*, i32** %24, i64 %26
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  switch i32 %30, label %67 [
    i32 129, label %31
    i32 128, label %48
  ]

31:                                               ; preds = %22
  %32 = load %struct.sd*, %struct.sd** %3, align 8
  %33 = load i32**, i32*** @init_po1030, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32*, i32** %33, i64 %35
  %37 = load i32*, i32** %36, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 1
  %39 = load i32, i32* %38, align 4
  %40 = load i32**, i32*** @init_po1030, align 8
  %41 = load i32, i32* %5, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32*, i32** %40, i64 %42
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @m5602_write_bridge(%struct.sd* %32, i32 %39, i32 %46)
  store i32 %47, i32* %6, align 4
  br label %71

48:                                               ; preds = %22
  %49 = load i32**, i32*** @init_po1030, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i32*, i32** %49, i64 %51
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  store i32 %55, i32* %56, align 4
  %57 = load %struct.sd*, %struct.sd** %3, align 8
  %58 = load i32**, i32*** @init_po1030, align 8
  %59 = load i32, i32* %5, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32*, i32** %58, i64 %60
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds [2 x i32], [2 x i32]* %7, i64 0, i64 0
  %66 = call i32 @m5602_write_sensor(%struct.sd* %57, i32 %64, i32* %65, i32 1)
  store i32 %66, i32* %6, align 4
  br label %71

67:                                               ; preds = %22
  %68 = call i32 @info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %69 = load i32, i32* @EINVAL, align 4
  %70 = sub nsw i32 0, %69
  store i32 %70, i32* %2, align 4
  br label %191

71:                                               ; preds = %48, %31
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %5, align 4
  br label %11

75:                                               ; preds = %20
  %76 = load i32, i32* %6, align 4
  %77 = icmp slt i32 %76, 0
  br i1 %77, label %78, label %80

78:                                               ; preds = %75
  %79 = load i32, i32* %6, align 4
  store i32 %79, i32* %2, align 4
  br label %191

80:                                               ; preds = %75
  %81 = load i64, i64* @dump_sensor, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.sd*, %struct.sd** %3, align 8
  %85 = call i32 @po1030_dump_registers(%struct.sd* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 0
  %89 = load i32*, i32** %4, align 8
  %90 = load i64, i64* @EXPOSURE_IDX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @po1030_set_exposure(i32* %88, i32 %92)
  store i32 %93, i32* %6, align 4
  %94 = load i32, i32* %6, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %6, align 4
  store i32 %97, i32* %2, align 4
  br label %191

98:                                               ; preds = %86
  %99 = load %struct.sd*, %struct.sd** %3, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 0
  %101 = load i32*, i32** %4, align 8
  %102 = load i64, i64* @GAIN_IDX, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @po1030_set_gain(i32* %100, i32 %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %2, align 4
  br label %191

110:                                              ; preds = %98
  %111 = load %struct.sd*, %struct.sd** %3, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  %113 = load i32*, i32** %4, align 8
  %114 = load i64, i64* @HFLIP_IDX, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @po1030_set_hflip(i32* %112, i32 %116)
  store i32 %117, i32* %6, align 4
  %118 = load i32, i32* %6, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %6, align 4
  store i32 %121, i32* %2, align 4
  br label %191

122:                                              ; preds = %110
  %123 = load %struct.sd*, %struct.sd** %3, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 0
  %125 = load i32*, i32** %4, align 8
  %126 = load i64, i64* @VFLIP_IDX, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @po1030_set_vflip(i32* %124, i32 %128)
  store i32 %129, i32* %6, align 4
  %130 = load i32, i32* %6, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %2, align 4
  br label %191

134:                                              ; preds = %122
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  %137 = load i32*, i32** %4, align 8
  %138 = load i64, i64* @RED_BALANCE_IDX, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @po1030_set_red_balance(i32* %136, i32 %140)
  store i32 %141, i32* %6, align 4
  %142 = load i32, i32* %6, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %6, align 4
  store i32 %145, i32* %2, align 4
  br label %191

146:                                              ; preds = %134
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 0
  %149 = load i32*, i32** %4, align 8
  %150 = load i64, i64* @BLUE_BALANCE_IDX, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @po1030_set_blue_balance(i32* %148, i32 %152)
  store i32 %153, i32* %6, align 4
  %154 = load i32, i32* %6, align 4
  %155 = icmp slt i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %146
  %157 = load i32, i32* %6, align 4
  store i32 %157, i32* %2, align 4
  br label %191

158:                                              ; preds = %146
  %159 = load %struct.sd*, %struct.sd** %3, align 8
  %160 = getelementptr inbounds %struct.sd, %struct.sd* %159, i32 0, i32 0
  %161 = load i32*, i32** %4, align 8
  %162 = load i64, i64* @GREEN_BALANCE_IDX, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = call i32 @po1030_set_green_balance(i32* %160, i32 %164)
  store i32 %165, i32* %6, align 4
  %166 = load i32, i32* %6, align 4
  %167 = icmp slt i32 %166, 0
  br i1 %167, label %168, label %170

168:                                              ; preds = %158
  %169 = load i32, i32* %6, align 4
  store i32 %169, i32* %2, align 4
  br label %191

170:                                              ; preds = %158
  %171 = load %struct.sd*, %struct.sd** %3, align 8
  %172 = getelementptr inbounds %struct.sd, %struct.sd* %171, i32 0, i32 0
  %173 = load i32*, i32** %4, align 8
  %174 = load i64, i64* @AUTO_WHITE_BALANCE_IDX, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @po1030_set_auto_white_balance(i32* %172, i32 %176)
  store i32 %177, i32* %6, align 4
  %178 = load i32, i32* %6, align 4
  %179 = icmp slt i32 %178, 0
  br i1 %179, label %180, label %182

180:                                              ; preds = %170
  %181 = load i32, i32* %6, align 4
  store i32 %181, i32* %2, align 4
  br label %191

182:                                              ; preds = %170
  %183 = load %struct.sd*, %struct.sd** %3, align 8
  %184 = getelementptr inbounds %struct.sd, %struct.sd* %183, i32 0, i32 0
  %185 = load i32*, i32** %4, align 8
  %186 = load i64, i64* @AUTO_EXPOSURE_IDX, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @po1030_set_auto_exposure(i32* %184, i32 %188)
  store i32 %189, i32* %6, align 4
  %190 = load i32, i32* %6, align 4
  store i32 %190, i32* %2, align 4
  br label %191

191:                                              ; preds = %182, %180, %168, %156, %144, %132, %120, %108, %96, %78, %67
  %192 = load i32, i32* %2, align 4
  ret i32 %192
}

declare dso_local i32 @ARRAY_SIZE(i32**) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i32, i32) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i32, i32*, i32) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @po1030_dump_registers(%struct.sd*) #1

declare dso_local i32 @po1030_set_exposure(i32*, i32) #1

declare dso_local i32 @po1030_set_gain(i32*, i32) #1

declare dso_local i32 @po1030_set_hflip(i32*, i32) #1

declare dso_local i32 @po1030_set_vflip(i32*, i32) #1

declare dso_local i32 @po1030_set_red_balance(i32*, i32) #1

declare dso_local i32 @po1030_set_blue_balance(i32*, i32) #1

declare dso_local i32 @po1030_set_green_balance(i32*, i32) #1

declare dso_local i32 @po1030_set_auto_white_balance(i32*, i32) #1

declare dso_local i32 @po1030_set_auto_exposure(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
