; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_download_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_af9005.c_af9005_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { i32 }
%struct.firmware = type { i32, i64 }

@FW_BULKOUT_SIZE = common dso_local global i32 0, align 4
@FW_CONFIG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"before downloading firmware, FW_CONFIG expected 0x01, received 0x%x\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c">>> \00", align 1
@.str.2 = private unnamed_addr constant [51 x i8] c"firmware download failed at packet %d with code %d\00", align 1
@FW_CONFIRM = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [68 x i8] c"after downloading firmware, FW_CONFIRM expected 0x%x, received 0x%x\00", align 1
@FW_BOOT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [67 x i8] c"after downloading firmware, FW_CONFIG expected 0x02, received 0x%x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_device*, %struct.firmware*)* @af9005_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @af9005_download_firmware(%struct.usb_device* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_device*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %14 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %15 = add nsw i32 %14, 2
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %10, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %11, align 8
  %19 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %20 = load i32, i32* @FW_CONFIG, align 4
  %21 = call i32 @af9005_boot_packet(%struct.usb_device* %19, i32 %20, i32* %12)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* %8, align 4
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

26:                                               ; preds = %2
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 1
  br i1 %28, label %29, label %34

29:                                               ; preds = %26
  %30 = load i32, i32* %12, align 4
  %31 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

34:                                               ; preds = %26
  %35 = load %struct.firmware*, %struct.firmware** %5, align 8
  %36 = getelementptr inbounds %struct.firmware, %struct.firmware* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %39 = sdiv i32 %37, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %41 = and i32 %40, 255
  %42 = getelementptr inbounds i32, i32* %18, i64 0
  store i32 %41, i32* %42, align 16
  %43 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %44 = ashr i32 %43, 8
  %45 = and i32 %44, 255
  %46 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 %45, i32* %46, align 4
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %81, %34
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp slt i32 %48, %49
  br i1 %50, label %51, label %84

51:                                               ; preds = %47
  %52 = getelementptr inbounds i32, i32* %18, i64 2
  %53 = load %struct.firmware*, %struct.firmware** %5, align 8
  %54 = getelementptr inbounds %struct.firmware, %struct.firmware* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %58 = mul nsw i32 %56, %57
  %59 = sext i32 %58 to i64
  %60 = add nsw i64 %55, %59
  %61 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %62 = call i32 @memcpy(i32* %52, i64 %60, i32 %61)
  %63 = call i32 @deb_fw(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %65 = add nsw i32 %64, 2
  %66 = call i32 @debug_dump(i32* %18, i32 %65, i32 (i8*)* @deb_fw)
  %67 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %68 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %69 = call i32 @usb_sndbulkpipe(%struct.usb_device* %68, i32 2)
  %70 = load i32, i32* @FW_BULKOUT_SIZE, align 4
  %71 = add nsw i32 %70, 2
  %72 = call i32 @usb_bulk_msg(%struct.usb_device* %67, i32 %69, i32* %18, i32 %71, i32* %9, i32 1000)
  store i32 %72, i32* %8, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %51
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  %79 = load i32, i32* %8, align 4
  store i32 %79, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

80:                                               ; preds = %51
  br label %81

81:                                               ; preds = %80
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %47

84:                                               ; preds = %47
  %85 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %86 = load i32, i32* @FW_CONFIRM, align 4
  %87 = call i32 @af9005_boot_packet(%struct.usb_device* %85, i32 %86, i32* %12)
  store i32 %87, i32* %8, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %84
  %91 = load i32, i32* %8, align 4
  store i32 %91, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

92:                                               ; preds = %84
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %7, align 4
  %95 = and i32 %94, 255
  %96 = icmp ne i32 %93, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %92
  %98 = load i32, i32* %7, align 4
  %99 = and i32 %98, 255
  %100 = load i32, i32* %12, align 4
  %101 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.3, i64 0, i64 0), i32 %99, i32 %100)
  %102 = load i32, i32* @EIO, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

104:                                              ; preds = %92
  %105 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %106 = load i32, i32* @FW_BOOT, align 4
  %107 = call i32 @af9005_boot_packet(%struct.usb_device* %105, i32 %106, i32* %12)
  store i32 %107, i32* %8, align 4
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %112

110:                                              ; preds = %104
  %111 = load i32, i32* %8, align 4
  store i32 %111, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

112:                                              ; preds = %104
  %113 = load %struct.usb_device*, %struct.usb_device** %4, align 8
  %114 = load i32, i32* @FW_CONFIG, align 4
  %115 = call i32 @af9005_boot_packet(%struct.usb_device* %113, i32 %114, i32* %12)
  store i32 %115, i32* %8, align 4
  %116 = load i32, i32* %8, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %112
  %119 = load i32, i32* %8, align 4
  store i32 %119, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

120:                                              ; preds = %112
  %121 = load i32, i32* %12, align 4
  %122 = icmp ne i32 %121, 2
  br i1 %122, label %123, label %128

123:                                              ; preds = %120
  %124 = load i32, i32* %12, align 4
  %125 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.4, i64 0, i64 0), i32 %124)
  %126 = load i32, i32* @EIO, align 4
  %127 = sub nsw i32 0, %126
  store i32 %127, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

128:                                              ; preds = %120
  store i32 0, i32* %3, align 4
  store i32 1, i32* %13, align 4
  br label %129

129:                                              ; preds = %128, %123, %118, %110, %97, %90, %75, %29, %24
  %130 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %130)
  %131 = load i32, i32* %3, align 4
  ret i32 %131
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @af9005_boot_packet(%struct.usb_device*, i32, i32*) #2

declare dso_local i32 @err(i8*, i32, ...) #2

declare dso_local i32 @memcpy(i32*, i64, i32) #2

declare dso_local i32 @deb_fw(i8*) #2

declare dso_local i32 @debug_dump(i32*, i32, i32 (i8*)*) #2

declare dso_local i32 @usb_bulk_msg(%struct.usb_device*, i32, i32*, i32, i32*, i32) #2

declare dso_local i32 @usb_sndbulkpipe(%struct.usb_device*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
