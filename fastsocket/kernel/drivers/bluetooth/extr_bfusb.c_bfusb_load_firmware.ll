; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_load_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bluetooth/extr_bfusb.c_bfusb_load_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfusb_data = type { %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { i64* }

@.str = private unnamed_addr constant [17 x i8] c"bfusb %p udev %p\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"BlueFRITZ! USB loading firmware\00", align 1
@USB_REQ_SET_CONFIGURATION = common dso_local global i32 0, align 4
@USB_CTRL_SET_TIMEOUT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"Can't change to loading configuration\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@BFUSB_MAX_BLOCK_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [41 x i8] c"Can't allocate memory chunk for firmware\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@uint = common dso_local global i32 0, align 4
@BFUSB_BLOCK_TIMEOUT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [26 x i8] c"Error in firmware loading\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Error in null packet request\00", align 1
@.str.6 = private unnamed_addr constant [38 x i8] c"Can't change to running configuration\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"BlueFRITZ! USB device ready\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfusb_data*, i8*, i32)* @bfusb_load_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfusb_load_firmware(%struct.bfusb_data* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfusb_data*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.bfusb_data* %0, %struct.bfusb_data** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %13, align 4
  %14 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %15 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %16 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  %18 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.bfusb_data* %14, %struct.TYPE_6__* %17)
  %19 = call i32 @BT_INFO(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %21 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %22, i32 0)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %25 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %10, align 4
  %28 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %29 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %30 = call i32 @usb_control_msg(%struct.TYPE_6__* %26, i32 %27, i32 %28, i32 0, i32 1, i32 0, i32* null, i32 0, i32 %29)
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %3
  %33 = call i32 @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %34 = load i32, i32* @EBUSY, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %164

36:                                               ; preds = %3
  %37 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %38 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64*, i64** %40, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 1
  store i64 0, i64* %42, align 8
  %43 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %44 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %43, i32 0, i32 0
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i64*, i64** %46, align 8
  %48 = getelementptr inbounds i64, i64* %47, i64 0
  store i64 0, i64* %48, align 8
  %49 = load i64, i64* @BFUSB_MAX_BLOCK_SIZE, align 8
  %50 = add nsw i64 %49, 3
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call i8* @kmalloc(i64 %50, i32 %51)
  store i8* %52, i8** %8, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = icmp ne i8* %53, null
  br i1 %54, label %59, label %55

55:                                               ; preds = %36
  %56 = call i32 @BT_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.3, i64 0, i64 0))
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %164

59:                                               ; preds = %36
  %60 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %61 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  %63 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %64 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @usb_sndbulkpipe(%struct.TYPE_6__* %62, i32 %65)
  store i32 %66, i32* %10, align 4
  br label %67

67:                                               ; preds = %99, %59
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %106

70:                                               ; preds = %67
  %71 = load i32, i32* @uint, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i64, i64* @BFUSB_MAX_BLOCK_SIZE, align 8
  %74 = add nsw i64 %73, 3
  %75 = call i32 @min_t(i32 %71, i32 %72, i64 %74)
  store i32 %75, i32* %12, align 4
  %76 = load i8*, i8** %8, align 8
  %77 = load i8*, i8** %6, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i8, i8* %77, i64 %79
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @memcpy(i8* %76, i8* %80, i32 %81)
  %83 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %84 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %83, i32 0, i32 0
  %85 = load %struct.TYPE_6__*, %struct.TYPE_6__** %84, align 8
  %86 = load i32, i32* %10, align 4
  %87 = load i8*, i8** %8, align 8
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* @BFUSB_BLOCK_TIMEOUT, align 4
  %90 = call i32 @usb_bulk_msg(%struct.TYPE_6__* %85, i32 %86, i8* %87, i32 %88, i32* %11, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load i32, i32* %9, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %70
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %99

97:                                               ; preds = %93, %70
  %98 = call i32 @BT_ERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.4, i64 0, i64 0))
  br label %149

99:                                               ; preds = %93
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %13, align 4
  %102 = add nsw i32 %101, %100
  store i32 %102, i32* %13, align 4
  %103 = load i32, i32* %12, align 4
  %104 = load i32, i32* %7, align 4
  %105 = sub nsw i32 %104, %103
  store i32 %105, i32* %7, align 4
  br label %67

106:                                              ; preds = %67
  %107 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %108 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %107, i32 0, i32 0
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %108, align 8
  %110 = load i32, i32* %10, align 4
  %111 = load i32, i32* @BFUSB_BLOCK_TIMEOUT, align 4
  %112 = call i32 @usb_bulk_msg(%struct.TYPE_6__* %109, i32 %110, i8* null, i32 0, i32* %11, i32 %111)
  store i32 %112, i32* %9, align 4
  %113 = load i32, i32* %9, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %117

115:                                              ; preds = %106
  %116 = call i32 @BT_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0))
  br label %149

117:                                              ; preds = %106
  %118 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %119 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_6__*, %struct.TYPE_6__** %119, align 8
  %121 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %120, i32 0)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %123 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %122, i32 0, i32 0
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %123, align 8
  %125 = load i32, i32* %10, align 4
  %126 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %127 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %128 = call i32 @usb_control_msg(%struct.TYPE_6__* %124, i32 %125, i32 %126, i32 0, i32 2, i32 0, i32* null, i32 0, i32 %127)
  store i32 %128, i32* %9, align 4
  %129 = load i32, i32* %9, align 4
  %130 = icmp slt i32 %129, 0
  br i1 %130, label %131, label %133

131:                                              ; preds = %117
  %132 = call i32 @BT_ERR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.6, i64 0, i64 0))
  br label %149

133:                                              ; preds = %117
  %134 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %135 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %134, i32 0, i32 0
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load i64*, i64** %137, align 8
  %139 = getelementptr inbounds i64, i64* %138, i64 1
  store i64 0, i64* %139, align 8
  %140 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %141 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %140, i32 0, i32 0
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 0
  %144 = load i64*, i64** %143, align 8
  %145 = getelementptr inbounds i64, i64* %144, i64 0
  store i64 0, i64* %145, align 8
  %146 = call i32 @BT_INFO(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0))
  %147 = load i8*, i8** %8, align 8
  %148 = call i32 @kfree(i8* %147)
  store i32 0, i32* %4, align 4
  br label %164

149:                                              ; preds = %131, %115, %97
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @kfree(i8* %150)
  %152 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %153 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %152, i32 0, i32 0
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = call i32 @usb_sndctrlpipe(%struct.TYPE_6__* %154, i32 0)
  store i32 %155, i32* %10, align 4
  %156 = load %struct.bfusb_data*, %struct.bfusb_data** %5, align 8
  %157 = getelementptr inbounds %struct.bfusb_data, %struct.bfusb_data* %156, i32 0, i32 0
  %158 = load %struct.TYPE_6__*, %struct.TYPE_6__** %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = load i32, i32* @USB_REQ_SET_CONFIGURATION, align 4
  %161 = load i32, i32* @USB_CTRL_SET_TIMEOUT, align 4
  %162 = call i32 @usb_control_msg(%struct.TYPE_6__* %158, i32 %159, i32 %160, i32 0, i32 0, i32 0, i32* null, i32 0, i32 %161)
  %163 = load i32, i32* %9, align 4
  store i32 %163, i32* %4, align 4
  br label %164

164:                                              ; preds = %149, %133, %55, %32
  %165 = load i32, i32* %4, align 4
  ret i32 %165
}

declare dso_local i32 @BT_DBG(i8*, %struct.bfusb_data*, %struct.TYPE_6__*) #1

declare dso_local i32 @BT_INFO(i8*) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @usb_control_msg(%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @BT_ERR(i8*) #1

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @usb_sndbulkpipe(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @min_t(i32, i32, i64) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @usb_bulk_msg(%struct.TYPE_6__*, i32, i8*, i32, i32*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
