; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_download_firmware.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_bcm3510.c_bcm3510_download_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.bcm3510_state* }
%struct.bcm3510_state = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.dvb_frontend*, %struct.firmware**, i32)* }
%struct.firmware = type { i32, i32* }

@.str = private unnamed_addr constant [21 x i8] c"requesting firmware\0A\00", align 1
@BCM3510_DEFAULT_FIRMWARE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"could not load firmware (%s): %d\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"got firmware: %zd\0A\00", align 1
@.str.3 = private unnamed_addr constant [66 x i8] c"firmware chunk, addr: 0x%04x, len: 0x%04x, total length: 0x%04zx\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"firmware download failed: %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"firmware download successfully completed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @bcm3510_download_firmware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcm3510_download_firmware(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.bcm3510_state*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.bcm3510_state*, %struct.bcm3510_state** %12, align 8
  store %struct.bcm3510_state* %13, %struct.bcm3510_state** %4, align 8
  %14 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %15 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %16 = getelementptr inbounds %struct.bcm3510_state, %struct.bcm3510_state* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.dvb_frontend*, %struct.firmware**, i32)*, i32 (%struct.dvb_frontend*, %struct.firmware**, i32)** %18, align 8
  %20 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %21 = load i32, i32* @BCM3510_DEFAULT_FIRMWARE, align 4
  %22 = call i32 %19(%struct.dvb_frontend* %20, %struct.firmware** %5, i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %1
  %25 = load i32, i32* @BCM3510_DEFAULT_FIRMWARE, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %25, i32 %26)
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %2, align 4
  br label %90

29:                                               ; preds = %1
  %30 = load %struct.firmware*, %struct.firmware** %5, align 8
  %31 = getelementptr inbounds %struct.firmware, %struct.firmware* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %32)
  %34 = load %struct.firmware*, %struct.firmware** %5, align 8
  %35 = getelementptr inbounds %struct.firmware, %struct.firmware* %34, i32 0, i32 1
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %8, align 8
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %79, %29
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp slt i32 %38, %41
  br i1 %42, label %43, label %86

43:                                               ; preds = %37
  %44 = load i32*, i32** %8, align 8
  %45 = load i32, i32* %10, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = bitcast i32* %47 to i64*
  %49 = load i64, i64* %48, align 8
  %50 = call i64 @le16_to_cpu(i64 %49)
  store i64 %50, i64* %6, align 8
  %51 = load i32*, i32** %8, align 8
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 %52, 2
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %51, i64 %54
  %56 = bitcast i32* %55 to i64*
  %57 = load i64, i64* %56, align 8
  %58 = call i64 @le16_to_cpu(i64 %57)
  store i64 %58, i64* %7, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %7, align 8
  %61 = load %struct.firmware*, %struct.firmware** %5, align 8
  %62 = getelementptr inbounds %struct.firmware, %struct.firmware* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.3, i64 0, i64 0), i64 %59, i64 %60, i32 %63)
  %65 = load %struct.bcm3510_state*, %struct.bcm3510_state** %4, align 8
  %66 = load i64, i64* %6, align 8
  %67 = load i32*, i32** %8, align 8
  %68 = load i32, i32* %10, align 4
  %69 = add nsw i32 %68, 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds i32, i32* %67, i64 %70
  %72 = load i64, i64* %7, align 8
  %73 = call i32 @bcm3510_write_ram(%struct.bcm3510_state* %65, i64 %66, i32* %71, i64 %72)
  store i32 %73, i32* %9, align 4
  %74 = icmp slt i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %43
  %76 = load i32, i32* %9, align 4
  %77 = call i32 (i8*, i32, ...) @err(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %2, align 4
  br label %90

79:                                               ; preds = %43
  %80 = load i64, i64* %7, align 8
  %81 = add nsw i64 4, %80
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = add nsw i64 %83, %81
  %85 = trunc i64 %84 to i32
  store i32 %85, i32* %10, align 4
  br label %37

86:                                               ; preds = %37
  %87 = load %struct.firmware*, %struct.firmware** %5, align 8
  %88 = call i32 @release_firmware(%struct.firmware* %87)
  %89 = call i32 (i8*, ...) @deb_info(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %90

90:                                               ; preds = %86, %75, %24
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @deb_info(i8*, ...) #1

declare dso_local i32 @err(i8*, i32, ...) #1

declare dso_local i64 @le16_to_cpu(i64) #1

declare dso_local i32 @bcm3510_write_ram(%struct.bcm3510_state*, i64, i32*, i64) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
