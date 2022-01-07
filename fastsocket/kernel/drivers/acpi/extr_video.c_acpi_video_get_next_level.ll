; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_get_next_level.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/acpi/extr_video.c_acpi_video_get_next_level.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_video_device = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.acpi_video_device*, i32, i32)* @acpi_video_get_next_level to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acpi_video_get_next_level(%struct.acpi_video_device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.acpi_video_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.acpi_video_device* %0, %struct.acpi_video_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 255, i32* %14, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %9, align 4
  store i32 255, i32* %10, align 4
  store i32 255, i32* %8, align 4
  store i32 2, i32* %12, align 4
  br label %15

15:                                               ; preds = %49, %3
  %16 = load i32, i32* %12, align 4
  %17 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %18 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %16, %21
  br i1 %22, label %23, label %52

23:                                               ; preds = %15
  %24 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %25 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 1
  %28 = load i32*, i32** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %28, i64 %30
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %13, align 4
  %33 = load i32, i32* %13, align 4
  %34 = load i32, i32* %6, align 4
  %35 = sub nsw i32 %33, %34
  %36 = call i64 @abs(i32 %35)
  %37 = load i32, i32* %14, align 4
  %38 = call i64 @abs(i32 %37)
  %39 = icmp slt i64 %36, %38
  br i1 %39, label %40, label %48

40:                                               ; preds = %23
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %6, align 4
  %43 = sub nsw i32 %41, %42
  store i32 %43, i32* %14, align 4
  %44 = load i32, i32* %14, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %40
  br label %52

47:                                               ; preds = %40
  br label %48

48:                                               ; preds = %47, %23
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %12, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %12, align 4
  br label %15

52:                                               ; preds = %46, %15
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, %53
  store i32 %55, i32* %6, align 4
  store i32 2, i32* %12, align 4
  br label %56

56:                                               ; preds = %106, %52
  %57 = load i32, i32* %12, align 4
  %58 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %59 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %58, i32 0, i32 0
  %60 = load %struct.TYPE_2__*, %struct.TYPE_2__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = icmp slt i32 %57, %62
  br i1 %63, label %64, label %109

64:                                               ; preds = %56
  %65 = load %struct.acpi_video_device*, %struct.acpi_video_device** %5, align 8
  %66 = getelementptr inbounds %struct.acpi_video_device, %struct.acpi_video_device* %65, i32 0, i32 0
  %67 = load %struct.TYPE_2__*, %struct.TYPE_2__** %66, align 8
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  store i32 %73, i32* %13, align 4
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %79

77:                                               ; preds = %64
  %78 = load i32, i32* %13, align 4
  store i32 %78, i32* %8, align 4
  br label %79

79:                                               ; preds = %77, %64
  %80 = load i32, i32* %13, align 4
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %80, %81
  br i1 %82, label %83, label %85

83:                                               ; preds = %79
  %84 = load i32, i32* %13, align 4
  store i32 %84, i32* %9, align 4
  br label %85

85:                                               ; preds = %83, %79
  %86 = load i32, i32* %13, align 4
  %87 = load i32, i32* %10, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load i32, i32* %13, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp sgt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %89
  %94 = load i32, i32* %13, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %89, %85
  %96 = load i32, i32* %13, align 4
  %97 = load i32, i32* %11, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %105

99:                                               ; preds = %95
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %105

103:                                              ; preds = %99
  %104 = load i32, i32* %13, align 4
  store i32 %104, i32* %11, align 4
  br label %105

105:                                              ; preds = %103, %99, %95
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %12, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %12, align 4
  br label %56

109:                                              ; preds = %56
  %110 = load i32, i32* %7, align 4
  switch i32 %110, label %142 [
    i32 132, label %111
    i32 129, label %121
    i32 131, label %131
    i32 128, label %141
    i32 130, label %141
  ]

111:                                              ; preds = %109
  %112 = load i32, i32* %6, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %112, %113
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* %10, align 4
  br label %119

117:                                              ; preds = %111
  %118 = load i32, i32* %8, align 4
  br label %119

119:                                              ; preds = %117, %115
  %120 = phi i32 [ %116, %115 ], [ %118, %117 ]
  store i32 %120, i32* %4, align 4
  br label %144

121:                                              ; preds = %109
  %122 = load i32, i32* %6, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp slt i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32, i32* %10, align 4
  br label %129

127:                                              ; preds = %121
  %128 = load i32, i32* %9, align 4
  br label %129

129:                                              ; preds = %127, %125
  %130 = phi i32 [ %126, %125 ], [ %128, %127 ]
  store i32 %130, i32* %4, align 4
  br label %144

131:                                              ; preds = %109
  %132 = load i32, i32* %6, align 4
  %133 = load i32, i32* %8, align 4
  %134 = icmp sgt i32 %132, %133
  br i1 %134, label %135, label %137

135:                                              ; preds = %131
  %136 = load i32, i32* %11, align 4
  br label %139

137:                                              ; preds = %131
  %138 = load i32, i32* %8, align 4
  br label %139

139:                                              ; preds = %137, %135
  %140 = phi i32 [ %136, %135 ], [ %138, %137 ]
  store i32 %140, i32* %4, align 4
  br label %144

141:                                              ; preds = %109, %109
  store i32 0, i32* %4, align 4
  br label %144

142:                                              ; preds = %109
  %143 = load i32, i32* %6, align 4
  store i32 %143, i32* %4, align 4
  br label %144

144:                                              ; preds = %142, %141, %139, %129, %119
  %145 = load i32, i32* %4, align 4
  ret i32 %145
}

declare dso_local i64 @abs(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
