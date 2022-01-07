; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_set_volume.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110_av.c_av7110_set_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"av7110:%p, \0A\00", align 1
@MSP_WR_DSP = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @av7110_set_volume(%struct.av7110* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.av7110*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.av7110* %0, %struct.av7110** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load %struct.av7110*, %struct.av7110** %5, align 8
  %13 = call i32 @dprintk(i32 2, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.av7110* %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.av7110*, %struct.av7110** %5, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  store i32 %14, i32* %17, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.av7110*, %struct.av7110** %5, align 8
  %20 = getelementptr inbounds %struct.av7110, %struct.av7110* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  store i32 %18, i32* %21, align 4
  %22 = load %struct.av7110*, %struct.av7110** %5, align 8
  %23 = getelementptr inbounds %struct.av7110, %struct.av7110* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  switch i32 %24, label %134 [
    i32 128, label %25
    i32 131, label %51
    i32 130, label %64
    i32 129, label %101
  ]

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %26, 256
  %28 = sdiv i32 %27, 1036
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = mul nsw i32 %29, 256
  %31 = sdiv i32 %30, 1036
  store i32 %31, i32* %7, align 4
  %32 = load i32, i32* %6, align 4
  %33 = icmp sgt i32 %32, 63
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  store i32 63, i32* %6, align 4
  br label %35

35:                                               ; preds = %34, %25
  %36 = load i32, i32* %7, align 4
  %37 = icmp sgt i32 %36, 63
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 63, i32* %7, align 4
  br label %39

39:                                               ; preds = %38, %35
  %40 = load %struct.av7110*, %struct.av7110** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = add nsw i32 128, %41
  %43 = call i32 @SendDAC(%struct.av7110* %40, i32 3, i32 %42)
  store i32 %43, i32* %8, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %8, align 4
  store i32 %46, i32* %4, align 4
  br label %135

47:                                               ; preds = %39
  %48 = load %struct.av7110*, %struct.av7110** %5, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @SendDAC(%struct.av7110* %48, i32 4, i32 %49)
  store i32 %50, i32* %4, align 4
  br label %135

51:                                               ; preds = %3
  %52 = load i32, i32* %6, align 4
  %53 = sdiv i32 %52, 2
  %54 = sub nsw i32 127, %53
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = sdiv i32 %55, 2
  %57 = sub nsw i32 127, %56
  store i32 %57, i32* %7, align 4
  %58 = load %struct.av7110*, %struct.av7110** %5, align 8
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @i2c_writereg(%struct.av7110* %58, i32 32, i32 3, i32 %59)
  %61 = load %struct.av7110*, %struct.av7110** %5, align 8
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @i2c_writereg(%struct.av7110* %61, i32 32, i32 4, i32 %62)
  store i32 0, i32* %4, align 4
  br label %135

64:                                               ; preds = %3
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* %6, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* %7, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = mul nsw i32 %74, 115
  %76 = sdiv i32 %75, 255
  %77 = shl i32 %76, 8
  store i32 %77, i32* %10, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %87

80:                                               ; preds = %72
  %81 = load i32, i32* %7, align 4
  %82 = load i32, i32* %6, align 4
  %83 = sub nsw i32 %81, %82
  %84 = mul nsw i32 %83, 127
  %85 = load i32, i32* %9, align 4
  %86 = sdiv i32 %84, %85
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %80, %72
  %88 = load %struct.av7110*, %struct.av7110** %5, align 8
  %89 = load i32, i32* @MSP_WR_DSP, align 4
  %90 = load i32, i32* %11, align 4
  %91 = shl i32 %90, 8
  %92 = call i32 @msp_writereg(%struct.av7110* %88, i32 %89, i32 1, i32 %91)
  %93 = load %struct.av7110*, %struct.av7110** %5, align 8
  %94 = load i32, i32* @MSP_WR_DSP, align 4
  %95 = load i32, i32* %10, align 4
  %96 = call i32 @msp_writereg(%struct.av7110* %93, i32 %94, i32 0, i32 %95)
  %97 = load %struct.av7110*, %struct.av7110** %5, align 8
  %98 = load i32, i32* @MSP_WR_DSP, align 4
  %99 = load i32, i32* %10, align 4
  %100 = call i32 @msp_writereg(%struct.av7110* %97, i32 %98, i32 6, i32 %99)
  store i32 0, i32* %4, align 4
  br label %135

101:                                              ; preds = %3
  %102 = load i32, i32* %6, align 4
  %103 = load i32, i32* %7, align 4
  %104 = icmp sgt i32 %102, %103
  br i1 %104, label %105, label %107

105:                                              ; preds = %101
  %106 = load i32, i32* %6, align 4
  br label %109

107:                                              ; preds = %101
  %108 = load i32, i32* %7, align 4
  br label %109

109:                                              ; preds = %107, %105
  %110 = phi i32 [ %106, %105 ], [ %108, %107 ]
  store i32 %110, i32* %9, align 4
  %111 = load i32, i32* %9, align 4
  %112 = mul nsw i32 %111, 115
  %113 = sdiv i32 %112, 255
  %114 = shl i32 %113, 8
  store i32 %114, i32* %10, align 4
  %115 = load i32, i32* %9, align 4
  %116 = icmp sgt i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %109
  %118 = load i32, i32* %7, align 4
  %119 = load i32, i32* %6, align 4
  %120 = sub nsw i32 %118, %119
  %121 = mul nsw i32 %120, 127
  %122 = load i32, i32* %9, align 4
  %123 = sdiv i32 %121, %122
  store i32 %123, i32* %11, align 4
  br label %124

124:                                              ; preds = %117, %109
  %125 = load %struct.av7110*, %struct.av7110** %5, align 8
  %126 = load i32, i32* @MSP_WR_DSP, align 4
  %127 = load i32, i32* %11, align 4
  %128 = shl i32 %127, 8
  %129 = call i32 @msp_writereg(%struct.av7110* %125, i32 %126, i32 1, i32 %128)
  %130 = load %struct.av7110*, %struct.av7110** %5, align 8
  %131 = load i32, i32* @MSP_WR_DSP, align 4
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @msp_writereg(%struct.av7110* %130, i32 %131, i32 0, i32 %132)
  store i32 0, i32* %4, align 4
  br label %135

134:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %134, %124, %87, %51, %47, %45
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @SendDAC(%struct.av7110*, i32, i32) #1

declare dso_local i32 @i2c_writereg(%struct.av7110*, i32, i32, i32) #1

declare dso_local i32 @msp_writereg(%struct.av7110*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
