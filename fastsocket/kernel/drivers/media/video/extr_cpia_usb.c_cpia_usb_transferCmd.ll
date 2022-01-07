; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_cpia_usb_transferCmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_usb.c_cpia_usb_transferCmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_cpia = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [37 x i8] c"Internal driver error: udev is NULL\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [40 x i8] c"Internal driver error: command is NULL\0A\00", align 1
@DATA_IN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Internal driver error: data is NULL\0A\00", align 1
@DATA_OUT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [38 x i8] c"Unexpected first byte of command: %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32*, i32*)* @cpia_usb_transferCmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cpia_usb_transferCmd(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.usb_cpia*, align 8
  %11 = alloca %struct.usb_device*, align 8
  %12 = alloca [8 x i32], align 16
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %8, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.usb_cpia*
  store %struct.usb_cpia* %14, %struct.usb_cpia** %10, align 8
  %15 = load %struct.usb_cpia*, %struct.usb_cpia** %10, align 8
  %16 = getelementptr inbounds %struct.usb_cpia, %struct.usb_cpia* %15, i32 0, i32 0
  %17 = load %struct.usb_device*, %struct.usb_device** %16, align 8
  store %struct.usb_device* %17, %struct.usb_device** %11, align 8
  %18 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %19 = icmp ne %struct.usb_device* %18, null
  br i1 %19, label %24, label %20

20:                                               ; preds = %3
  %21 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %87

24:                                               ; preds = %3
  %25 = load i32*, i32** %6, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %87

31:                                               ; preds = %24
  %32 = load i32*, i32** %6, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 7
  %34 = load i32, i32* %33, align 4
  %35 = shl i32 %34, 8
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 6
  %38 = load i32, i32* %37, align 4
  %39 = or i32 %35, %38
  store i32 %39, i32* %9, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @DATA_IN, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %66

45:                                               ; preds = %31
  %46 = load i32*, i32** %7, align 8
  %47 = icmp ne i32* %46, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %4, align 4
  br label %87

52:                                               ; preds = %45
  %53 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %54 = load i32*, i32** %6, align 8
  %55 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %56 = call i32 @ReadPacket(%struct.usb_device* %53, i32* %54, i32* %55, i32 8)
  store i32 %56, i32* %8, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %52
  %60 = load i32, i32* %8, align 4
  store i32 %60, i32* %4, align 4
  br label %87

61:                                               ; preds = %52
  %62 = load i32*, i32** %7, align 8
  %63 = getelementptr inbounds [8 x i32], [8 x i32]* %12, i64 0, i64 0
  %64 = load i32, i32* %9, align 4
  %65 = call i32 @memcpy(i32* %62, i32* %63, i32 %64)
  br label %86

66:                                               ; preds = %31
  %67 = load i32*, i32** %6, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 0
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @DATA_OUT, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %78

72:                                               ; preds = %66
  %73 = load %struct.usb_device*, %struct.usb_device** %11, align 8
  %74 = load i32*, i32** %6, align 8
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %9, align 4
  %77 = call i32 @WritePacket(%struct.usb_device* %73, i32* %74, i32* %75, i32 %76)
  br label %85

78:                                               ; preds = %66
  %79 = load i32*, i32** %6, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 0
  %81 = load i32, i32* %80, align 4
  %82 = call i32 (i8*, ...) @DBG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %8, align 4
  br label %85

85:                                               ; preds = %78, %72
  br label %86

86:                                               ; preds = %85, %61
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %59, %48, %27, %20
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32 @DBG(i8*, ...) #1

declare dso_local i32 @ReadPacket(%struct.usb_device*, i32*, i32*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @WritePacket(%struct.usb_device*, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
