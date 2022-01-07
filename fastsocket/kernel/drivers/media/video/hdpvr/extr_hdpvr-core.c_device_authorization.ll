; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_device_authorization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/hdpvr/extr_hdpvr-core.c_device_authorization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdpvr_device = type { i8*, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"unexpected answer of status request, len %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"firmware version 0x%x dated %s\0A\00", align 1
@HDPVR_FLAG_AC3_CAP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"untested firmware, the driver might not work.\0A\00", align 1
@MSG_INFO = common dso_local global i32 0, align 4
@hdpvr_debug = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"magic request returned %d\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdpvr_device*)* @device_authorization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @device_authorization(%struct.hdpvr_device* %0) #0 {
  %2 = alloca %struct.hdpvr_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  %7 = alloca i8*, align 8
  store %struct.hdpvr_device* %0, %struct.hdpvr_device** %2, align 8
  %8 = load i32, i32* @ENOMEM, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %4, align 4
  store i8 56, i8* %5, align 1
  store i8 -127, i8* %6, align 1
  %10 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %11 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %10, i32 0, i32 1
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %14 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %17 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @usb_rcvctrlpipe(i32 %18, i32 0)
  %20 = load i8, i8* %6, align 1
  %21 = sext i8 %20 to i32
  %22 = load i8, i8* %5, align 1
  %23 = sext i8 %22 to i32
  %24 = or i32 128, %23
  %25 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %26 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %25, i32 0, i32 0
  %27 = load i8*, i8** %26, align 8
  %28 = call i32 @usb_control_msg(i32 %15, i32 %19, i32 %21, i32 %24, i32 1024, i32 3, i8* %27, i32 46, i32 10000)
  store i32 %28, i32* %3, align 4
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 46
  br i1 %30, label %31, label %36

31:                                               ; preds = %1
  %32 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %33 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %32, i32 0, i32 2
  %34 = load i32, i32* %3, align 4
  %35 = call i32 (i32*, i8*, ...) @v4l2_err(i32* %33, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %34)
  br label %123

36:                                               ; preds = %1
  %37 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %38 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %37, i32 0, i32 2
  %39 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %40 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = getelementptr inbounds i8, i8* %41, i64 1
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %46 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 2
  %49 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %38, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %44, i8* %48)
  %50 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %51 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %50, i32 0, i32 0
  %52 = load i8*, i8** %51, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 1
  %54 = load i8, i8* %53, align 1
  %55 = sext i8 %54 to i32
  switch i32 %55, label %69 [
    i32 131, label %56
    i32 128, label %63
    i32 130, label %63
    i32 129, label %63
  ]

56:                                               ; preds = %36
  %57 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %58 = xor i32 %57, -1
  %59 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %60 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %59, i32 0, i32 4
  %61 = load i32, i32* %60, align 4
  %62 = and i32 %61, %58
  store i32 %62, i32* %60, align 4
  br label %94

63:                                               ; preds = %36, %36, %36
  %64 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %65 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %66 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 4
  br label %94

69:                                               ; preds = %36
  %70 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %71 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %70, i32 0, i32 2
  %72 = call i32 (i32*, i8*, ...) @v4l2_info(i32* %71, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  %73 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %74 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 1
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp sge i32 %78, 128
  br i1 %79, label %80, label %86

80:                                               ; preds = %69
  %81 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %82 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %83 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 4
  %85 = or i32 %84, %81
  store i32 %85, i32* %83, align 4
  br label %93

86:                                               ; preds = %69
  %87 = load i32, i32* @HDPVR_FLAG_AC3_CAP, align 4
  %88 = xor i32 %87, -1
  %89 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %90 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 4
  %92 = and i32 %91, %88
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %86, %80
  br label %94

94:                                               ; preds = %93, %63, %56
  %95 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %96 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %95, i32 0, i32 0
  %97 = load i8*, i8** %96, align 8
  %98 = getelementptr inbounds i8, i8* %97, i64 38
  store i8* %98, i8** %7, align 8
  %99 = load i8*, i8** %7, align 8
  %100 = call i32 @challenge(i8* %99)
  %101 = call i32 @msleep(i32 100)
  %102 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %103 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %106 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %105, i32 0, i32 3
  %107 = load i32, i32* %106, align 8
  %108 = call i32 @usb_sndctrlpipe(i32 %107, i32 0)
  %109 = load i8, i8* %5, align 1
  %110 = sext i8 %109 to i32
  %111 = or i32 0, %110
  %112 = load i8*, i8** %7, align 8
  %113 = call i32 @usb_control_msg(i32 %104, i32 %108, i32 209, i32 %111, i32 0, i32 0, i8* %112, i32 8, i32 10000)
  store i32 %113, i32* %3, align 4
  %114 = load i32, i32* @MSG_INFO, align 4
  %115 = load i32, i32* @hdpvr_debug, align 4
  %116 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %117 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %116, i32 0, i32 2
  %118 = load i32, i32* %3, align 4
  %119 = call i32 (i32, i32, i32*, i8*, ...) @v4l2_dbg(i32 %114, i32 %115, i32* %117, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  %120 = load i32, i32* %3, align 4
  %121 = icmp ne i32 %120, 8
  %122 = zext i1 %121 to i32
  store i32 %122, i32* %4, align 4
  br label %123

123:                                              ; preds = %94, %31
  %124 = load %struct.hdpvr_device*, %struct.hdpvr_device** %2, align 8
  %125 = getelementptr inbounds %struct.hdpvr_device, %struct.hdpvr_device* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load i32, i32* %4, align 4
  ret i32 %127
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @v4l2_err(i32*, i8*, ...) #1

declare dso_local i32 @v4l2_info(i32*, i8*, ...) #1

declare dso_local i32 @challenge(i8*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @v4l2_dbg(i32, i32, i32*, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
