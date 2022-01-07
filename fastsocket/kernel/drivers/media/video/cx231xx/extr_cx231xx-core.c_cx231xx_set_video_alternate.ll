; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_set_video_alternate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_set_video_alternate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32, i64, %struct.TYPE_8__, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32*, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dev->video_mode.alt= %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"minimum isoc packet size: %u (alt=%d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"setting alternate %d with wMaxPacketSize=%u\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"cannot change alt number to %d (error=%i)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_set_video_alternate(%struct.cx231xx* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cx231xx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.cx231xx* %0, %struct.cx231xx** %3, align 8
  %8 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %9 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %5, align 4
  %12 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %13 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = mul nsw i32 %14, 2
  %16 = add nsw i32 %15, 4
  store i32 %16, i32* %6, align 4
  store i64 0, i64* %7, align 8
  %17 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %18 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = mul nsw i32 %19, 2
  %21 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %22 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %20, %23
  %25 = icmp sgt i32 %24, 345600
  br i1 %25, label %26, label %29

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = mul i32 %27, 2
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %31 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp sgt i32 %32, 360
  br i1 %33, label %34, label %38

34:                                               ; preds = %29
  %35 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %36 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %35, i32 0, i32 3
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  store i32 3, i32* %37, align 8
  br label %62

38:                                               ; preds = %29
  %39 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %40 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sgt i32 %41, 180
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %45 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  store i32 2, i32* %46, align 8
  br label %61

47:                                               ; preds = %38
  %48 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %49 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp sgt i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %47
  %53 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %54 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %53, i32 0, i32 3
  %55 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %54, i32 0, i32 0
  store i32 1, i32* %55, align 8
  br label %60

56:                                               ; preds = %47
  %57 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %58 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  store i32 0, i32* %59, align 8
  br label %60

60:                                               ; preds = %56, %52
  br label %61

61:                                               ; preds = %60, %43
  br label %62

62:                                               ; preds = %61, %34
  %63 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %64 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %63, i32 0, i32 2
  %65 = load i64, i64* %64, align 8
  %66 = icmp eq i64 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %62
  %68 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %69 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 0, i32* %70, align 8
  br label %71

71:                                               ; preds = %67, %62
  %72 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %73 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %72, i32 0, i32 3
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = call i32 (i8*, i32, ...) @cx231xx_coredbg(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %78 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %77, i32 0, i32 5
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i64 0
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = add nsw i64 %84, 1
  store i64 %85, i64* %7, align 8
  %86 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %87 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %149

92:                                               ; preds = %71
  %93 = load i32, i32* %6, align 4
  %94 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %95 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %94, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = call i32 (i8*, i32, ...) @cx231xx_coredbg(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %97)
  %99 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %100 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = load i32*, i32** %101, align 8
  %103 = icmp ne i32* %102, null
  br i1 %103, label %104, label %119

104:                                              ; preds = %92
  %105 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %106 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %106, i32 0, i32 1
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %110 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %117 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %116, i32 0, i32 3
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 2
  store i32 %115, i32* %118, align 8
  br label %119

119:                                              ; preds = %104, %92
  %120 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %121 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %120, i32 0, i32 3
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %125 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %124, i32 0, i32 3
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load i32, i32* %126, align 8
  %128 = call i32 (i8*, i32, ...) @cx231xx_coredbg(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0), i32 %123, i32 %127)
  %129 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %130 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = load i64, i64* %7, align 8
  %133 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %134 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %133, i32 0, i32 3
  %135 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @usb_set_interface(i32 %131, i64 %132, i32 %136)
  store i32 %137, i32* %4, align 4
  %138 = load i32, i32* %4, align 4
  %139 = icmp slt i32 %138, 0
  br i1 %139, label %140, label %148

140:                                              ; preds = %119
  %141 = load %struct.cx231xx*, %struct.cx231xx** %3, align 8
  %142 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %141, i32 0, i32 3
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = load i32, i32* %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @cx231xx_errdev(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %144, i32 %145)
  %147 = load i32, i32* %4, align 4
  store i32 %147, i32* %2, align 4
  br label %150

148:                                              ; preds = %119
  br label %149

149:                                              ; preds = %148, %71
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %149, %140
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @cx231xx_coredbg(i8*, i32, ...) #1

declare dso_local i32 @usb_set_interface(i32, i64, i32) #1

declare dso_local i32 @cx231xx_errdev(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
