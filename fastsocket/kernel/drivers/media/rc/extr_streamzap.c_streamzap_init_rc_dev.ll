; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_streamzap_init_rc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_streamzap_init_rc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { i32, i32, i32, i32, %struct.streamzap_ir*, %struct.TYPE_6__, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.streamzap_ir = type { %struct.TYPE_7__*, i32, i32, %struct.device* }
%struct.TYPE_7__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"remote dev allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [50 x i8] c"Streamzap PC Remote Infrared Receiver (%04x:%04x)\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"/input0\00", align 1
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_TYPE_ALL = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_STREAMZAP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [37 x i8] c"remote input device register failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.streamzap_ir*)* @streamzap_init_rc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @streamzap_init_rc_dev(%struct.streamzap_ir* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca %struct.rc_dev*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  %7 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %8 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %7, i32 0, i32 3
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %5, align 8
  %10 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %10, %struct.rc_dev** %4, align 8
  %11 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %12 = icmp ne %struct.rc_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %90

16:                                               ; preds = %1
  %17 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %18 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %21 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %20, i32 0, i32 0
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @le16_to_cpu(i32 %25)
  %27 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %28 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.1, i64 0, i64 0), i32 %26, i32 %33)
  %35 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %36 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %35, i32 0, i32 0
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %39 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @usb_make_path(%struct.TYPE_7__* %37, i32 %40, i32 4)
  %42 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %43 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @strlcat(i32 %44, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 4)
  %46 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %47 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %50 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %49, i32 0, i32 8
  store i32 %48, i32* %50, align 8
  %51 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %52 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %54, i32 0, i32 7
  store i32 %53, i32* %55, align 4
  %56 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %57 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %56, i32 0, i32 0
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %57, align 8
  %59 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %60 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %59, i32 0, i32 6
  %61 = call i32 @usb_to_input_id(%struct.TYPE_7__* %58, i32* %60)
  %62 = load %struct.device*, %struct.device** %5, align 8
  %63 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %64 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %63, i32 0, i32 5
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 0
  store %struct.device* %62, %struct.device** %65, align 8
  %66 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %67 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %68 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %67, i32 0, i32 4
  store %struct.streamzap_ir* %66, %struct.streamzap_ir** %68, align 8
  %69 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %70 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %71 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %70, i32 0, i32 3
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @RC_TYPE_ALL, align 4
  %73 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %74 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %73, i32 0, i32 2
  store i32 %72, i32* %74, align 8
  %75 = load i32, i32* @DRIVER_NAME, align 4
  %76 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %77 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* @RC_MAP_STREAMZAP, align 4
  %79 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %80 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %82 = call i32 @rc_register_device(%struct.rc_dev* %81)
  store i32 %82, i32* %6, align 4
  %83 = load i32, i32* %6, align 4
  %84 = icmp slt i32 %83, 0
  br i1 %84, label %85, label %88

85:                                               ; preds = %16
  %86 = load %struct.device*, %struct.device** %5, align 8
  %87 = call i32 @dev_err(%struct.device* %86, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0))
  br label %90

88:                                               ; preds = %16
  %89 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  store %struct.rc_dev* %89, %struct.rc_dev** %2, align 8
  br label %93

90:                                               ; preds = %85, %13
  %91 = load %struct.rc_dev*, %struct.rc_dev** %4, align 8
  %92 = call i32 @rc_free_device(%struct.rc_dev* %91)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %93

93:                                               ; preds = %90, %88
  %94 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %94
}

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_7__*, i32, i32) #1

declare dso_local i32 @strlcat(i32, i8*, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_7__*, i32*) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
