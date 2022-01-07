; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_write_ctrl_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_write_ctrl_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32, i32 }

@DEV_DISCONNECTED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@URB_MAX_CTRL_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENABLE_ONE_BYTE = common dso_local global i32 0, align 4
@ENABLE_TWE_BYTE = common dso_local global i32 0, align 4
@ENABLE_THREE_BYTE = common dso_local global i32 0, align 4
@ENABLE_FOUR_BYTE = common dso_local global i32 0, align 4
@reg_debug = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [64 x i8] c"(pipe 0x%08x): OUT: %02x %02x %02x %02x %02x %02x %02x %02x >>>\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c" %02x\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@HZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_write_ctrl_reg(%struct.cx231xx* %0, i32 %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cx231xx*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %17 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @usb_sndctrlpipe(i32 %18, i32 0)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %21 = getelementptr inbounds %struct.cx231xx, %struct.cx231xx* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @DEV_DISCONNECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %5
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %110

29:                                               ; preds = %5
  %30 = load i32, i32* %11, align 4
  %31 = icmp slt i32 %30, 1
  br i1 %31, label %36, label %32

32:                                               ; preds = %29
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* @URB_MAX_CTRL_SIZE, align 4
  %35 = icmp sgt i32 %33, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %32, %29
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %6, align 4
  br label %110

39:                                               ; preds = %32
  %40 = load i32, i32* %11, align 4
  switch i32 %40, label %49 [
    i32 1, label %41
    i32 2, label %43
    i32 3, label %45
    i32 4, label %47
  ]

41:                                               ; preds = %39
  %42 = load i32, i32* @ENABLE_ONE_BYTE, align 4
  store i32 %42, i32* %12, align 4
  br label %50

43:                                               ; preds = %39
  %44 = load i32, i32* @ENABLE_TWE_BYTE, align 4
  store i32 %44, i32* %12, align 4
  br label %50

45:                                               ; preds = %39
  %46 = load i32, i32* @ENABLE_THREE_BYTE, align 4
  store i32 %46, i32* %12, align 4
  br label %50

47:                                               ; preds = %39
  %48 = load i32, i32* @ENABLE_FOUR_BYTE, align 4
  store i32 %48, i32* %12, align 4
  br label %50

49:                                               ; preds = %39
  store i32 255, i32* %12, align 4
  br label %50

50:                                               ; preds = %49, %47, %45, %43, %41
  %51 = load i32, i32* %12, align 4
  %52 = icmp eq i32 %51, 255
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* @EINVAL, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %6, align 4
  br label %110

56:                                               ; preds = %50
  %57 = load i64, i64* @reg_debug, align 8
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %94

59:                                               ; preds = %56
  %60 = load i32, i32* %14, align 4
  %61 = load i32, i32* @USB_DIR_OUT, align 4
  %62 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %65 = or i32 %63, %64
  %66 = load i32, i32* %8, align 4
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %9, align 4
  %69 = and i32 %68, 255
  %70 = load i32, i32* %9, align 4
  %71 = ashr i32 %70, 8
  %72 = load i32, i32* %11, align 4
  %73 = and i32 %72, 255
  %74 = load i32, i32* %11, align 4
  %75 = ashr i32 %74, 8
  %76 = call i32 (i8*, ...) @cx231xx_isocdbg(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %65, i32 %66, i32 0, i32 %67, i32 %69, i32 %71, i32 %73, i32 %75)
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %89, %59
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %11, align 4
  %80 = icmp slt i32 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %77
  %82 = load i8*, i8** %10, align 8
  %83 = load i32, i32* %15, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i8, i8* %82, i64 %84
  %86 = load i8, i8* %85, align 1
  %87 = zext i8 %86 to i32
  %88 = call i32 (i8*, ...) @cx231xx_isocdbg(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i32 %87)
  br label %89

89:                                               ; preds = %81
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %77

92:                                               ; preds = %77
  %93 = call i32 (i8*, ...) @cx231xx_isocdbg(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  br label %94

94:                                               ; preds = %92, %56
  %95 = load %struct.cx231xx*, %struct.cx231xx** %7, align 8
  %96 = load i32, i32* %14, align 4
  %97 = load i32, i32* %8, align 4
  %98 = load i32, i32* @USB_DIR_OUT, align 4
  %99 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %100 = or i32 %98, %99
  %101 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %102 = or i32 %100, %101
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %9, align 4
  %105 = load i8*, i8** %10, align 8
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* @HZ, align 4
  %108 = call i32 @__usb_control_msg(%struct.cx231xx* %95, i32 %96, i32 %97, i32 %102, i32 %103, i32 %104, i8* %105, i32 %106, i32 %107)
  store i32 %108, i32* %13, align 4
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %94, %53, %36, %26
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @cx231xx_isocdbg(i8*, ...) #1

declare dso_local i32 @__usb_control_msg(%struct.cx231xx*, i32, i32, i32, i32, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
