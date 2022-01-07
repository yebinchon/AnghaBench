; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_register_usbhost.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_sm501.c_sm501_register_usbhost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sm501_devdata = type { i32 }
%struct.platform_device = type { i32* }

@.str = private unnamed_addr constant [10 x i8] c"sm501-usb\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sm501_devdata*, i32*)* @sm501_register_usbhost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sm501_register_usbhost(%struct.sm501_devdata* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sm501_devdata*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.platform_device*, align 8
  store %struct.sm501_devdata* %0, %struct.sm501_devdata** %4, align 8
  store i32* %1, i32** %5, align 8
  %7 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %8 = call %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata* %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 3, i32 0)
  store %struct.platform_device* %8, %struct.platform_device** %6, align 8
  %9 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %10 = icmp ne %struct.platform_device* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %37

14:                                               ; preds = %2
  %15 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %16 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %17 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 0
  %20 = call i32 @sm501_create_subio(%struct.sm501_devdata* %15, i32* %19, i32 262144, i32 131072)
  %21 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %22 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32*, i32** %5, align 8
  %27 = call i32 @sm501_create_mem(%struct.sm501_devdata* %21, i32* %25, i32* %26, i32 262144)
  %28 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %29 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %30 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = call i32 @sm501_create_irq(%struct.sm501_devdata* %28, i32* %32)
  %34 = load %struct.sm501_devdata*, %struct.sm501_devdata** %4, align 8
  %35 = load %struct.platform_device*, %struct.platform_device** %6, align 8
  %36 = call i32 @sm501_register_device(%struct.sm501_devdata* %34, %struct.platform_device* %35)
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %14, %11
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.platform_device* @sm501_create_subdev(%struct.sm501_devdata*, i8*, i32, i32) #1

declare dso_local i32 @sm501_create_subio(%struct.sm501_devdata*, i32*, i32, i32) #1

declare dso_local i32 @sm501_create_mem(%struct.sm501_devdata*, i32*, i32*, i32) #1

declare dso_local i32 @sm501_create_irq(%struct.sm501_devdata*, i32*) #1

declare dso_local i32 @sm501_register_device(%struct.sm501_devdata*, %struct.platform_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
