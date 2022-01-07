; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/m5602/extr_m5602_mt9m111.c_mt9m111_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, i32* }

@init_mt9m111 = common dso_local global i64** null, align 8
@BRIDGE = common dso_local global i64 0, align 8
@dump_sensor = common dso_local global i64 0, align 8
@VFLIP_IDX = common dso_local global i64 0, align 8
@HFLIP_IDX = common dso_local global i64 0, align 8
@GREEN_BALANCE_IDX = common dso_local global i64 0, align 8
@BLUE_BALANCE_IDX = common dso_local global i64 0, align 8
@RED_BALANCE_IDX = common dso_local global i64 0, align 8
@GAIN_IDX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mt9m111_init(%struct.sd* %0) #0 {
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

11:                                               ; preds = %77, %1
  %12 = load i32, i32* %4, align 4
  %13 = load i64**, i64*** @init_mt9m111, align 8
  %14 = call i32 @ARRAY_SIZE(i64** %13)
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %11
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %16, %11
  %21 = phi i1 [ false, %11 ], [ %19, %16 ]
  br i1 %21, label %22, label %80

22:                                               ; preds = %20
  %23 = load i64**, i64*** @init_mt9m111, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i64*, i64** %23, i64 %25
  %27 = load i64*, i64** %26, align 8
  %28 = getelementptr inbounds i64, i64* %27, i64 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @BRIDGE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %49

32:                                               ; preds = %22
  %33 = load %struct.sd*, %struct.sd** %3, align 8
  %34 = load i64**, i64*** @init_mt9m111, align 8
  %35 = load i32, i32* %4, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i64*, i64** %34, i64 %36
  %38 = load i64*, i64** %37, align 8
  %39 = getelementptr inbounds i64, i64* %38, i64 1
  %40 = load i64, i64* %39, align 8
  %41 = load i64**, i64*** @init_mt9m111, align 8
  %42 = load i32, i32* %4, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i64*, i64** %41, i64 %43
  %45 = load i64*, i64** %44, align 8
  %46 = getelementptr inbounds i64, i64* %45, i64 2
  %47 = load i64, i64* %46, align 8
  %48 = call i32 @m5602_write_bridge(%struct.sd* %33, i64 %40, i64 %47)
  store i32 %48, i32* %5, align 4
  br label %76

49:                                               ; preds = %22
  %50 = load i64**, i64*** @init_mt9m111, align 8
  %51 = load i32, i32* %4, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i64*, i64** %50, i64 %52
  %54 = load i64*, i64** %53, align 8
  %55 = getelementptr inbounds i64, i64* %54, i64 2
  %56 = load i64, i64* %55, align 8
  %57 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  store i64 %56, i64* %57, align 16
  %58 = load i64**, i64*** @init_mt9m111, align 8
  %59 = load i32, i32* %4, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i64*, i64** %58, i64 %60
  %62 = load i64*, i64** %61, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 3
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 1
  store i64 %64, i64* %65, align 8
  %66 = load %struct.sd*, %struct.sd** %3, align 8
  %67 = load i64**, i64*** @init_mt9m111, align 8
  %68 = load i32, i32* %4, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i64*, i64** %67, i64 %69
  %71 = load i64*, i64** %70, align 8
  %72 = getelementptr inbounds i64, i64* %71, i64 1
  %73 = load i64, i64* %72, align 8
  %74 = getelementptr inbounds [2 x i64], [2 x i64]* %7, i64 0, i64 0
  %75 = call i32 @m5602_write_sensor(%struct.sd* %66, i64 %73, i64* %74, i32 2)
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %49, %32
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %4, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %11

80:                                               ; preds = %20
  %81 = load i64, i64* @dump_sensor, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load %struct.sd*, %struct.sd** %3, align 8
  %85 = call i32 @mt9m111_dump_registers(%struct.sd* %84)
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.sd*, %struct.sd** %3, align 8
  %88 = getelementptr inbounds %struct.sd, %struct.sd* %87, i32 0, i32 0
  %89 = load i32*, i32** %6, align 8
  %90 = load i64, i64* @VFLIP_IDX, align 8
  %91 = getelementptr inbounds i32, i32* %89, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @mt9m111_set_vflip(i32* %88, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load i32, i32* %5, align 4
  %95 = icmp slt i32 %94, 0
  br i1 %95, label %96, label %98

96:                                               ; preds = %86
  %97 = load i32, i32* %5, align 4
  store i32 %97, i32* %2, align 4
  br label %154

98:                                               ; preds = %86
  %99 = load %struct.sd*, %struct.sd** %3, align 8
  %100 = getelementptr inbounds %struct.sd, %struct.sd* %99, i32 0, i32 0
  %101 = load i32*, i32** %6, align 8
  %102 = load i64, i64* @HFLIP_IDX, align 8
  %103 = getelementptr inbounds i32, i32* %101, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @mt9m111_set_hflip(i32* %100, i32 %104)
  store i32 %105, i32* %5, align 4
  %106 = load i32, i32* %5, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %5, align 4
  store i32 %109, i32* %2, align 4
  br label %154

110:                                              ; preds = %98
  %111 = load %struct.sd*, %struct.sd** %3, align 8
  %112 = getelementptr inbounds %struct.sd, %struct.sd* %111, i32 0, i32 0
  %113 = load i32*, i32** %6, align 8
  %114 = load i64, i64* @GREEN_BALANCE_IDX, align 8
  %115 = getelementptr inbounds i32, i32* %113, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @mt9m111_set_green_balance(i32* %112, i32 %116)
  store i32 %117, i32* %5, align 4
  %118 = load i32, i32* %5, align 4
  %119 = icmp slt i32 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %110
  %121 = load i32, i32* %5, align 4
  store i32 %121, i32* %2, align 4
  br label %154

122:                                              ; preds = %110
  %123 = load %struct.sd*, %struct.sd** %3, align 8
  %124 = getelementptr inbounds %struct.sd, %struct.sd* %123, i32 0, i32 0
  %125 = load i32*, i32** %6, align 8
  %126 = load i64, i64* @BLUE_BALANCE_IDX, align 8
  %127 = getelementptr inbounds i32, i32* %125, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mt9m111_set_blue_balance(i32* %124, i32 %128)
  store i32 %129, i32* %5, align 4
  %130 = load i32, i32* %5, align 4
  %131 = icmp slt i32 %130, 0
  br i1 %131, label %132, label %134

132:                                              ; preds = %122
  %133 = load i32, i32* %5, align 4
  store i32 %133, i32* %2, align 4
  br label %154

134:                                              ; preds = %122
  %135 = load %struct.sd*, %struct.sd** %3, align 8
  %136 = getelementptr inbounds %struct.sd, %struct.sd* %135, i32 0, i32 0
  %137 = load i32*, i32** %6, align 8
  %138 = load i64, i64* @RED_BALANCE_IDX, align 8
  %139 = getelementptr inbounds i32, i32* %137, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @mt9m111_set_red_balance(i32* %136, i32 %140)
  store i32 %141, i32* %5, align 4
  %142 = load i32, i32* %5, align 4
  %143 = icmp slt i32 %142, 0
  br i1 %143, label %144, label %146

144:                                              ; preds = %134
  %145 = load i32, i32* %5, align 4
  store i32 %145, i32* %2, align 4
  br label %154

146:                                              ; preds = %134
  %147 = load %struct.sd*, %struct.sd** %3, align 8
  %148 = getelementptr inbounds %struct.sd, %struct.sd* %147, i32 0, i32 0
  %149 = load i32*, i32** %6, align 8
  %150 = load i64, i64* @GAIN_IDX, align 8
  %151 = getelementptr inbounds i32, i32* %149, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @mt9m111_set_gain(i32* %148, i32 %152)
  store i32 %153, i32* %2, align 4
  br label %154

154:                                              ; preds = %146, %144, %132, %120, %108, %96
  %155 = load i32, i32* %2, align 4
  ret i32 %155
}

declare dso_local i32 @ARRAY_SIZE(i64**) #1

declare dso_local i32 @m5602_write_bridge(%struct.sd*, i64, i64) #1

declare dso_local i32 @m5602_write_sensor(%struct.sd*, i64, i64*, i32) #1

declare dso_local i32 @mt9m111_dump_registers(%struct.sd*) #1

declare dso_local i32 @mt9m111_set_vflip(i32*, i32) #1

declare dso_local i32 @mt9m111_set_hflip(i32*, i32) #1

declare dso_local i32 @mt9m111_set_green_balance(i32*, i32) #1

declare dso_local i32 @mt9m111_set_blue_balance(i32*, i32) #1

declare dso_local i32 @mt9m111_set_red_balance(i32*, i32) #1

declare dso_local i32 @mt9m111_set_gain(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
