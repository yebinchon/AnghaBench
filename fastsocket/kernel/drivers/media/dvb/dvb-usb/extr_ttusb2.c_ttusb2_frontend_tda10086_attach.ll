; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ttusb2.c_ttusb2_frontend_tda10086_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/dvb-usb/extr_ttusb2.c_ttusb2_frontend_tda10086_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_usb_adapter = type { %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [31 x i8] c"set interface to alts=3 failed\00", align 1
@tda10086_attach = common dso_local global i32 0, align 4
@tda10086_config = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"TDA10086 attach failed\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_usb_adapter*)* @ttusb2_frontend_tda10086_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ttusb2_frontend_tda10086_attach(%struct.dvb_usb_adapter* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_usb_adapter*, align 8
  store %struct.dvb_usb_adapter* %0, %struct.dvb_usb_adapter** %3, align 8
  %4 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i64 @usb_set_interface(i32 %8, i32 0, i32 3)
  %10 = icmp slt i64 %9, 0
  br i1 %10, label %11, label %13

11:                                               ; preds = %1
  %12 = call i32 @err(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %13

13:                                               ; preds = %11, %1
  %14 = load i32, i32* @tda10086_attach, align 4
  %15 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %16 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = call i32* @dvb_attach(i32 %14, i32* @tda10086_config, i32* %18)
  %20 = load %struct.dvb_usb_adapter*, %struct.dvb_usb_adapter** %3, align 8
  %21 = getelementptr inbounds %struct.dvb_usb_adapter, %struct.dvb_usb_adapter* %20, i32 0, i32 1
  store i32* %19, i32** %21, align 8
  %22 = icmp eq i32* %19, null
  br i1 %22, label %23, label %27

23:                                               ; preds = %13
  %24 = call i32 @deb_info(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %25 = load i32, i32* @ENODEV, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %28

27:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %28

28:                                               ; preds = %27, %23
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32* @dvb_attach(i32, i32*, i32*) #1

declare dso_local i32 @deb_info(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
