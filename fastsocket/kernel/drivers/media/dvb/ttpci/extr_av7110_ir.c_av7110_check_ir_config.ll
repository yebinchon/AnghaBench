; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ir.c_av7110_check_ir_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_ir.c_av7110_check_ir_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i64 }

@ENODEV = common dso_local global i32 0, align 4
@av_cnt = common dso_local global i32 0, align 4
@av_list = common dso_local global %struct.av7110** null, align 8
@ir_protocol = common dso_local global i32* null, align 8
@ir_inversion = common dso_local global i32* null, align 8
@IR_RCMM = common dso_local global i32 0, align 4
@IR_RC5_EXT = common dso_local global i32 0, align 4
@IR_RC5 = common dso_local global i32 0, align 4
@COMTYPE_PIDFILTER = common dso_local global i32 0, align 4
@SetIR = common dso_local global i32 0, align 4
@ir_device_mask = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_check_ir_config(%struct.av7110* %0, i32 %1) #0 {
  %3 = alloca %struct.av7110*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @ENODEV, align 4
  %10 = sub nsw i32 0, %9
  store i32 %10, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %11

11:                                               ; preds = %25, %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @av_cnt, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %28

15:                                               ; preds = %11
  %16 = load %struct.av7110*, %struct.av7110** %3, align 8
  %17 = load %struct.av7110**, %struct.av7110*** @av_list, align 8
  %18 = load i32, i32* %5, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.av7110*, %struct.av7110** %17, i64 %19
  %21 = load %struct.av7110*, %struct.av7110** %20, align 8
  %22 = icmp eq %struct.av7110* %16, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  br label %25

25:                                               ; preds = %24
  %26 = load i32, i32* %5, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %5, align 4
  br label %11

28:                                               ; preds = %23, %11
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @av_cnt, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %160

32:                                               ; preds = %28
  %33 = load %struct.av7110*, %struct.av7110** %3, align 8
  %34 = icmp ne %struct.av7110* %33, null
  br i1 %34, label %35, label %160

35:                                               ; preds = %32
  %36 = load %struct.av7110*, %struct.av7110** %3, align 8
  %37 = getelementptr inbounds %struct.av7110, %struct.av7110* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = and i32 %39, 1
  %41 = load i32*, i32** @ir_protocol, align 8
  %42 = load i32, i32* %5, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %40, %45
  br i1 %46, label %58, label %47

47:                                               ; preds = %35
  %48 = load %struct.av7110*, %struct.av7110** %3, align 8
  %49 = getelementptr inbounds %struct.av7110, %struct.av7110* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32*, i32** @ir_inversion, align 8
  %53 = load i32, i32* %5, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = icmp ne i32 %51, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %47, %35
  store i32 1, i32* %6, align 4
  br label %59

59:                                               ; preds = %58, %47
  %60 = load i32, i32* %6, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %138

62:                                               ; preds = %59
  %63 = load i32*, i32** @ir_protocol, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %81

69:                                               ; preds = %62
  %70 = load i32*, i32** @ir_protocol, align 8
  %71 = load i32, i32* %5, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %70, i64 %72
  store i32 1, i32* %73, align 4
  %74 = load i32, i32* @IR_RCMM, align 4
  %75 = load %struct.av7110*, %struct.av7110** %3, align 8
  %76 = getelementptr inbounds %struct.av7110, %struct.av7110* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i32 0, i32 0
  store i32 %74, i32* %77, align 8
  %78 = load %struct.av7110*, %struct.av7110** %3, align 8
  %79 = getelementptr inbounds %struct.av7110, %struct.av7110* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 2
  store i32 1, i32* %80, align 8
  br label %104

81:                                               ; preds = %62
  %82 = load %struct.av7110*, %struct.av7110** %3, align 8
  %83 = getelementptr inbounds %struct.av7110, %struct.av7110* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @FW_VERSION(i32 %84)
  %86 = icmp sge i32 %85, 9760
  br i1 %86, label %87, label %95

87:                                               ; preds = %81
  %88 = load i32, i32* @IR_RC5_EXT, align 4
  %89 = load %struct.av7110*, %struct.av7110** %3, align 8
  %90 = getelementptr inbounds %struct.av7110, %struct.av7110* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  store i32 %88, i32* %91, align 8
  %92 = load %struct.av7110*, %struct.av7110** %3, align 8
  %93 = getelementptr inbounds %struct.av7110, %struct.av7110* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 2
  store i32 2, i32* %94, align 8
  br label %103

95:                                               ; preds = %81
  %96 = load i32, i32* @IR_RC5, align 4
  %97 = load %struct.av7110*, %struct.av7110** %3, align 8
  %98 = getelementptr inbounds %struct.av7110, %struct.av7110* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %98, i32 0, i32 0
  store i32 %96, i32* %99, align 8
  %100 = load %struct.av7110*, %struct.av7110** %3, align 8
  %101 = getelementptr inbounds %struct.av7110, %struct.av7110* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 2
  store i32 0, i32* %102, align 8
  br label %103

103:                                              ; preds = %95, %87
  br label %104

104:                                              ; preds = %103, %69
  %105 = load i32*, i32** @ir_inversion, align 8
  %106 = load i32, i32* %5, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds i32, i32* %105, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %121

111:                                              ; preds = %104
  %112 = load i32*, i32** @ir_inversion, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32 1, i32* %115, align 4
  %116 = load %struct.av7110*, %struct.av7110** %3, align 8
  %117 = getelementptr inbounds %struct.av7110, %struct.av7110* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = or i32 %119, 32768
  store i32 %120, i32* %118, align 8
  br label %121

121:                                              ; preds = %111, %104
  %122 = load i32*, i32** @ir_inversion, align 8
  %123 = load i32, i32* %5, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds i32, i32* %122, i64 %124
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.av7110*, %struct.av7110** %3, align 8
  %128 = getelementptr inbounds %struct.av7110, %struct.av7110* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.av7110*, %struct.av7110** %3, align 8
  %131 = load i32, i32* @COMTYPE_PIDFILTER, align 4
  %132 = load i32, i32* @SetIR, align 4
  %133 = load %struct.av7110*, %struct.av7110** %3, align 8
  %134 = getelementptr inbounds %struct.av7110, %struct.av7110* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @av7110_fw_cmd(%struct.av7110* %130, i32 %131, i32 %132, i32 1, i32 %136)
  store i32 %137, i32* %7, align 4
  br label %139

138:                                              ; preds = %59
  store i32 0, i32* %7, align 4
  br label %139

139:                                              ; preds = %138, %121
  %140 = load %struct.av7110*, %struct.av7110** %3, align 8
  %141 = getelementptr inbounds %struct.av7110, %struct.av7110* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load i64*, i64** @ir_device_mask, align 8
  %145 = load i32, i32* %5, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds i64, i64* %144, i64 %146
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %143, %148
  br i1 %149, label %150, label %159

150:                                              ; preds = %139
  %151 = load i64*, i64** @ir_device_mask, align 8
  %152 = load i32, i32* %5, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i64, i64* %151, i64 %153
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.av7110*, %struct.av7110** %3, align 8
  %157 = getelementptr inbounds %struct.av7110, %struct.av7110* %156, i32 0, i32 0
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 3
  store i64 %155, i64* %158, align 8
  br label %159

159:                                              ; preds = %150, %139
  br label %160

160:                                              ; preds = %159, %32, %28
  %161 = load i32, i32* %7, align 4
  ret i32 %161
}

declare dso_local i32 @FW_VERSION(i32) #1

declare dso_local i32 @av7110_fw_cmd(%struct.av7110*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
