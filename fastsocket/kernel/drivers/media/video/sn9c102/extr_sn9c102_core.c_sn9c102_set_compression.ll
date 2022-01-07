; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_compression.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_set_compression.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { i32, i32* }
%struct.v4l2_jpegcompression = type { i32 }

@SN9C102_Y_QTABLE1 = common dso_local global i32* null, align 8
@SN9C102_UV_QTABLE1 = common dso_local global i32* null, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sn9c102_device*, %struct.v4l2_jpegcompression*)* @sn9c102_set_compression to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sn9c102_set_compression(%struct.sn9c102_device* %0, %struct.v4l2_jpegcompression* %1) #0 {
  %3 = alloca %struct.sn9c102_device*, align 8
  %4 = alloca %struct.v4l2_jpegcompression*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %3, align 8
  store %struct.v4l2_jpegcompression* %1, %struct.v4l2_jpegcompression** %4, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %8 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  switch i32 %9, label %138 [
    i32 132, label %10
    i32 131, label %10
    i32 130, label %10
    i32 129, label %44
    i32 128, label %44
  ]

10:                                               ; preds = %2, %2, %2
  %11 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %12 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %17 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %18 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 23
  %21 = load i32, i32* %20, align 4
  %22 = or i32 %21, 1
  %23 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %16, i32 %22, i32 23)
  %24 = load i32, i32* %6, align 4
  %25 = add nsw i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %43

26:                                               ; preds = %10
  %27 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %28 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 1
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %33 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %34 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 23
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 254
  %39 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %32, i32 %38, i32 23)
  %40 = load i32, i32* %6, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %31, %26
  br label %43

43:                                               ; preds = %42, %15
  br label %138

44:                                               ; preds = %2, %2
  %45 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %46 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %90

49:                                               ; preds = %44
  store i32 0, i32* %5, align 4
  br label %50

50:                                               ; preds = %76, %49
  %51 = load i32, i32* %5, align 4
  %52 = icmp sle i32 %51, 63
  br i1 %52, label %53, label %79

53:                                               ; preds = %50
  %54 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %55 = load i32*, i32** @SN9C102_Y_QTABLE1, align 8
  %56 = load i32, i32* %5, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %5, align 4
  %61 = add nsw i32 256, %60
  %62 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %54, i32 %59, i32 %61)
  %63 = load i32, i32* %6, align 4
  %64 = add nsw i32 %63, %62
  store i32 %64, i32* %6, align 4
  %65 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %66 = load i32*, i32** @SN9C102_UV_QTABLE1, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = add nsw i32 320, %71
  %73 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %65, i32 %70, i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, %73
  store i32 %75, i32* %6, align 4
  br label %76

76:                                               ; preds = %53
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %5, align 4
  br label %50

79:                                               ; preds = %50
  %80 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %81 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %82 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %81, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 24
  %85 = load i32, i32* %84, align 4
  %86 = and i32 %85, 191
  %87 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %80, i32 %86, i32 24)
  %88 = load i32, i32* %6, align 4
  %89 = add nsw i32 %88, %87
  store i32 %89, i32* %6, align 4
  br label %137

90:                                               ; preds = %44
  %91 = load %struct.v4l2_jpegcompression*, %struct.v4l2_jpegcompression** %4, align 8
  %92 = getelementptr inbounds %struct.v4l2_jpegcompression, %struct.v4l2_jpegcompression* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 1
  br i1 %94, label %95, label %136

95:                                               ; preds = %90
  store i32 0, i32* %5, align 4
  br label %96

96:                                               ; preds = %122, %95
  %97 = load i32, i32* %5, align 4
  %98 = icmp sle i32 %97, 63
  br i1 %98, label %99, label %125

99:                                               ; preds = %96
  %100 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %101 = load i32*, i32** @SN9C102_Y_QTABLE1, align 8
  %102 = load i32, i32* %5, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds i32, i32* %101, i64 %103
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* %5, align 4
  %107 = add nsw i32 256, %106
  %108 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %100, i32 %105, i32 %107)
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, %108
  store i32 %110, i32* %6, align 4
  %111 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %112 = load i32*, i32** @SN9C102_UV_QTABLE1, align 8
  %113 = load i32, i32* %5, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* %5, align 4
  %118 = add nsw i32 320, %117
  %119 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %111, i32 %116, i32 %118)
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, %119
  store i32 %121, i32* %6, align 4
  br label %122

122:                                              ; preds = %99
  %123 = load i32, i32* %5, align 4
  %124 = add nsw i32 %123, 1
  store i32 %124, i32* %5, align 4
  br label %96

125:                                              ; preds = %96
  %126 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %127 = load %struct.sn9c102_device*, %struct.sn9c102_device** %3, align 8
  %128 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 24
  %131 = load i32, i32* %130, align 4
  %132 = or i32 %131, 64
  %133 = call i32 @sn9c102_write_reg(%struct.sn9c102_device* %126, i32 %132, i32 24)
  %134 = load i32, i32* %6, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %6, align 4
  br label %136

136:                                              ; preds = %125, %90
  br label %137

137:                                              ; preds = %136, %79
  br label %138

138:                                              ; preds = %2, %137, %43
  %139 = load i32, i32* %6, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @EIO, align 4
  %143 = sub nsw i32 0, %142
  br label %145

144:                                              ; preds = %138
  br label %145

145:                                              ; preds = %144, %141
  %146 = phi i32 [ %143, %141 ], [ 0, %144 ]
  ret i32 %146
}

declare dso_local i32 @sn9c102_write_reg(%struct.sn9c102_device*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
