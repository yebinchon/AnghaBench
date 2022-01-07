; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_prepare_iso_urb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_prepare_iso_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.video_data = type { i32, i32, %struct.urb**, %struct.TYPE_3__* }
%struct.urb = type { i32, i32, i32, i32, %struct.TYPE_4__*, i8*, i32, i32, %struct.usb_device*, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.usb_device = type { i32 }
%struct.TYPE_3__ = type { %struct.usb_device* }

@SBUF_NUM = common dso_local global i32 0, align 4
@PK_PER_URB = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ISO_PKT_SIZE = common dso_local global i32 0, align 4
@urb_complete_iso = common dso_local global i32 0, align 4
@URB_ISO_ASAP = common dso_local global i32 0, align 4
@URB_NO_TRANSFER_DMA_MAP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.video_data*)* @prepare_iso_urb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @prepare_iso_urb(%struct.video_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.video_data*, align 8
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.urb*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.video_data* %0, %struct.video_data** %3, align 8
  %9 = load %struct.video_data*, %struct.video_data** %3, align 8
  %10 = getelementptr inbounds %struct.video_data, %struct.video_data* %9, i32 0, i32 3
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.usb_device*, %struct.usb_device** %12, align 8
  store %struct.usb_device* %13, %struct.usb_device** %4, align 8
  %14 = load %struct.video_data*, %struct.video_data** %3, align 8
  %15 = getelementptr inbounds %struct.video_data, %struct.video_data* %14, i32 0, i32 2
  %16 = load %struct.urb**, %struct.urb*** %15, align 8
  %17 = getelementptr inbounds %struct.urb*, %struct.urb** %16, i64 0
  %18 = load %struct.urb*, %struct.urb** %17, align 8
  %19 = icmp ne %struct.urb* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %127

21:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %22

22:                                               ; preds = %112, %21
  %23 = load i32, i32* %5, align 4
  %24 = load i32, i32* @SBUF_NUM, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %115

26:                                               ; preds = %22
  %27 = load i32, i32* @PK_PER_URB, align 4
  %28 = load i32, i32* @GFP_KERNEL, align 4
  %29 = call %struct.urb* @usb_alloc_urb(i32 %27, i32 %28)
  store %struct.urb* %29, %struct.urb** %6, align 8
  %30 = load %struct.urb*, %struct.urb** %6, align 8
  %31 = icmp eq %struct.urb* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  br label %116

33:                                               ; preds = %26
  %34 = load %struct.urb*, %struct.urb** %6, align 8
  %35 = load %struct.video_data*, %struct.video_data** %3, align 8
  %36 = getelementptr inbounds %struct.video_data, %struct.video_data* %35, i32 0, i32 2
  %37 = load %struct.urb**, %struct.urb*** %36, align 8
  %38 = load i32, i32* %5, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.urb*, %struct.urb** %37, i64 %39
  store %struct.urb* %34, %struct.urb** %40, align 8
  %41 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %42 = load i32, i32* @ISO_PKT_SIZE, align 4
  %43 = load i32, i32* @PK_PER_URB, align 4
  %44 = mul nsw i32 %42, %43
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = load %struct.urb*, %struct.urb** %6, align 8
  %47 = getelementptr inbounds %struct.urb, %struct.urb* %46, i32 0, i32 10
  %48 = call i8* @usb_buffer_alloc(%struct.usb_device* %41, i32 %44, i32 %45, i32* %47)
  store i8* %48, i8** %7, align 8
  %49 = load i32, i32* @urb_complete_iso, align 4
  %50 = load %struct.urb*, %struct.urb** %6, align 8
  %51 = getelementptr inbounds %struct.urb, %struct.urb* %50, i32 0, i32 9
  store i32 %49, i32* %51, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %53 = load %struct.urb*, %struct.urb** %6, align 8
  %54 = getelementptr inbounds %struct.urb, %struct.urb* %53, i32 0, i32 8
  store %struct.usb_device* %52, %struct.usb_device** %54, align 8
  %55 = load %struct.video_data*, %struct.video_data** %3, align 8
  %56 = getelementptr inbounds %struct.video_data, %struct.video_data* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.urb*, %struct.urb** %6, align 8
  %59 = getelementptr inbounds %struct.urb, %struct.urb* %58, i32 0, i32 7
  store i32 %57, i32* %59, align 4
  %60 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %61 = load %struct.video_data*, %struct.video_data** %3, align 8
  %62 = getelementptr inbounds %struct.video_data, %struct.video_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @usb_rcvisocpipe(%struct.usb_device* %60, i32 %63)
  %65 = load %struct.urb*, %struct.urb** %6, align 8
  %66 = getelementptr inbounds %struct.urb, %struct.urb* %65, i32 0, i32 6
  store i32 %64, i32* %66, align 8
  %67 = load %struct.urb*, %struct.urb** %6, align 8
  %68 = getelementptr inbounds %struct.urb, %struct.urb* %67, i32 0, i32 0
  store i32 1, i32* %68, align 8
  %69 = load i32, i32* @URB_ISO_ASAP, align 4
  %70 = load i32, i32* @URB_NO_TRANSFER_DMA_MAP, align 4
  %71 = or i32 %69, %70
  %72 = load %struct.urb*, %struct.urb** %6, align 8
  %73 = getelementptr inbounds %struct.urb, %struct.urb* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load i32, i32* @PK_PER_URB, align 4
  %75 = load %struct.urb*, %struct.urb** %6, align 8
  %76 = getelementptr inbounds %struct.urb, %struct.urb* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load %struct.urb*, %struct.urb** %6, align 8
  %79 = getelementptr inbounds %struct.urb, %struct.urb* %78, i32 0, i32 5
  store i8* %77, i8** %79, align 8
  %80 = load i32, i32* @PK_PER_URB, align 4
  %81 = load i32, i32* @ISO_PKT_SIZE, align 4
  %82 = mul nsw i32 %80, %81
  %83 = load %struct.urb*, %struct.urb** %6, align 8
  %84 = getelementptr inbounds %struct.urb, %struct.urb* %83, i32 0, i32 3
  store i32 %82, i32* %84, align 4
  store i32 0, i32* %8, align 4
  br label %85

85:                                               ; preds = %108, %33
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* @PK_PER_URB, align 4
  %88 = icmp slt i32 %86, %87
  br i1 %88, label %89, label %111

89:                                               ; preds = %85
  %90 = load i32, i32* @ISO_PKT_SIZE, align 4
  %91 = load i32, i32* %8, align 4
  %92 = mul nsw i32 %90, %91
  %93 = load %struct.urb*, %struct.urb** %6, align 8
  %94 = getelementptr inbounds %struct.urb, %struct.urb* %93, i32 0, i32 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load i32, i32* %8, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  store i32 %92, i32* %99, align 4
  %100 = load i32, i32* @ISO_PKT_SIZE, align 4
  %101 = load %struct.urb*, %struct.urb** %6, align 8
  %102 = getelementptr inbounds %struct.urb, %struct.urb* %101, i32 0, i32 4
  %103 = load %struct.TYPE_4__*, %struct.TYPE_4__** %102, align 8
  %104 = load i32, i32* %8, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 1
  store i32 %100, i32* %107, align 4
  br label %108

108:                                              ; preds = %89
  %109 = load i32, i32* %8, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %8, align 4
  br label %85

111:                                              ; preds = %85
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %5, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %5, align 4
  br label %22

115:                                              ; preds = %22
  store i32 0, i32* %2, align 4
  br label %127

116:                                              ; preds = %32
  br label %117

117:                                              ; preds = %121, %116
  %118 = load i32, i32* %5, align 4
  %119 = icmp sgt i32 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  br label %121

121:                                              ; preds = %120
  %122 = load i32, i32* %5, align 4
  %123 = add nsw i32 %122, -1
  store i32 %123, i32* %5, align 4
  br label %117

124:                                              ; preds = %117
  %125 = load i32, i32* @ENOMEM, align 4
  %126 = sub nsw i32 0, %125
  store i32 %126, i32* %2, align 4
  br label %127

127:                                              ; preds = %124, %115, %20
  %128 = load i32, i32* %2, align 4
  ret i32 %128
}

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i8* @usb_buffer_alloc(%struct.usb_device*, i32, i32, i32*) #1

declare dso_local i32 @usb_rcvisocpipe(%struct.usb_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
