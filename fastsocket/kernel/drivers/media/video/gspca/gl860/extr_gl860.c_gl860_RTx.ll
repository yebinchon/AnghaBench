; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_gl860_RTx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/gl860/extr_gl860.c_gl860_RTx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i8*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"ctrl transfer failed %4d [p%02x r%d v%04x i%04x len%d]\00", align 1
@D_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"short ctrl transfer %d/%d\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gl860_RTx(%struct.gspca_dev* %0, i8 zeroext %1, i32 %2, i32 %3, i32 %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.gspca_dev*, align 8
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca %struct.usb_device*, align 8
  %16 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %8, align 8
  store i8 %1, i8* %9, align 1
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 1
  %19 = load %struct.usb_device*, %struct.usb_device** %18, align 8
  store %struct.usb_device* %19, %struct.usb_device** %15, align 8
  store i32 0, i32* %16, align 4
  %20 = load i8, i8* %9, align 1
  %21 = zext i8 %20 to i32
  %22 = icmp eq i32 %21, 64
  br i1 %22, label %23, label %61

23:                                               ; preds = %7
  %24 = load i32, i32* %13, align 4
  %25 = icmp sgt i32 %24, 0
  br i1 %25, label %26, label %50

26:                                               ; preds = %23
  %27 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %28 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %27, i32 0, i32 0
  %29 = load i8*, i8** %28, align 8
  %30 = load i8*, i8** %14, align 8
  %31 = load i32, i32* %13, align 4
  %32 = call i32 @memcpy(i8* %29, i8* %30, i32 %31)
  %33 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %34 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %35 = call i32 @usb_sndctrlpipe(%struct.usb_device* %34, i32 0)
  %36 = load i32, i32* %10, align 4
  %37 = load i8, i8* %9, align 1
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %12, align 4
  %40 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %41 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %40, i32 0, i32 0
  %42 = load i8*, i8** %41, align 8
  %43 = load i32, i32* %13, align 4
  %44 = load i32, i32* %13, align 4
  %45 = icmp sgt i32 %44, 1
  %46 = zext i1 %45 to i32
  %47 = mul nsw i32 200, %46
  %48 = add nsw i32 400, %47
  %49 = call i32 @usb_control_msg(%struct.usb_device* %33, i32 %35, i32 %36, i8 zeroext %37, i32 %38, i32 %39, i8* %42, i32 %43, i32 %48)
  store i32 %49, i32* %16, align 4
  br label %60

50:                                               ; preds = %23
  %51 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %53 = call i32 @usb_sndctrlpipe(%struct.usb_device* %52, i32 0)
  %54 = load i32, i32* %10, align 4
  %55 = load i8, i8* %9, align 1
  %56 = load i32, i32* %11, align 4
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* %13, align 4
  %59 = call i32 @usb_control_msg(%struct.usb_device* %51, i32 %53, i32 %54, i8 zeroext %55, i32 %56, i32 %57, i8* null, i32 %58, i32 400)
  store i32 %59, i32* %16, align 4
  br label %60

60:                                               ; preds = %50, %26
  br label %99

61:                                               ; preds = %7
  %62 = load i32, i32* %13, align 4
  %63 = icmp sgt i32 %62, 0
  br i1 %63, label %64, label %88

64:                                               ; preds = %61
  %65 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %66 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %67 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %66, i32 0)
  %68 = load i32, i32* %10, align 4
  %69 = load i8, i8* %9, align 1
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %73 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %72, i32 0, i32 0
  %74 = load i8*, i8** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = load i32, i32* %13, align 4
  %77 = icmp sgt i32 %76, 1
  %78 = zext i1 %77 to i32
  %79 = mul nsw i32 200, %78
  %80 = add nsw i32 400, %79
  %81 = call i32 @usb_control_msg(%struct.usb_device* %65, i32 %67, i32 %68, i8 zeroext %69, i32 %70, i32 %71, i8* %74, i32 %75, i32 %80)
  store i32 %81, i32* %16, align 4
  %82 = load i8*, i8** %14, align 8
  %83 = load %struct.gspca_dev*, %struct.gspca_dev** %8, align 8
  %84 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %83, i32 0, i32 0
  %85 = load i8*, i8** %84, align 8
  %86 = load i32, i32* %13, align 4
  %87 = call i32 @memcpy(i8* %82, i8* %85, i32 %86)
  br label %98

88:                                               ; preds = %61
  %89 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %90 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  %91 = call i32 @usb_rcvctrlpipe(%struct.usb_device* %90, i32 0)
  %92 = load i32, i32* %10, align 4
  %93 = load i8, i8* %9, align 1
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = load i32, i32* %13, align 4
  %97 = call i32 @usb_control_msg(%struct.usb_device* %89, i32 %91, i32 %92, i8 zeroext %93, i32 %94, i32 %95, i8* null, i32 %96, i32 400)
  store i32 %97, i32* %16, align 4
  br label %98

98:                                               ; preds = %88, %64
  br label %99

99:                                               ; preds = %98, %60
  %100 = load i32, i32* %16, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %99
  %103 = load i32, i32* %16, align 4
  %104 = load i8, i8* %9, align 1
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %11, align 4
  %107 = load i32, i32* %12, align 4
  %108 = load i32, i32* %13, align 4
  %109 = call i32 @err(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %103, i8 zeroext %104, i32 %105, i32 %106, i32 %107, i32 %108)
  br label %123

110:                                              ; preds = %99
  %111 = load i32, i32* %13, align 4
  %112 = icmp sgt i32 %111, 1
  br i1 %112, label %113, label %122

113:                                              ; preds = %110
  %114 = load i32, i32* %16, align 4
  %115 = load i32, i32* %13, align 4
  %116 = icmp slt i32 %114, %115
  br i1 %116, label %117, label %122

117:                                              ; preds = %113
  %118 = load i32, i32* @D_ERR, align 4
  %119 = load i32, i32* %16, align 4
  %120 = load i32, i32* %13, align 4
  %121 = call i32 @PDEBUG(i32 %118, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %120)
  br label %122

122:                                              ; preds = %117, %113, %110
  br label %123

123:                                              ; preds = %122, %102
  %124 = call i32 @msleep(i32 1)
  %125 = load i32, i32* %16, align 4
  ret i32 %125
}

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i8 zeroext, i32, i32, i8*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @err(i8*, i32, i8 zeroext, i32, i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
