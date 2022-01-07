; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_set_value.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/gigaset/extr_usb-gigaset.c_set_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardstate = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32*, %struct.usb_device* }
%struct.usb_device = type { i32 }

@DEBUG_USBREQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"request %02x (%04x)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"error %d on request 0x12\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"error %d on request 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"error %d on request 0x19\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cardstate*, i32, i32)* @set_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_value(%struct.cardstate* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cardstate*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.usb_device*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.cardstate* %0, %struct.cardstate** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %12 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 1
  %16 = load %struct.usb_device*, %struct.usb_device** %15, align 8
  store %struct.usb_device* %16, %struct.usb_device** %8, align 8
  %17 = load i32, i32* @DEBUG_USBREQ, align 4
  %18 = load i32, i32* %6, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @gig_dbg(i32 %17, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %19)
  %21 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %22 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %23 = call i32 @usb_sndctrlpipe(%struct.usb_device* %22, i32 0)
  %24 = call i32 @usb_control_msg(%struct.usb_device* %21, i32 %23, i32 18, i32 65, i32 15, i32 0, i32* null, i32 0, i32 2000)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %3
  %28 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %29 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %28, i32 0, i32 0
  %30 = load i32, i32* %9, align 4
  %31 = sub nsw i32 0, %30
  %32 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %31)
  %33 = load i32, i32* %9, align 4
  store i32 %33, i32* %4, align 4
  br label %84

34:                                               ; preds = %3
  %35 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %36 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %37 = call i32 @usb_sndctrlpipe(%struct.usb_device* %36, i32 0)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @usb_control_msg(%struct.usb_device* %35, i32 %37, i32 %38, i32 65, i32 %39, i32 0, i32* null, i32 0, i32 2000)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %34
  %44 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %45 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %44, i32 0, i32 0
  %46 = load i32, i32* %9, align 4
  %47 = sub nsw i32 0, %46
  %48 = load i32, i32* %6, align 4
  %49 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %45, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0), i32 %47, i32 %48)
  br label %50

50:                                               ; preds = %43, %34
  %51 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %52 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %53 = call i32 @usb_sndctrlpipe(%struct.usb_device* %52, i32 0)
  %54 = load %struct.cardstate*, %struct.cardstate** %5, align 8
  %55 = getelementptr inbounds %struct.cardstate, %struct.cardstate* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @usb_control_msg(%struct.usb_device* %51, i32 %53, i32 25, i32 65, i32 0, i32 0, i32* %59, i32 6, i32 2000)
  store i32 %60, i32* %10, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %69

63:                                               ; preds = %50
  %64 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  %65 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %64, i32 0, i32 0
  %66 = load i32, i32* %10, align 4
  %67 = sub nsw i32 0, %66
  %68 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %65, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0), i32 %67)
  br label %69

69:                                               ; preds = %63, %50
  %70 = load i32, i32* %9, align 4
  %71 = icmp slt i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %69
  %73 = load i32, i32* %9, align 4
  br label %82

74:                                               ; preds = %69
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %74
  %78 = load i32, i32* %10, align 4
  br label %80

79:                                               ; preds = %74
  br label %80

80:                                               ; preds = %79, %77
  %81 = phi i32 [ %78, %77 ], [ 0, %79 ]
  br label %82

82:                                               ; preds = %80, %72
  %83 = phi i32 [ %73, %72 ], [ %81, %80 ]
  store i32 %83, i32* %4, align 4
  br label %84

84:                                               ; preds = %82, %27
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local i32 @gig_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @usb_control_msg(%struct.usb_device*, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(%struct.usb_device*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
