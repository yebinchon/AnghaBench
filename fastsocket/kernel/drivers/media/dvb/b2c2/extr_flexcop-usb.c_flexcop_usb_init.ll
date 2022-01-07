; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-usb.c_flexcop_usb_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_usb = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"cannot handle USB speed because it is too slow.\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"running at FULL speed.\00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"running at HIGH speed.\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"cannot handle USB speed because it is unknown.\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.flexcop_usb*)* @flexcop_usb_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flexcop_usb_init(%struct.flexcop_usb* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.flexcop_usb*, align 8
  store %struct.flexcop_usb* %0, %struct.flexcop_usb** %3, align 8
  %4 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %5 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %4, i32 0, i32 1
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = call i32 @usb_set_interface(%struct.TYPE_2__* %6, i32 0, i32 1)
  %8 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %9 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  switch i32 %12, label %22 [
    i32 129, label %13
    i32 131, label %17
    i32 130, label %19
    i32 128, label %21
  ]

13:                                               ; preds = %1
  %14 = call i32 @err(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  %15 = load i32, i32* @ENODEV, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %2, align 4
  br label %32

17:                                               ; preds = %1
  %18 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %26

19:                                               ; preds = %1
  %20 = call i32 @info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0))
  br label %26

21:                                               ; preds = %1
  br label %22

22:                                               ; preds = %1, %21
  %23 = call i32 @err(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0))
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %32

26:                                               ; preds = %19, %17
  %27 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %28 = getelementptr inbounds %struct.flexcop_usb, %struct.flexcop_usb* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.flexcop_usb*, %struct.flexcop_usb** %3, align 8
  %31 = call i32 @usb_set_intfdata(i32 %29, %struct.flexcop_usb* %30)
  store i32 0, i32* %2, align 4
  br label %32

32:                                               ; preds = %26, %22, %13
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local i32 @usb_set_interface(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @info(i8*) #1

declare dso_local i32 @usb_set_intfdata(i32, %struct.flexcop_usb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
