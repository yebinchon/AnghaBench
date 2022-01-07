; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp7045.c_vp7045_usb_op.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_vp7045.c_vp7045_usb_op.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_device = type { i32, i32 }

@.str = private unnamed_addr constant [13 x i8] c"out buffer: \00", align 1
@TH_COMMAND_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_DIR_OUT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"USB control message 'out' went wrong.\00", align 1
@EIO = common dso_local global i32 0, align 4
@TH_COMMAND_IN = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"USB control message 'in' went wrong.\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"in buffer: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vp7045_usb_op(%struct.dvb_usb_device* %0, i32 %1, i32* %2, i32 %3, i32* %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.dvb_usb_device*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca [12 x i32], align 16
  %18 = alloca [20 x i32], align 16
  store %struct.dvb_usb_device* %0, %struct.dvb_usb_device** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32* %2, i32** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  %19 = bitcast [12 x i32]* %17 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %19, i8 0, i64 48, i1 false)
  %20 = bitcast [20 x i32]* %18 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %20, i8 0, i64 80, i1 false)
  %21 = load i32, i32* %10, align 4
  %22 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 0, i64 0
  store i32 %21, i32* %22, align 16
  %23 = load i32, i32* %12, align 4
  %24 = icmp sgt i32 %23, 19
  br i1 %24, label %25, label %26

25:                                               ; preds = %7
  store i32 19, i32* %12, align 4
  br label %26

26:                                               ; preds = %25, %7
  %27 = load i32, i32* %14, align 4
  %28 = icmp sgt i32 %27, 11
  br i1 %28, label %29, label %30

29:                                               ; preds = %26
  store i32 11, i32* %14, align 4
  br label %30

30:                                               ; preds = %29, %26
  %31 = load i32*, i32** %11, align 8
  %32 = icmp ne i32* %31, null
  br i1 %32, label %33, label %41

33:                                               ; preds = %30
  %34 = load i32, i32* %12, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %33
  %37 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 0, i64 1
  %38 = load i32*, i32** %11, align 8
  %39 = load i32, i32* %12, align 4
  %40 = call i32 @memcpy(i32* %37, i32* %38, i32 %39)
  br label %41

41:                                               ; preds = %36, %33, %30
  %42 = call i32 @deb_xfer(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %43 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 0, i64 0
  %44 = load i32, i32* %12, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i32 @debug_dump(i32* %43, i32 %45, i32 (i8*)* @deb_xfer)
  %47 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %48 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %47, i32 0, i32 0
  %49 = call i32 @mutex_lock_interruptible(i32* %48)
  store i32 %49, i32* %16, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %41
  %52 = load i32, i32* %16, align 4
  store i32 %52, i32* %8, align 4
  br label %113

53:                                               ; preds = %41
  %54 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %55 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %58 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @usb_sndctrlpipe(i32 %59, i32 0)
  %61 = load i32, i32* @TH_COMMAND_OUT, align 4
  %62 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %63 = load i32, i32* @USB_DIR_OUT, align 4
  %64 = or i32 %62, %63
  %65 = getelementptr inbounds [20 x i32], [20 x i32]* %18, i64 0, i64 0
  %66 = call i32 @usb_control_msg(i32 %56, i32 %60, i32 %61, i32 %64, i32 0, i32 0, i32* %65, i32 20, i32 2000)
  %67 = icmp ne i32 %66, 20
  br i1 %67, label %68, label %72

68:                                               ; preds = %53
  %69 = call i32 @err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0))
  %70 = load i32, i32* @EIO, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %16, align 4
  br label %108

72:                                               ; preds = %53
  %73 = load i32, i32* %15, align 4
  %74 = call i32 @msleep(i32 %73)
  %75 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %76 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %79 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @usb_rcvctrlpipe(i32 %80, i32 0)
  %82 = load i32, i32* @TH_COMMAND_IN, align 4
  %83 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %84 = load i32, i32* @USB_DIR_IN, align 4
  %85 = or i32 %83, %84
  %86 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %87 = call i32 @usb_control_msg(i32 %77, i32 %81, i32 %82, i32 %85, i32 0, i32 0, i32* %86, i32 12, i32 2000)
  %88 = icmp ne i32 %87, 12
  br i1 %88, label %89, label %93

89:                                               ; preds = %72
  %90 = call i32 @err(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %16, align 4
  br label %108

93:                                               ; preds = %72
  %94 = call i32 @deb_xfer(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0))
  %95 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 0
  %96 = call i32 @debug_dump(i32* %95, i32 12, i32 (i8*)* @deb_xfer)
  %97 = load i32*, i32** %13, align 8
  %98 = icmp ne i32* %97, null
  br i1 %98, label %99, label %107

99:                                               ; preds = %93
  %100 = load i32, i32* %14, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %99
  %103 = load i32*, i32** %13, align 8
  %104 = getelementptr inbounds [12 x i32], [12 x i32]* %17, i64 0, i64 1
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @memcpy(i32* %103, i32* %104, i32 %105)
  br label %107

107:                                              ; preds = %102, %99, %93
  br label %108

108:                                              ; preds = %107, %89, %68
  %109 = load %struct.dvb_usb_device*, %struct.dvb_usb_device** %9, align 8
  %110 = getelementptr inbounds %struct.dvb_usb_device, %struct.dvb_usb_device* %109, i32 0, i32 0
  %111 = call i32 @mutex_unlock(i32* %110)
  %112 = load i32, i32* %16, align 4
  store i32 %112, i32* %8, align 4
  br label %113

113:                                              ; preds = %108, %51
  %114 = load i32, i32* %8, align 4
  ret i32 %114
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #2

declare dso_local i32 @deb_xfer(i8*) #2

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #2

declare dso_local i32 @mutex_lock_interruptible(i32*) #2

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #2

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #2

declare dso_local i32 @err(i8*) #2

declare dso_local i32 @msleep(i32) #2

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #2

declare dso_local i32 @mutex_unlock(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
