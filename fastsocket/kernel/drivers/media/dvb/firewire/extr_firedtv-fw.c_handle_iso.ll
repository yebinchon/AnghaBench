; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-fw.c_handle_iso.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/firewire/extr_firedtv-fw.c_handle_iso.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_iso_context = type { i32 }
%struct.firedtv = type { i32, i32, %struct.firedtv_receive_context* }
%struct.firedtv_receive_context = type { i32, i8** }

@MAX_PACKET_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"length = %d\0A\00", align 1
@PACKETS_PER_PAGE = common dso_local global i32 0, align 4
@CIP_HEADER_SIZE = common dso_local global i64 0, align 8
@MPEG2_TS_HEADER_SIZE = common dso_local global i64 0, align 8
@MPEG2_TS_SOURCE_PACKET_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"requeue failed\0A\00", align 1
@N_PACKETS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_iso_context*, i32, i64, i8*, i8*)* @handle_iso to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @handle_iso(%struct.fw_iso_context* %0, i32 %1, i64 %2, i8* %3, i8* %4) #0 {
  %6 = alloca %struct.fw_iso_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.firedtv*, align 8
  %12 = alloca %struct.firedtv_receive_context*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i8*, align 8
  %19 = alloca i8*, align 8
  store %struct.fw_iso_context* %0, %struct.fw_iso_context** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i8* %3, i8** %9, align 8
  store i8* %4, i8** %10, align 8
  %20 = load i8*, i8** %10, align 8
  %21 = bitcast i8* %20 to %struct.firedtv*
  store %struct.firedtv* %21, %struct.firedtv** %11, align 8
  %22 = load %struct.firedtv*, %struct.firedtv** %11, align 8
  %23 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %22, i32 0, i32 2
  %24 = load %struct.firedtv_receive_context*, %struct.firedtv_receive_context** %23, align 8
  store %struct.firedtv_receive_context* %24, %struct.firedtv_receive_context** %12, align 8
  %25 = load %struct.firedtv_receive_context*, %struct.firedtv_receive_context** %12, align 8
  %26 = getelementptr inbounds %struct.firedtv_receive_context, %struct.firedtv_receive_context* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  store i32 %27, i32* %17, align 4
  %28 = load i8*, i8** %9, align 8
  %29 = bitcast i8* %28 to i32*
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i64, i64* %8, align 8
  %32 = udiv i64 %31, 4
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  store i32* %33, i32** %14, align 8
  br label %34

34:                                               ; preds = %113, %5
  %35 = load i32*, i32** %13, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = icmp ult i32* %35, %36
  br i1 %37, label %38, label %116

38:                                               ; preds = %34
  %39 = load i32*, i32** %13, align 8
  %40 = call i32 @be32_to_cpup(i32* %39)
  %41 = ashr i32 %40, 16
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %15, align 4
  %43 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %44 = icmp sgt i32 %42, %43
  %45 = zext i1 %44 to i32
  %46 = call i64 @unlikely(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %38
  %49 = load %struct.firedtv*, %struct.firedtv** %11, align 8
  %50 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* %15, align 4
  %53 = call i32 (i32, i8*, ...) @dev_err(i32 %51, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @MAX_PACKET_SIZE, align 4
  store i32 %54, i32* %15, align 4
  br label %55

55:                                               ; preds = %48, %38
  %56 = load %struct.firedtv_receive_context*, %struct.firedtv_receive_context** %12, align 8
  %57 = getelementptr inbounds %struct.firedtv_receive_context, %struct.firedtv_receive_context* %56, i32 0, i32 1
  %58 = load i8**, i8*** %57, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* @PACKETS_PER_PAGE, align 4
  %61 = sdiv i32 %59, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i8*, i8** %58, i64 %62
  %64 = load i8*, i8** %63, align 8
  %65 = load i32, i32* %17, align 4
  %66 = load i32, i32* @PACKETS_PER_PAGE, align 4
  %67 = srem i32 %65, %66
  %68 = load i32, i32* @MAX_PACKET_SIZE, align 4
  %69 = mul nsw i32 %67, %68
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i8, i8* %64, i64 %70
  store i8* %71, i8** %18, align 8
  %72 = load i8*, i8** %18, align 8
  %73 = load i32, i32* %15, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8, i8* %72, i64 %74
  store i8* %75, i8** %19, align 8
  %76 = load i64, i64* @CIP_HEADER_SIZE, align 8
  %77 = load i64, i64* @MPEG2_TS_HEADER_SIZE, align 8
  %78 = add nsw i64 %76, %77
  %79 = load i8*, i8** %18, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 %78
  store i8* %80, i8** %18, align 8
  br label %81

81:                                               ; preds = %90, %55
  %82 = load i8*, i8** %18, align 8
  %83 = load i8*, i8** %19, align 8
  %84 = icmp ult i8* %82, %83
  br i1 %84, label %85, label %95

85:                                               ; preds = %81
  %86 = load %struct.firedtv*, %struct.firedtv** %11, align 8
  %87 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %86, i32 0, i32 1
  %88 = load i8*, i8** %18, align 8
  %89 = call i32 @dvb_dmx_swfilter_packets(i32* %87, i8* %88, i32 1)
  br label %90

90:                                               ; preds = %85
  %91 = load i32, i32* @MPEG2_TS_SOURCE_PACKET_SIZE, align 4
  %92 = load i8*, i8** %18, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %18, align 8
  br label %81

95:                                               ; preds = %81
  %96 = load %struct.firedtv_receive_context*, %struct.firedtv_receive_context** %12, align 8
  %97 = load i32, i32* %17, align 4
  %98 = call i32 @queue_iso(%struct.firedtv_receive_context* %96, i32 %97)
  store i32 %98, i32* %16, align 4
  %99 = load i32, i32* %16, align 4
  %100 = call i64 @unlikely(i32 %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %95
  %103 = load %struct.firedtv*, %struct.firedtv** %11, align 8
  %104 = getelementptr inbounds %struct.firedtv, %struct.firedtv* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %105, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %107

107:                                              ; preds = %102, %95
  %108 = load i32, i32* %17, align 4
  %109 = add nsw i32 %108, 1
  %110 = load i32, i32* @N_PACKETS, align 4
  %111 = sub nsw i32 %110, 1
  %112 = and i32 %109, %111
  store i32 %112, i32* %17, align 4
  br label %113

113:                                              ; preds = %107
  %114 = load i32*, i32** %13, align 8
  %115 = getelementptr inbounds i32, i32* %114, i32 1
  store i32* %115, i32** %13, align 8
  br label %34

116:                                              ; preds = %34
  %117 = load i32, i32* %17, align 4
  %118 = load %struct.firedtv_receive_context*, %struct.firedtv_receive_context** %12, align 8
  %119 = getelementptr inbounds %struct.firedtv_receive_context, %struct.firedtv_receive_context* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  ret void
}

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dvb_dmx_swfilter_packets(i32*, i8*, i32) #1

declare dso_local i32 @queue_iso(%struct.firedtv_receive_context*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
