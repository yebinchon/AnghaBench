; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_fpga_download.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_dabusb.c_dabusb_fpga_download.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_15__ = type { i32, i32*, i32 }
%struct.firmware = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Enter dabusb_fpga_download (internal)\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"kmalloc(sizeof(bulk_transfer_t))==NULL\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [21 x i8] c"dabusb/bitstream.bin\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Failed to load \22dabusb/bitstream.bin\22: %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"Bitstream len: %i\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"dabusb_bulk failed.\0A\00", align 1
@.str.6 = private unnamed_addr constant [26 x i8] c"exit dabusb_fpga_download\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, i8*)* @dabusb_fpga_download to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dabusb_fpga_download(%struct.TYPE_14__* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.TYPE_15__*, align 8
  %7 = alloca %struct.firmware*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call %struct.TYPE_15__* @kmalloc(i32 4, i32 %11)
  store %struct.TYPE_15__* %12, %struct.TYPE_15__** %6, align 8
  %13 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %15 = icmp ne %struct.TYPE_15__* %14, null
  br i1 %15, label %24, label %16

16:                                               ; preds = %2
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %19, i32 0, i32 0
  %21 = call i32 (i32*, i8*, ...) @dev_err(i32* %20, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %125

24:                                               ; preds = %2
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 0
  %27 = load %struct.TYPE_13__*, %struct.TYPE_13__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = call i32 @request_firmware(%struct.firmware** %7, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32* %28)
  store i32 %29, i32* %10, align 4
  %30 = load i32, i32* %10, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %24
  %33 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_13__*, %struct.TYPE_13__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %35, i32 0, i32 0
  %37 = load i32, i32* %10, align 4
  %38 = call i32 (i32*, i8*, ...) @dev_err(i32* %36, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %37)
  %39 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %40 = call i32 @kfree(%struct.TYPE_15__* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %3, align 4
  br label %125

42:                                               ; preds = %24
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 8
  %45 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %47 = call i32 @dabusb_fpga_clear(%struct.TYPE_14__* %45, %struct.TYPE_15__* %46)
  store i32 %47, i32* %10, align 4
  %48 = call i32 @mdelay(i32 10)
  %49 = load %struct.firmware*, %struct.firmware** %7, align 8
  %50 = getelementptr inbounds %struct.firmware, %struct.firmware* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 73
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.firmware*, %struct.firmware** %7, align 8
  %55 = getelementptr inbounds %struct.firmware, %struct.firmware* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 72
  %58 = load i32, i32* %57, align 4
  %59 = shl i32 %58, 8
  %60 = add nsw i32 %53, %59
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %8, align 4
  %62 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %61)
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  store i32 43, i32* %66, align 4
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 1
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 0, i32* %70, align 4
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 1
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 2
  store i32 0, i32* %74, align 4
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 3
  store i32 60, i32* %78, align 4
  store i32 0, i32* %9, align 4
  br label %79

79:                                               ; preds = %112, %42
  %80 = load i32, i32* %9, align 4
  %81 = load i32, i32* %8, align 4
  %82 = add i32 %81, 60
  %83 = icmp ule i32 %80, %82
  br i1 %83, label %84, label %115

84:                                               ; preds = %79
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 2
  store i32 64, i32* %86, align 8
  %87 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 1
  %89 = load i32*, i32** %88, align 8
  %90 = getelementptr inbounds i32, i32* %89, i64 4
  %91 = load %struct.firmware*, %struct.firmware** %7, align 8
  %92 = getelementptr inbounds %struct.firmware, %struct.firmware* %91, i32 0, i32 0
  %93 = load i32*, i32** %92, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 74
  %95 = load i32, i32* %9, align 4
  %96 = zext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  %98 = call i32 @memcpy(i32* %90, i32* %97, i32 60)
  %99 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %101 = call i32 @dabusb_bulk(%struct.TYPE_14__* %99, %struct.TYPE_15__* %100)
  store i32 %101, i32* %10, align 4
  %102 = load i32, i32* %10, align 4
  %103 = icmp slt i32 %102, 0
  br i1 %103, label %104, label %110

104:                                              ; preds = %84
  %105 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %105, i32 0, i32 0
  %107 = load %struct.TYPE_13__*, %struct.TYPE_13__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 0
  %109 = call i32 (i32*, i8*, ...) @dev_err(i32* %108, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0))
  br label %115

110:                                              ; preds = %84
  %111 = call i32 @mdelay(i32 1)
  br label %112

112:                                              ; preds = %110
  %113 = load i32, i32* %9, align 4
  %114 = add i32 %113, 60
  store i32 %114, i32* %9, align 4
  br label %79

115:                                              ; preds = %104, %79
  %116 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %117 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %118 = call i32 @dabusb_fpga_init(%struct.TYPE_14__* %116, %struct.TYPE_15__* %117)
  store i32 %118, i32* %10, align 4
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %6, align 8
  %120 = call i32 @kfree(%struct.TYPE_15__* %119)
  %121 = load %struct.firmware*, %struct.firmware** %7, align 8
  %122 = call i32 @release_firmware(%struct.firmware* %121)
  %123 = call i32 (i8*, ...) @dbg(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* %10, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %115, %32, %16
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local %struct.TYPE_15__* @kmalloc(i32, i32) #1

declare dso_local i32 @dbg(i8*, ...) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @kfree(%struct.TYPE_15__*) #1

declare dso_local i32 @dabusb_fpga_clear(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @dabusb_bulk(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @dabusb_fpga_init(%struct.TYPE_14__*, %struct.TYPE_15__*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
