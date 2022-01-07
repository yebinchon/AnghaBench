; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_find_sof_header.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/sn9c102/extr_sn9c102_core.c_sn9c102_find_sof_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sn9c102_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i8* }

@sn9c102_find_sof_header.marker = internal constant [6 x i8] c"\FF\FF\00\C4\C4\96", align 1
@.str = private unnamed_addr constant [47 x i8] c"Bytes to analyze: %zd. SOF starts at byte #%zd\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.sn9c102_device*, i8*, i64)* @sn9c102_find_sof_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @sn9c102_find_sof_header(%struct.sn9c102_device* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.sn9c102_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.sn9c102_device* %0, %struct.sn9c102_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %15 = call i64 @sn9c102_sof_length(%struct.sn9c102_device* %14)
  store i64 %15, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %16

16:                                               ; preds = %141, %3
  %17 = load i64, i64* %10, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %144

20:                                               ; preds = %16
  %21 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %22 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = icmp uge i64 %25, 6
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %61

30:                                               ; preds = %20
  %31 = load i8*, i8** %8, align 8
  %32 = load i64, i64* %10, align 8
  %33 = getelementptr inbounds i8, i8* %31, i64 %32
  %34 = load i8, i8* %33, align 1
  %35 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %36 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 1
  %38 = load i8*, i8** %37, align 8
  %39 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %40 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %38, i64 %43
  store i8 %34, i8* %44, align 1
  %45 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %46 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %47, align 8
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %9, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %30
  %54 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %55 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  store i32 0, i32* %56, align 8
  %57 = load i8*, i8** %6, align 8
  %58 = load i64, i64* %10, align 8
  %59 = getelementptr i8, i8* %57, i64 %58
  store i8* %59, i8** %4, align 8
  br label %145

60:                                               ; preds = %30
  br label %141

61:                                               ; preds = %20
  store i64 0, i64* %11, align 8
  %62 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %63 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  store i64 %66, i64* %12, align 8
  br label %67

67:                                               ; preds = %137, %61
  %68 = load i64, i64* %11, align 8
  %69 = load i64, i64* %12, align 8
  %70 = add i64 %68, %69
  %71 = icmp ult i64 %70, 6
  br i1 %71, label %72, label %140

72:                                               ; preds = %67
  %73 = load i64, i64* %10, align 8
  %74 = load i64, i64* %11, align 8
  %75 = add i64 %73, %74
  %76 = load i64, i64* %7, align 8
  %77 = icmp eq i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %72
  store i8* null, i8** %4, align 8
  br label %145

82:                                               ; preds = %72
  %83 = load i8*, i8** %8, align 8
  %84 = load i64, i64* %10, align 8
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  %86 = load i64, i64* %11, align 8
  %87 = getelementptr inbounds i8, i8* %85, i64 %86
  %88 = load i8, i8* %87, align 1
  %89 = sext i8 %88 to i32
  %90 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %91 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [6 x i8], [6 x i8]* @sn9c102_find_sof_header.marker, i64 0, i64 %94
  %96 = load i8, i8* %95, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %89, %97
  br i1 %98, label %99, label %132

99:                                               ; preds = %82
  %100 = load i8*, i8** %8, align 8
  %101 = load i64, i64* %10, align 8
  %102 = getelementptr inbounds i8, i8* %100, i64 %101
  %103 = load i64, i64* %11, align 8
  %104 = getelementptr inbounds i8, i8* %102, i64 %103
  %105 = load i8, i8* %104, align 1
  %106 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %107 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  %110 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %111 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %109, i64 %114
  store i8 %105, i8* %115, align 1
  %116 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %117 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, 1
  store i32 %120, i32* %118, align 8
  %121 = sext i32 %120 to i64
  %122 = icmp eq i64 %121, 6
  br i1 %122, label %123, label %131

123:                                              ; preds = %99
  %124 = load i64, i64* %7, align 8
  %125 = load i64, i64* %10, align 8
  %126 = call i32 @PDBGG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %124, i64 %125)
  %127 = load i64, i64* %11, align 8
  %128 = add i64 %127, 1
  %129 = load i64, i64* %10, align 8
  %130 = add i64 %129, %128
  store i64 %130, i64* %10, align 8
  br label %140

131:                                              ; preds = %99
  br label %136

132:                                              ; preds = %82
  %133 = load %struct.sn9c102_device*, %struct.sn9c102_device** %5, align 8
  %134 = getelementptr inbounds %struct.sn9c102_device, %struct.sn9c102_device* %133, i32 0, i32 0
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 0
  store i32 0, i32* %135, align 8
  br label %140

136:                                              ; preds = %131
  br label %137

137:                                              ; preds = %136
  %138 = load i64, i64* %11, align 8
  %139 = add i64 %138, 1
  store i64 %139, i64* %11, align 8
  br label %67

140:                                              ; preds = %132, %123, %67
  br label %141

141:                                              ; preds = %140, %60
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %10, align 8
  br label %16

144:                                              ; preds = %16
  store i8* null, i8** %4, align 8
  br label %145

145:                                              ; preds = %144, %81, %53
  %146 = load i8*, i8** %4, align 8
  ret i8* %146
}

declare dso_local i64 @sn9c102_sof_length(%struct.sn9c102_device*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @PDBGG(i8*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
