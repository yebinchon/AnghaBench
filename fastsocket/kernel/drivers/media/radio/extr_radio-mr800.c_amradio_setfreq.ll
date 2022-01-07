; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_amradio_setfreq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_amradio_setfreq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amradio_device = type { i32*, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@AMRADIO_SET_FREQ = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amradio_device*, i32)* @amradio_setfreq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amradio_setfreq(%struct.amradio_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amradio_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i16, align 2
  store %struct.amradio_device* %0, %struct.amradio_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 3
  %11 = sdiv i32 %10, 25
  %12 = add nsw i32 16, %11
  %13 = trunc i32 %12 to i16
  store i16 %13, i16* %8, align 2
  %14 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %15 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %14, i32 0, i32 3
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %145

21:                                               ; preds = %2
  %22 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %23 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %22, i32 0, i32 1
  %24 = call i32 @mutex_lock(i32* %23)
  %25 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %26 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 0, i32* %28, align 4
  %29 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %30 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 85, i32* %32, align 4
  %33 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %34 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 2
  store i32 170, i32* %36, align 4
  %37 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %38 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 3, i32* %40, align 4
  %41 = load i32, i32* @AMRADIO_SET_FREQ, align 4
  %42 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %43 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 4
  store i32 %41, i32* %45, align 4
  %46 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %47 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 5
  store i32 0, i32* %49, align 4
  %50 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %51 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 6
  store i32 0, i32* %53, align 4
  %54 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %55 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 7
  store i32 8, i32* %57, align 4
  %58 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %59 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %62 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @usb_sndintpipe(i32 %63, i32 2)
  %65 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %66 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = bitcast i32* %67 to i8*
  %69 = load i32, i32* @BUFFER_LENGTH, align 4
  %70 = load i32, i32* @USB_TIMEOUT, align 4
  %71 = call i32 @usb_bulk_msg(i32 %60, i32 %64, i8* %68, i32 %69, i32* %7, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %21
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @BUFFER_LENGTH, align 4
  %77 = icmp ne i32 %75, %76
  br i1 %77, label %78, label %83

78:                                               ; preds = %74, %21
  %79 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %80 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %79, i32 0, i32 1
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %3, align 4
  br label %145

83:                                               ; preds = %74
  %84 = load i16, i16* %8, align 2
  %85 = zext i16 %84 to i32
  %86 = ashr i32 %85, 8
  %87 = and i32 %86, 255
  %88 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %89 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load i16, i16* %8, align 2
  %93 = zext i16 %92 to i32
  %94 = and i32 %93, 255
  %95 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %96 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 %94, i32* %98, align 4
  %99 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %100 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %99, i32 0, i32 0
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 2
  store i32 1, i32* %102, align 4
  %103 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %104 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 3
  store i32 0, i32* %106, align 4
  %107 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %108 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 4
  store i32 0, i32* %110, align 4
  %111 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %112 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %111, i32 0, i32 0
  %113 = load i32*, i32** %112, align 8
  %114 = getelementptr inbounds i32, i32* %113, i64 7
  store i32 0, i32* %114, align 4
  %115 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %116 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %119 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %118, i32 0, i32 2
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @usb_sndintpipe(i32 %120, i32 2)
  %122 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %123 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %122, i32 0, i32 0
  %124 = load i32*, i32** %123, align 8
  %125 = bitcast i32* %124 to i8*
  %126 = load i32, i32* @BUFFER_LENGTH, align 4
  %127 = load i32, i32* @USB_TIMEOUT, align 4
  %128 = call i32 @usb_bulk_msg(i32 %117, i32 %121, i8* %125, i32 %126, i32* %7, i32 %127)
  store i32 %128, i32* %6, align 4
  %129 = load i32, i32* %6, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %135, label %131

131:                                              ; preds = %83
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @BUFFER_LENGTH, align 4
  %134 = icmp ne i32 %132, %133
  br i1 %134, label %135, label %140

135:                                              ; preds = %131, %83
  %136 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %137 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %136, i32 0, i32 1
  %138 = call i32 @mutex_unlock(i32* %137)
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %3, align 4
  br label %145

140:                                              ; preds = %131
  %141 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %142 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %141, i32 0, i32 1
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* %6, align 4
  store i32 %144, i32* %3, align 4
  br label %145

145:                                              ; preds = %140, %135, %78, %18
  %146 = load i32, i32* %3, align 4
  ret i32 %146
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_bulk_msg(i32, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
