; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_init_rc_dev.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_mceusb.c_mceusb_init_rc_dev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i8*, i64 }
%struct.rc_dev = type { i64, i32, i32, i32, i32, i32, i32, i32, %struct.mceusb_dev*, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.device* }
%struct.device = type { i32 }
%struct.mceusb_dev = type { i64, %struct.TYPE_9__, %struct.TYPE_10__*, i32, i32, %struct.device* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_10__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"remote dev allocation failed\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"%s (%04x:%04x)\00", align 1
@mceusb_model = common dso_local global %struct.TYPE_11__* null, align 8
@.str.2 = private unnamed_addr constant [51 x i8] c"Media Center Ed. eHome Infrared Remote Transceiver\00", align 1
@RC_DRIVER_IR_RAW = common dso_local global i32 0, align 4
@RC_TYPE_ALL = common dso_local global i32 0, align 4
@mceusb_set_tx_mask = common dso_local global i32 0, align 4
@mceusb_set_tx_carrier = common dso_local global i32 0, align 4
@mceusb_tx_ir = common dso_local global i32 0, align 4
@DRIVER_NAME = common dso_local global i32 0, align 4
@RC_MAP_RC6_MCE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [32 x i8] c"remote dev registration failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rc_dev* (%struct.mceusb_dev*)* @mceusb_init_rc_dev to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rc_dev* @mceusb_init_rc_dev(%struct.mceusb_dev* %0) #0 {
  %2 = alloca %struct.rc_dev*, align 8
  %3 = alloca %struct.mceusb_dev*, align 8
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.rc_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.mceusb_dev* %0, %struct.mceusb_dev** %3, align 8
  %7 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %8 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %7, i32 0, i32 5
  %9 = load %struct.device*, %struct.device** %8, align 8
  store %struct.device* %9, %struct.device** %4, align 8
  %10 = call %struct.rc_dev* (...) @rc_allocate_device()
  store %struct.rc_dev* %10, %struct.rc_dev** %5, align 8
  %11 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %12 = icmp ne %struct.rc_dev* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %1
  %14 = load %struct.device*, %struct.device** %4, align 8
  %15 = call i32 @dev_err(%struct.device* %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %143

16:                                               ; preds = %1
  %17 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %18 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mceusb_model, align 8
  %21 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %22 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %20, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mceusb_model, align 8
  %30 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %31 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %33, i32 0, i32 0
  %35 = load i8*, i8** %34, align 8
  br label %37

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi i8* [ %35, %28 ], [ getelementptr inbounds ([51 x i8], [51 x i8]* @.str.2, i64 0, i64 0), %36 ]
  %39 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %40 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %39, i32 0, i32 2
  %41 = load %struct.TYPE_10__*, %struct.TYPE_10__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %47 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %46, i32 0, i32 2
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = call i32 @snprintf(i32 %19, i32 4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i8* %38, i32 %45, i32 %52)
  %54 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %55 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %58 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %57, i32 0, i32 3
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @usb_make_path(%struct.TYPE_10__* %56, i32 %59, i32 4)
  %61 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %62 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %64, i32 0, i32 12
  store i32 %63, i32* %65, align 8
  %66 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %67 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %70 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %69, i32 0, i32 11
  store i32 %68, i32* %70, align 4
  %71 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %72 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %71, i32 0, i32 2
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %72, align 8
  %74 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %75 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %74, i32 0, i32 10
  %76 = call i32 @usb_to_input_id(%struct.TYPE_10__* %73, i32* %75)
  %77 = load %struct.device*, %struct.device** %4, align 8
  %78 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %79 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %78, i32 0, i32 9
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  store %struct.device* %77, %struct.device** %80, align 8
  %81 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %82 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %83 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %82, i32 0, i32 8
  store %struct.mceusb_dev* %81, %struct.mceusb_dev** %83, align 8
  %84 = load i32, i32* @RC_DRIVER_IR_RAW, align 4
  %85 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %86 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %85, i32 0, i32 7
  store i32 %84, i32* %86, align 8
  %87 = load i32, i32* @RC_TYPE_ALL, align 4
  %88 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %89 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 4
  %90 = call i32 @US_TO_NS(i32 1000)
  %91 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %92 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %91, i32 0, i32 5
  store i32 %90, i32* %92, align 8
  %93 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %94 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %108, label %98

98:                                               ; preds = %37
  %99 = load i32, i32* @mceusb_set_tx_mask, align 4
  %100 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %101 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %100, i32 0, i32 4
  store i32 %99, i32* %101, align 4
  %102 = load i32, i32* @mceusb_set_tx_carrier, align 4
  %103 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %104 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %103, i32 0, i32 3
  store i32 %102, i32* %104, align 8
  %105 = load i32, i32* @mceusb_tx_ir, align 4
  %106 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %107 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %106, i32 0, i32 2
  store i32 %105, i32* %107, align 4
  br label %108

108:                                              ; preds = %98, %37
  %109 = load i32, i32* @DRIVER_NAME, align 4
  %110 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %111 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %110, i32 0, i32 1
  store i32 %109, i32* %111, align 8
  %112 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mceusb_model, align 8
  %113 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %114 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %112, i64 %115
  %117 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %108
  %121 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mceusb_model, align 8
  %122 = load %struct.mceusb_dev*, %struct.mceusb_dev** %3, align 8
  %123 = getelementptr inbounds %struct.mceusb_dev, %struct.mceusb_dev* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %121, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %125, i32 0, i32 1
  %127 = load i64, i64* %126, align 8
  br label %130

128:                                              ; preds = %108
  %129 = load i64, i64* @RC_MAP_RC6_MCE, align 8
  br label %130

130:                                              ; preds = %128, %120
  %131 = phi i64 [ %127, %120 ], [ %129, %128 ]
  %132 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %133 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %132, i32 0, i32 0
  store i64 %131, i64* %133, align 8
  %134 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %135 = call i32 @rc_register_device(%struct.rc_dev* %134)
  store i32 %135, i32* %6, align 4
  %136 = load i32, i32* %6, align 4
  %137 = icmp slt i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %130
  %139 = load %struct.device*, %struct.device** %4, align 8
  %140 = call i32 @dev_err(%struct.device* %139, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.3, i64 0, i64 0))
  br label %143

141:                                              ; preds = %130
  %142 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  store %struct.rc_dev* %142, %struct.rc_dev** %2, align 8
  br label %146

143:                                              ; preds = %138, %13
  %144 = load %struct.rc_dev*, %struct.rc_dev** %5, align 8
  %145 = call i32 @rc_free_device(%struct.rc_dev* %144)
  store %struct.rc_dev* null, %struct.rc_dev** %2, align 8
  br label %146

146:                                              ; preds = %143, %141
  %147 = load %struct.rc_dev*, %struct.rc_dev** %2, align 8
  ret %struct.rc_dev* %147
}

declare dso_local %struct.rc_dev* @rc_allocate_device(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @usb_make_path(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @usb_to_input_id(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @rc_register_device(%struct.rc_dev*) #1

declare dso_local i32 @rc_free_device(%struct.rc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
