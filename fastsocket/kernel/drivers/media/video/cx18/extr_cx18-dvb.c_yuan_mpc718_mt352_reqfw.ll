; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-dvb.c_yuan_mpc718_mt352_reqfw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx18/extr_cx18-dvb.c_yuan_mpc718_mt352_reqfw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx18_stream = type { %struct.cx18* }
%struct.cx18 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"dvb-cx18-mpc718-mt352.fw\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"Unable to open firmware file %s\0A\00", align 1
@.str.2 = private unnamed_addr constant [39 x i8] c"Firmware %s has a bad size: %lu bytes\0A\00", align 1
@EILSEQ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [83 x i8] c"The MPC718 board variant with the MT352 DVB-Tdemodualtor will not work without it\0A\00", align 1
@.str.4 = private unnamed_addr constant [80 x i8] c"Run 'linux/Documentation/dvb/get_dvb_firmware mpc718' if you need the firmware\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cx18_stream*, %struct.firmware**)* @yuan_mpc718_mt352_reqfw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @yuan_mpc718_mt352_reqfw(%struct.cx18_stream* %0, %struct.firmware** %1) #0 {
  %3 = alloca %struct.cx18_stream*, align 8
  %4 = alloca %struct.firmware**, align 8
  %5 = alloca %struct.cx18*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.cx18_stream* %0, %struct.cx18_stream** %3, align 8
  store %struct.firmware** %1, %struct.firmware*** %4, align 8
  %9 = load %struct.cx18_stream*, %struct.cx18_stream** %3, align 8
  %10 = getelementptr inbounds %struct.cx18_stream, %struct.cx18_stream* %9, i32 0, i32 0
  %11 = load %struct.cx18*, %struct.cx18** %10, align 8
  store %struct.cx18* %11, %struct.cx18** %5, align 8
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i8** %6, align 8
  %12 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load %struct.cx18*, %struct.cx18** %5, align 8
  %15 = getelementptr inbounds %struct.cx18, %struct.cx18* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @request_firmware(%struct.firmware** %12, i8* %13, i32* %17)
  store i32 %18, i32* %7, align 4
  %19 = load i32, i32* %7, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %2
  %22 = load i8*, i8** %6, align 8
  %23 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i8* %22)
  br label %49

24:                                               ; preds = %2
  %25 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %26 = load %struct.firmware*, %struct.firmware** %25, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  store i64 %28, i64* %8, align 8
  %29 = load i64, i64* %8, align 8
  %30 = icmp ult i64 %29, 2
  br i1 %30, label %38, label %31

31:                                               ; preds = %24
  %32 = load i64, i64* %8, align 8
  %33 = icmp ugt i64 %32, 64
  br i1 %33, label %38, label %34

34:                                               ; preds = %31
  %35 = load i64, i64* %8, align 8
  %36 = urem i64 %35, 2
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %48

38:                                               ; preds = %34, %31, %24
  %39 = load i8*, i8** %6, align 8
  %40 = load i64, i64* %8, align 8
  %41 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0), i8* %39, i64 %40)
  %42 = load i32, i32* @EILSEQ, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %7, align 4
  %44 = load %struct.firmware**, %struct.firmware*** %4, align 8
  %45 = load %struct.firmware*, %struct.firmware** %44, align 8
  %46 = call i32 @release_firmware(%struct.firmware* %45)
  %47 = load %struct.firmware**, %struct.firmware*** %4, align 8
  store %struct.firmware* null, %struct.firmware** %47, align 8
  br label %48

48:                                               ; preds = %38, %34
  br label %49

49:                                               ; preds = %48, %21
  %50 = load i32, i32* %7, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.3, i64 0, i64 0))
  %54 = call i32 (i8*, ...) @CX18_ERR(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.4, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %49
  %56 = load i32, i32* %7, align 4
  ret i32 %56
}

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @CX18_ERR(i8*, ...) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
