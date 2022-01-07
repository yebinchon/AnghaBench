; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_filter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-yuv.c_ivtv_yuv_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv = type { i32 }

@IVTV_YUV_HORIZONTAL_FILTER_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"h_filter -> %d\0A\00", align 1
@IVTV_YUV_VERTICAL_FILTER_OFFSET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"v_filter_1 -> %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [18 x i8] c"v_filter_2 -> %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ivtv*, i32, i32, i32)* @ivtv_yuv_filter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ivtv_yuv_filter(%struct.ivtv* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ivtv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ivtv* %0, %struct.ivtv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %11 = load i32, i32* %6, align 4
  %12 = icmp sgt i32 %11, -1
  br i1 %12, label %13, label %74

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  %15 = icmp sgt i32 %14, 4
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 4, i32* %6, align 4
  br label %17

17:                                               ; preds = %16, %13
  %18 = load i32, i32* @IVTV_YUV_HORIZONTAL_FILTER_OFFSET, align 4
  %19 = load i32, i32* %6, align 4
  %20 = mul nsw i32 %19, 384
  %21 = add nsw i32 %18, %20
  store i32 %21, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %22

22:                                               ; preds = %68, %17
  %23 = load i32, i32* %10, align 4
  %24 = icmp slt i32 %23, 16
  br i1 %24, label %25, label %71

25:                                               ; preds = %22
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @read_dec(i32 %26)
  %28 = call i32 @write_reg(i32 %27, i32 10244)
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @read_dec(i32 %29)
  %31 = call i32 @write_reg(i32 %30, i32 10268)
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, 4
  store i32 %33, i32* %9, align 4
  %34 = load i32, i32* %9, align 4
  %35 = call i32 @read_dec(i32 %34)
  %36 = call i32 @write_reg(i32 %35, i32 10248)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @read_dec(i32 %37)
  %39 = call i32 @write_reg(i32 %38, i32 10272)
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 4
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @read_dec(i32 %42)
  %44 = call i32 @write_reg(i32 %43, i32 10252)
  %45 = load i32, i32* %9, align 4
  %46 = call i32 @read_dec(i32 %45)
  %47 = call i32 @write_reg(i32 %46, i32 10276)
  %48 = load i32, i32* %9, align 4
  %49 = add nsw i32 %48, 4
  store i32 %49, i32* %9, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @read_dec(i32 %50)
  %52 = call i32 @write_reg(i32 %51, i32 10256)
  %53 = load i32, i32* %9, align 4
  %54 = call i32 @read_dec(i32 %53)
  %55 = call i32 @write_reg(i32 %54, i32 10280)
  %56 = load i32, i32* %9, align 4
  %57 = add nsw i32 %56, 4
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = call i32 @read_dec(i32 %58)
  %60 = call i32 @write_reg(i32 %59, i32 10260)
  %61 = load i32, i32* %9, align 4
  %62 = call i32 @read_dec(i32 %61)
  %63 = call i32 @write_reg(i32 %62, i32 10284)
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 8
  store i32 %65, i32* %9, align 4
  %66 = call i32 @write_reg(i32 0, i32 10264)
  %67 = call i32 @write_reg(i32 0, i32 10288)
  br label %68

68:                                               ; preds = %25
  %69 = load i32, i32* %10, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %10, align 4
  br label %22

71:                                               ; preds = %22
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %71, %4
  %75 = load i32, i32* %7, align 4
  %76 = icmp sgt i32 %75, -1
  br i1 %76, label %77, label %107

77:                                               ; preds = %74
  %78 = load i32, i32* %7, align 4
  %79 = icmp sgt i32 %78, 4
  br i1 %79, label %80, label %81

80:                                               ; preds = %77
  store i32 4, i32* %7, align 4
  br label %81

81:                                               ; preds = %80, %77
  %82 = load i32, i32* @IVTV_YUV_VERTICAL_FILTER_OFFSET, align 4
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %83, 192
  %85 = add nsw i32 %82, %84
  store i32 %85, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %86

86:                                               ; preds = %101, %81
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %87, 16
  br i1 %88, label %89, label %104

89:                                               ; preds = %86
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @read_dec(i32 %90)
  %92 = call i32 @write_reg(i32 %91, i32 10496)
  %93 = load i32, i32* %9, align 4
  %94 = add nsw i32 %93, 4
  store i32 %94, i32* %9, align 4
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @read_dec(i32 %95)
  %97 = call i32 @write_reg(i32 %96, i32 10500)
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 8
  store i32 %99, i32* %9, align 4
  %100 = call i32 @write_reg(i32 0, i32 10504)
  br label %101

101:                                              ; preds = %89
  %102 = load i32, i32* %10, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %86

104:                                              ; preds = %86
  %105 = load i32, i32* %7, align 4
  %106 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %104, %74
  %108 = load i32, i32* %8, align 4
  %109 = icmp sgt i32 %108, -1
  br i1 %109, label %110, label %140

110:                                              ; preds = %107
  %111 = load i32, i32* %8, align 4
  %112 = icmp sgt i32 %111, 4
  br i1 %112, label %113, label %114

113:                                              ; preds = %110
  store i32 4, i32* %8, align 4
  br label %114

114:                                              ; preds = %113, %110
  %115 = load i32, i32* @IVTV_YUV_VERTICAL_FILTER_OFFSET, align 4
  %116 = load i32, i32* %8, align 4
  %117 = mul nsw i32 %116, 192
  %118 = add nsw i32 %115, %117
  store i32 %118, i32* %9, align 4
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %134, %114
  %120 = load i32, i32* %10, align 4
  %121 = icmp slt i32 %120, 16
  br i1 %121, label %122, label %137

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = call i32 @read_dec(i32 %123)
  %125 = call i32 @write_reg(i32 %124, i32 10508)
  %126 = load i32, i32* %9, align 4
  %127 = add nsw i32 %126, 4
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = call i32 @read_dec(i32 %128)
  %130 = call i32 @write_reg(i32 %129, i32 10512)
  %131 = load i32, i32* %9, align 4
  %132 = add nsw i32 %131, 8
  store i32 %132, i32* %9, align 4
  %133 = call i32 @write_reg(i32 0, i32 10516)
  br label %134

134:                                              ; preds = %122
  %135 = load i32, i32* %10, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %10, align 4
  br label %119

137:                                              ; preds = %119
  %138 = load i32, i32* %8, align 4
  %139 = call i32 @IVTV_DEBUG_YUV(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i32 %138)
  br label %140

140:                                              ; preds = %137, %107
  ret void
}

declare dso_local i32 @write_reg(i32, i32) #1

declare dso_local i32 @read_dec(i32) #1

declare dso_local i32 @IVTV_DEBUG_YUV(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
