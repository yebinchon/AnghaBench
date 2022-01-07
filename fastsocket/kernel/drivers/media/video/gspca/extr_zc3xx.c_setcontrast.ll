; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_setcontrast.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_zc3xx.c_setcontrast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }
%struct.sd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@setcontrast.delta_b = internal constant [16 x i32] [i32 80, i32 56, i32 45, i32 40, i32 36, i32 33, i32 30, i32 29, i32 29, i32 27, i32 27, i32 27, i32 25, i32 24, i32 24, i32 24], align 16
@setcontrast.delta_c = internal constant [16 x i32] [i32 44, i32 26, i32 18, i32 12, i32 10, i32 6, i32 6, i32 6, i32 4, i32 6, i32 4, i32 4, i32 3, i32 3, i32 2, i32 2], align 16
@setcontrast.gamma_tb = internal constant [6 x [16 x i32]] [[16 x i32] [i32 0, i32 0, i32 3, i32 13, i32 27, i32 46, i32 69, i32 95, i32 121, i32 147, i32 171, i32 193, i32 212, i32 229, i32 243, i32 255], [16 x i32] [i32 1, i32 12, i32 31, i32 58, i32 83, i32 109, i32 133, i32 156, i32 176, i32 194, i32 209, i32 222, i32 233, i32 242, i32 249, i32 255], [16 x i32] [i32 4, i32 22, i32 48, i32 78, i32 104, i32 129, i32 152, i32 172, i32 190, i32 205, i32 218, i32 228, i32 237, i32 245, i32 251, i32 255], [16 x i32] [i32 19, i32 56, i32 89, i32 121, i32 146, i32 167, i32 185, i32 200, i32 212, i32 223, i32 231, i32 238, i32 244, i32 249, i32 252, i32 255], [16 x i32] [i32 32, i32 75, i32 110, i32 141, i32 163, i32 181, i32 197, i32 210, i32 220, i32 229, i32 236, i32 242, i32 246, i32 250, i32 253, i32 255], [16 x i32] [i32 36, i32 68, i32 100, i32 132, i32 157, i32 178, i32 196, i32 211, i32 224, i32 235, i32 244, i32 255, i32 255, i32 255, i32 255, i32 255]], align 16
@GAMMA = common dso_local global i64 0, align 8
@CONTRAST = common dso_local global i64 0, align 8
@BRIGHTNESS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*)* @setcontrast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setcontrast(%struct.gspca_dev* %0) #0 {
  %2 = alloca %struct.gspca_dev*, align 8
  %3 = alloca %struct.sd*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca [16 x i32], align 16
  store %struct.gspca_dev* %0, %struct.gspca_dev** %2, align 8
  %13 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %14 = bitcast %struct.gspca_dev* %13 to %struct.sd*
  store %struct.sd* %14, %struct.sd** %3, align 8
  %15 = load %struct.sd*, %struct.sd** %3, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load i64, i64* @GAMMA, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [6 x [16 x i32]], [6 x [16 x i32]]* @setcontrast.gamma_tb, i64 0, i64 %23
  %25 = getelementptr inbounds [16 x i32], [16 x i32]* %24, i64 0, i64 0
  store i32* %25, i32** %4, align 8
  %26 = load %struct.sd*, %struct.sd** %3, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = load i64, i64* @CONTRAST, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 128
  store i32 %33, i32* %8, align 4
  %34 = load %struct.sd*, %struct.sd** %3, align 8
  %35 = getelementptr inbounds %struct.sd, %struct.sd* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = load i64, i64* @BRIGHTNESS, align 8
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sub nsw i32 %40, 128
  store i32 %41, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %10, align 4
  store i32 0, i32* %6, align 4
  br label %42

42:                                               ; preds = %126, %1
  %43 = load i32, i32* %6, align 4
  %44 = icmp slt i32 %43, 16
  br i1 %44, label %45, label %129

45:                                               ; preds = %42
  %46 = load i32*, i32** %4, align 8
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %6, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* @setcontrast.delta_b, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %54, %55
  %57 = sdiv i32 %56, 256
  %58 = add nsw i32 %50, %57
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* @setcontrast.delta_c, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %62, %63
  %65 = sdiv i32 %64, 256
  %66 = sub nsw i32 %58, %65
  %67 = load i32, i32* %9, align 4
  %68 = sdiv i32 %67, 2
  %69 = sub nsw i32 %66, %68
  store i32 %69, i32* %5, align 4
  %70 = load i32, i32* %5, align 4
  %71 = icmp sgt i32 %70, 255
  br i1 %71, label %72, label %73

72:                                               ; preds = %45
  store i32 255, i32* %5, align 4
  br label %78

73:                                               ; preds = %45
  %74 = load i32, i32* %5, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %73
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %76, %73
  br label %78

78:                                               ; preds = %77, %72
  %79 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %80 = load i32, i32* %5, align 4
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 288, %81
  %83 = call i32 @reg_w(%struct.gspca_dev* %79, i32 %80, i32 %82)
  %84 = load i32, i32* %8, align 4
  %85 = icmp sgt i32 %84, 0
  br i1 %85, label %86, label %89

86:                                               ; preds = %78
  %87 = load i32, i32* %9, align 4
  %88 = add nsw i32 %87, -1
  store i32 %88, i32* %9, align 4
  br label %96

89:                                               ; preds = %78
  %90 = load i32, i32* %8, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %9, align 4
  br label %95

95:                                               ; preds = %92, %89
  br label %96

96:                                               ; preds = %95, %86
  %97 = load i32, i32* %6, align 4
  %98 = icmp sgt i32 %97, 1
  br i1 %98, label %99, label %108

99:                                               ; preds = %96
  %100 = load i32, i32* %5, align 4
  %101 = load i32, i32* %11, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sdiv i32 %102, 2
  %104 = load i32, i32* %6, align 4
  %105 = sub nsw i32 %104, 1
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %106
  store i32 %103, i32* %107, align 4
  br label %123

108:                                              ; preds = %96
  %109 = load i32, i32* %6, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %122

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111
  br label %119

115:                                              ; preds = %111
  %116 = load i32, i32* %5, align 4
  %117 = load i32, i32* %10, align 4
  %118 = sub nsw i32 %116, %117
  br label %119

119:                                              ; preds = %115, %114
  %120 = phi i32 [ 0, %114 ], [ %118, %115 ]
  %121 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 0
  store i32 %120, i32* %121, align 16
  br label %122

122:                                              ; preds = %119, %108
  br label %123

123:                                              ; preds = %122, %99
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %5, align 4
  store i32 %125, i32* %10, align 4
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %6, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %6, align 4
  br label %42

129:                                              ; preds = %42
  %130 = load i32, i32* %11, align 4
  %131 = sub nsw i32 255, %130
  %132 = sdiv i32 %131, 2
  %133 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 15
  store i32 %132, i32* %133, align 4
  store i32 0, i32* %6, align 4
  br label %134

134:                                              ; preds = %146, %129
  %135 = load i32, i32* %6, align 4
  %136 = icmp slt i32 %135, 16
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = load %struct.gspca_dev*, %struct.gspca_dev** %2, align 8
  %139 = load i32, i32* %6, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [16 x i32], [16 x i32]* %12, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 304, %143
  %145 = call i32 @reg_w(%struct.gspca_dev* %138, i32 %142, i32 %144)
  br label %146

146:                                              ; preds = %137
  %147 = load i32, i32* %6, align 4
  %148 = add nsw i32 %147, 1
  store i32 %148, i32* %6, align 4
  br label %134

149:                                              ; preds = %134
  ret void
}

declare dso_local i32 @reg_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
