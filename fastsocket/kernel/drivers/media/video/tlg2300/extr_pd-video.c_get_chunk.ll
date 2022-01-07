; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_get_chunk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/tlg2300/extr_pd-video.c_get_chunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urb = type { i32, %struct.usb_iso_packet_descriptor* }
%struct.usb_iso_packet_descriptor = type { i64, i32 }

@GET_SUCCESS = common dso_local global i32 0, align 4
@EOVERFLOW = common dso_local global i32 0, align 4
@GET_TOO_MUCH_BUBBLE = common dso_local global i32 0, align 4
@ISO_PKT_SIZE = common dso_local global i64 0, align 8
@GET_TRAILER = common dso_local global i32 0, align 4
@GET_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.urb*, i32*, i32*, i32*)* @get_chunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_chunk(i32 %0, %struct.urb* %1, i32* %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca %struct.usb_iso_packet_descriptor*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store %struct.urb* %1, %struct.urb** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  store %struct.usb_iso_packet_descriptor* null, %struct.usb_iso_packet_descriptor** %12, align 8
  %14 = load i32, i32* @GET_SUCCESS, align 4
  store i32 %14, i32* %13, align 4
  %15 = load i32*, i32** %10, align 8
  store i32 -1, i32* %15, align 4
  %16 = load i32*, i32** %9, align 8
  store i32 -1, i32* %16, align 4
  br label %17

17:                                               ; preds = %104, %5
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.urb*, %struct.urb** %8, align 8
  %20 = getelementptr inbounds %struct.urb, %struct.urb* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %107

23:                                               ; preds = %17
  %24 = load %struct.urb*, %struct.urb** %8, align 8
  %25 = getelementptr inbounds %struct.urb, %struct.urb* %24, i32 0, i32 1
  %26 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %26, i64 %28
  store %struct.usb_iso_packet_descriptor* %29, %struct.usb_iso_packet_descriptor** %12, align 8
  %30 = load i32, i32* @EOVERFLOW, align 4
  %31 = sub nsw i32 0, %30
  %32 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %33 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %48

36:                                               ; preds = %23
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %37, align 4
  %40 = load %struct.urb*, %struct.urb** %8, align 8
  %41 = getelementptr inbounds %struct.urb, %struct.urb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sdiv i32 %42, 3
  %44 = icmp sgt i32 %39, %43
  br i1 %44, label %45, label %47

45:                                               ; preds = %36
  %46 = load i32, i32* @GET_TOO_MUCH_BUBBLE, align 4
  store i32 %46, i32* %6, align 4
  br label %119

47:                                               ; preds = %36
  br label %104

48:                                               ; preds = %23
  %49 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %50 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %64, label %53

53:                                               ; preds = %48
  %54 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %55 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp sle i64 %56, 0
  br i1 %57, label %64, label %58

58:                                               ; preds = %53
  %59 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %60 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @ISO_PKT_SIZE, align 8
  %63 = icmp sgt i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58, %53, %48
  %65 = load i32*, i32** %9, align 8
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, -1
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %107

69:                                               ; preds = %64
  br label %104

70:                                               ; preds = %58
  %71 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %72 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @ISO_PKT_SIZE, align 8
  %75 = icmp eq i64 %73, %74
  br i1 %75, label %76, label %86

76:                                               ; preds = %70
  %77 = load i32*, i32** %9, align 8
  %78 = load i32, i32* %77, align 4
  %79 = icmp eq i32 %78, -1
  br i1 %79, label %80, label %83

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  %82 = load i32*, i32** %9, align 8
  store i32 %81, i32* %82, align 4
  br label %83

83:                                               ; preds = %80, %76
  %84 = load i32, i32* %7, align 4
  %85 = load i32*, i32** %10, align 8
  store i32 %84, i32* %85, align 4
  br label %104

86:                                               ; preds = %70
  %87 = load %struct.usb_iso_packet_descriptor*, %struct.usb_iso_packet_descriptor** %12, align 8
  %88 = getelementptr inbounds %struct.usb_iso_packet_descriptor, %struct.usb_iso_packet_descriptor* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @ISO_PKT_SIZE, align 8
  %91 = icmp slt i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %86
  %93 = load i32*, i32** %9, align 8
  %94 = load i32, i32* %93, align 4
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %102

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32*, i32** %9, align 8
  store i32 %97, i32* %98, align 4
  %99 = load i32, i32* %7, align 4
  %100 = load i32*, i32** %10, align 8
  store i32 %99, i32* %100, align 4
  %101 = load i32, i32* @GET_TRAILER, align 4
  store i32 %101, i32* %6, align 4
  br label %119

102:                                              ; preds = %92
  br label %107

103:                                              ; preds = %86
  br label %104

104:                                              ; preds = %103, %83, %69, %47
  %105 = load i32, i32* %7, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %7, align 4
  br label %17

107:                                              ; preds = %102, %68, %17
  %108 = load i32*, i32** %9, align 8
  %109 = load i32, i32* %108, align 4
  %110 = icmp eq i32 %109, -1
  br i1 %110, label %111, label %117

111:                                              ; preds = %107
  %112 = load i32*, i32** %10, align 8
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %113, -1
  br i1 %114, label %115, label %117

115:                                              ; preds = %111
  %116 = load i32, i32* @GET_NONE, align 4
  store i32 %116, i32* %13, align 4
  br label %117

117:                                              ; preds = %115, %111, %107
  %118 = load i32, i32* %13, align 4
  store i32 %118, i32* %6, align 4
  br label %119

119:                                              ; preds = %117, %96, %45
  %120 = load i32, i32* %6, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
