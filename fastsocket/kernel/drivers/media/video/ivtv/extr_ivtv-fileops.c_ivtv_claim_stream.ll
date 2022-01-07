; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_claim_stream.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ivtv/extr_ivtv-fileops.c_ivtv_claim_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ivtv_open_id = type { i32, %struct.ivtv* }
%struct.ivtv = type { %struct.ivtv_stream*, %struct.TYPE_2__ }
%struct.ivtv_stream = type { i32, i32 }
%struct.TYPE_2__ = type { i64 }

@IVTV_F_S_CLAIMED = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_VBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"Start Read VBI\0A\00", align 1
@.str.1 = private unnamed_addr constant [19 x i8] c"Stream %d is busy\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@IVTV_IRQ_DEC_VBI_RE_INSERT = common dso_local global i32 0, align 4
@IVTV_DEC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_ENC_STREAM_TYPE_MPG = common dso_local global i32 0, align 4
@IVTV_F_S_INTERNAL_USE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ivtv_open_id*, i32)* @ivtv_claim_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ivtv_claim_stream(%struct.ivtv_open_id* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ivtv_open_id*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ivtv*, align 8
  %7 = alloca %struct.ivtv_stream*, align 8
  %8 = alloca %struct.ivtv_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.ivtv_open_id* %0, %struct.ivtv_open_id** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %11 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %10, i32 0, i32 1
  %12 = load %struct.ivtv*, %struct.ivtv** %11, align 8
  store %struct.ivtv* %12, %struct.ivtv** %6, align 8
  %13 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %14 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %13, i32 0, i32 0
  %15 = load %struct.ivtv_stream*, %struct.ivtv_stream** %14, align 8
  %16 = load i32, i32* %5, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %15, i64 %17
  store %struct.ivtv_stream* %18, %struct.ivtv_stream** %7, align 8
  %19 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %20 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %21 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %20, i32 0, i32 1
  %22 = call i64 @test_and_set_bit(i32 %19, i32* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %58

24:                                               ; preds = %2
  %25 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %26 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %29 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %27, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  store i32 0, i32* %3, align 4
  br label %121

33:                                               ; preds = %24
  %34 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %35 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %53

38:                                               ; preds = %33
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %46, label %42

42:                                               ; preds = %38
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* @IVTV_ENC_STREAM_TYPE_VBI, align 4
  %45 = icmp eq i32 %43, %44
  br i1 %45, label %46, label %53

46:                                               ; preds = %42, %38
  %47 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %48 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %51 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 4
  %52 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %121

53:                                               ; preds = %42, %33
  %54 = load i32, i32* %5, align 4
  %55 = call i32 (i8*, ...) @IVTV_DEBUG_INFO(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = load i32, i32* @EBUSY, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %121

58:                                               ; preds = %2
  %59 = load %struct.ivtv_open_id*, %struct.ivtv_open_id** %4, align 8
  %60 = getelementptr inbounds %struct.ivtv_open_id, %struct.ivtv_open_id* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ivtv_stream*, %struct.ivtv_stream** %7, align 8
  %63 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %58
  %68 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %69 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %70 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %68, i32 %69)
  br label %71

71:                                               ; preds = %67, %58
  %72 = load i32, i32* %5, align 4
  %73 = load i32, i32* @IVTV_DEC_STREAM_TYPE_MPG, align 4
  %74 = icmp eq i32 %72, %73
  br i1 %74, label %75, label %77

75:                                               ; preds = %71
  %76 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  store i32 %76, i32* %9, align 4
  br label %95

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @IVTV_ENC_STREAM_TYPE_MPG, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %93

81:                                               ; preds = %77
  %82 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %83 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %89 = call i32 @ivtv_raw_vbi(%struct.ivtv* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i32, i32* @IVTV_ENC_STREAM_TYPE_VBI, align 4
  store i32 %92, i32* %9, align 4
  br label %94

93:                                               ; preds = %87, %81, %77
  store i32 0, i32* %3, align 4
  br label %121

94:                                               ; preds = %91
  br label %95

95:                                               ; preds = %94, %75
  %96 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %97 = getelementptr inbounds %struct.ivtv, %struct.ivtv* %96, i32 0, i32 0
  %98 = load %struct.ivtv_stream*, %struct.ivtv_stream** %97, align 8
  %99 = load i32, i32* %9, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %98, i64 %100
  store %struct.ivtv_stream* %101, %struct.ivtv_stream** %8, align 8
  %102 = load i32, i32* @IVTV_F_S_CLAIMED, align 4
  %103 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %104 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %103, i32 0, i32 1
  %105 = call i64 @test_and_set_bit(i32 %102, i32* %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %95
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @IVTV_DEC_STREAM_TYPE_VBI, align 4
  %110 = icmp eq i32 %108, %109
  br i1 %110, label %111, label %115

111:                                              ; preds = %107
  %112 = load %struct.ivtv*, %struct.ivtv** %6, align 8
  %113 = load i32, i32* @IVTV_IRQ_DEC_VBI_RE_INSERT, align 4
  %114 = call i32 @ivtv_clear_irq_mask(%struct.ivtv* %112, i32 %113)
  br label %115

115:                                              ; preds = %111, %107
  br label %116

116:                                              ; preds = %115, %95
  %117 = load i32, i32* @IVTV_F_S_INTERNAL_USE, align 4
  %118 = load %struct.ivtv_stream*, %struct.ivtv_stream** %8, align 8
  %119 = getelementptr inbounds %struct.ivtv_stream, %struct.ivtv_stream* %118, i32 0, i32 1
  %120 = call i32 @set_bit(i32 %117, i32* %119)
  store i32 0, i32* %3, align 4
  br label %121

121:                                              ; preds = %116, %93, %53, %46, %32
  %122 = load i32, i32* %3, align 4
  ret i32 %122
}

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @IVTV_DEBUG_INFO(i8*, ...) #1

declare dso_local i32 @ivtv_clear_irq_mask(%struct.ivtv*, i32) #1

declare dso_local i32 @ivtv_raw_vbi(%struct.ivtv*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
