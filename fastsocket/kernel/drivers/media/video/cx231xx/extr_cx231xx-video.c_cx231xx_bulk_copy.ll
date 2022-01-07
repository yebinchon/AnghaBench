; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_bulk_copy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-video.c_cx231xx_bulk_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.cx231xx_buffer* }
%struct.cx231xx_buffer = type { i32 }
%struct.urb = type { i8*, i32, i32, %struct.cx231xx_dmaqueue* }
%struct.cx231xx_dmaqueue = type { i32, i32, i64 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@DEV_MISCONFIGURED = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx231xx*, %struct.urb*)* @cx231xx_bulk_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cx231xx_bulk_copy(%struct.cx231xx* %0, %struct.urb* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cx231xx*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca %struct.cx231xx_buffer*, align 8
  %7 = alloca %struct.cx231xx_dmaqueue*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  %15 = load %struct.urb*, %struct.urb** %5, align 8
  %16 = getelementptr inbounds %struct.urb, %struct.urb* %15, i32 0, i32 3
  %17 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %16, align 8
  store %struct.cx231xx_dmaqueue* %17, %struct.cx231xx_dmaqueue** %7, align 8
  store i8* null, i8** %8, align 8
  store i32 1, i32* %9, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %18 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %19 = icmp ne %struct.cx231xx* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %158

21:                                               ; preds = %2
  %22 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %23 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @DEV_DISCONNECTED, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %35, label %28

28:                                               ; preds = %21
  %29 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %30 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @DEV_MISCONFIGURED, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28, %21
  store i32 0, i32* %3, align 4
  br label %158

36:                                               ; preds = %28
  %37 = load %struct.urb*, %struct.urb** %5, align 8
  %38 = getelementptr inbounds %struct.urb, %struct.urb* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %55

41:                                               ; preds = %36
  %42 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %43 = load %struct.urb*, %struct.urb** %5, align 8
  %44 = getelementptr inbounds %struct.urb, %struct.urb* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @print_err_status(%struct.cx231xx* %42, i32 -1, i32 %45)
  %47 = load %struct.urb*, %struct.urb** %5, align 8
  %48 = getelementptr inbounds %struct.urb, %struct.urb* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @ENOENT, align 4
  %51 = sub nsw i32 0, %50
  %52 = icmp eq i32 %49, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %158

54:                                               ; preds = %41
  br label %55

55:                                               ; preds = %54, %36
  %56 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %57 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %56, i32 0, i32 1
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %59, align 8
  store %struct.cx231xx_buffer* %60, %struct.cx231xx_buffer** %6, align 8
  %61 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %62 = icmp ne %struct.cx231xx_buffer* %61, null
  br i1 %62, label %63, label %67

63:                                               ; preds = %55
  %64 = load %struct.cx231xx_buffer*, %struct.cx231xx_buffer** %6, align 8
  %65 = getelementptr inbounds %struct.cx231xx_buffer, %struct.cx231xx_buffer* %64, i32 0, i32 0
  %66 = call i8* @videobuf_to_vmalloc(i32* %65)
  store i8* %66, i8** %8, align 8
  br label %67

67:                                               ; preds = %63, %55
  %68 = load %struct.urb*, %struct.urb** %5, align 8
  %69 = getelementptr inbounds %struct.urb, %struct.urb* %68, i32 0, i32 0
  %70 = load i8*, i8** %69, align 8
  store i8* %70, i8** %10, align 8
  %71 = load %struct.urb*, %struct.urb** %5, align 8
  %72 = getelementptr inbounds %struct.urb, %struct.urb* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %12, align 4
  store i32 0, i32* %11, align 4
  %74 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %75 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %82

78:                                               ; preds = %67
  %79 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %80 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  store i32 %81, i32* %13, align 4
  br label %88

82:                                               ; preds = %67
  %83 = load i8*, i8** %10, align 8
  %84 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %85 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @cx231xx_find_boundary_SAV_EAV(i8* %83, i32 %86, i32* %11)
  store i32 %87, i32* %13, align 4
  br label %88

88:                                               ; preds = %82, %78
  %89 = load i32, i32* %13, align 4
  %90 = and i32 %89, 240
  store i32 %90, i32* %13, align 4
  %91 = load i32, i32* %13, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %107

93:                                               ; preds = %88
  %94 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %95 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %96 = load i32, i32* %13, align 4
  %97 = load i8*, i8** %10, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i8, i8* %97, i64 %99
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %11, align 4
  %103 = sub nsw i32 %101, %102
  %104 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %94, %struct.cx231xx_dmaqueue* %95, i32 %96, i8* %100, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = add nsw i32 %105, %104
  store i32 %106, i32* %11, align 4
  br label %107

107:                                              ; preds = %93, %88
  br label %108

108:                                              ; preds = %146, %107
  %109 = load i32, i32* %11, align 4
  %110 = load i32, i32* %12, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %147

112:                                              ; preds = %108
  store i32 0, i32* %14, align 4
  %113 = load i8*, i8** %10, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i8, i8* %113, i64 %115
  %117 = load i32, i32* %12, align 4
  %118 = load i32, i32* %11, align 4
  %119 = sub nsw i32 %117, %118
  %120 = call i32 @cx231xx_find_next_SAV_EAV(i8* %116, i32 %119, i32* %14)
  store i32 %120, i32* %13, align 4
  %121 = load i32, i32* %14, align 4
  %122 = load i32, i32* %11, align 4
  %123 = add nsw i32 %122, %121
  store i32 %123, i32* %11, align 4
  %124 = load i32, i32* %13, align 4
  %125 = and i32 %124, 240
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %146

128:                                              ; preds = %112
  %129 = load i32, i32* %11, align 4
  %130 = load i32, i32* %12, align 4
  %131 = icmp slt i32 %129, %130
  br i1 %131, label %132, label %146

132:                                              ; preds = %128
  %133 = load %struct.cx231xx*, %struct.cx231xx** %4, align 8
  %134 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %135 = load i32, i32* %13, align 4
  %136 = load i8*, i8** %10, align 8
  %137 = load i32, i32* %11, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i8, i8* %136, i64 %138
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* %11, align 4
  %142 = sub nsw i32 %140, %141
  %143 = call i32 @cx231xx_get_video_line(%struct.cx231xx* %133, %struct.cx231xx_dmaqueue* %134, i32 %135, i8* %139, i32 %142)
  %144 = load i32, i32* %11, align 4
  %145 = add nsw i32 %144, %143
  store i32 %145, i32* %11, align 4
  br label %146

146:                                              ; preds = %132, %128, %112
  br label %108

147:                                              ; preds = %108
  %148 = load %struct.cx231xx_dmaqueue*, %struct.cx231xx_dmaqueue** %7, align 8
  %149 = getelementptr inbounds %struct.cx231xx_dmaqueue, %struct.cx231xx_dmaqueue* %148, i32 0, i32 1
  %150 = load i32, i32* %149, align 4
  %151 = load i8*, i8** %10, align 8
  %152 = load i32, i32* %12, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds i8, i8* %151, i64 %153
  %155 = getelementptr inbounds i8, i8* %154, i64 -4
  %156 = call i32 @memcpy(i32 %150, i8* %155, i32 4)
  store i32 0, i32* %11, align 4
  %157 = load i32, i32* %9, align 4
  store i32 %157, i32* %3, align 4
  br label %158

158:                                              ; preds = %147, %53, %35, %20
  %159 = load i32, i32* %3, align 4
  ret i32 %159
}

declare dso_local i32 @print_err_status(%struct.cx231xx*, i32, i32) #1

declare dso_local i8* @videobuf_to_vmalloc(i32*) #1

declare dso_local i32 @cx231xx_find_boundary_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @cx231xx_get_video_line(%struct.cx231xx*, %struct.cx231xx_dmaqueue*, i32, i8*, i32) #1

declare dso_local i32 @cx231xx_find_next_SAV_EAV(i8*, i32, i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
