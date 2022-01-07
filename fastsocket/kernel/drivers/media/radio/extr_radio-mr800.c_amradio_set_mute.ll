; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_amradio_set_mute.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/radio/extr_radio-mr800.c_amradio_set_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amradio_device = type { i32*, i8, i32, i32, i64 }

@EIO = common dso_local global i32 0, align 4
@AMRADIO_SET_MUTE = common dso_local global i32 0, align 4
@BUFFER_LENGTH = common dso_local global i32 0, align 4
@USB_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.amradio_device*, i8)* @amradio_set_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amradio_set_mute(%struct.amradio_device* %0, i8 signext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.amradio_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.amradio_device* %0, %struct.amradio_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %8 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %9 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %8, i32 0, i32 4
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %2
  %13 = load i32, i32* @EIO, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %3, align 4
  br label %87

15:                                               ; preds = %2
  %16 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %17 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %20 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 0
  store i32 0, i32* %22, align 4
  %23 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %24 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 85, i32* %26, align 4
  %27 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %28 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 2
  store i32 170, i32* %30, align 4
  %31 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %32 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 3
  store i32 0, i32* %34, align 4
  %35 = load i32, i32* @AMRADIO_SET_MUTE, align 4
  %36 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %37 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %36, i32 0, i32 0
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 %35, i32* %39, align 4
  %40 = load i8, i8* %5, align 1
  %41 = sext i8 %40 to i32
  %42 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %43 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 5
  store i32 %41, i32* %45, align 4
  %46 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %47 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 6
  store i32 0, i32* %49, align 4
  %50 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %51 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 7
  store i32 0, i32* %53, align 4
  %54 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %55 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %54, i32 0, i32 3
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %58 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @usb_sndintpipe(i32 %59, i32 2)
  %61 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %62 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = bitcast i32* %63 to i8*
  %65 = load i32, i32* @BUFFER_LENGTH, align 4
  %66 = load i32, i32* @USB_TIMEOUT, align 4
  %67 = call i32 @usb_bulk_msg(i32 %56, i32 %60, i8* %64, i32 %65, i32* %7, i32 %66)
  store i32 %67, i32* %6, align 4
  %68 = load i32, i32* %6, align 4
  %69 = icmp slt i32 %68, 0
  br i1 %69, label %74, label %70

70:                                               ; preds = %15
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @BUFFER_LENGTH, align 4
  %73 = icmp ne i32 %71, %72
  br i1 %73, label %74, label %79

74:                                               ; preds = %70, %15
  %75 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %76 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %75, i32 0, i32 2
  %77 = call i32 @mutex_unlock(i32* %76)
  %78 = load i32, i32* %6, align 4
  store i32 %78, i32* %3, align 4
  br label %87

79:                                               ; preds = %70
  %80 = load i8, i8* %5, align 1
  %81 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %82 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %81, i32 0, i32 1
  store i8 %80, i8* %82, align 8
  %83 = load %struct.amradio_device*, %struct.amradio_device** %4, align 8
  %84 = getelementptr inbounds %struct.amradio_device, %struct.amradio_device* %83, i32 0, i32 2
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load i32, i32* %6, align 4
  store i32 %86, i32* %3, align 4
  br label %87

87:                                               ; preds = %79, %74, %12
  %88 = load i32, i32* %3, align 4
  ret i32 %88
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
