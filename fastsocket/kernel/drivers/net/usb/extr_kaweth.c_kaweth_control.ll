; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_control.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_kaweth.c_kaweth_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kaweth_device = type { i32 }
%struct.usb_ctrlrequest = type { i8*, i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [17 x i8] c"kaweth_control()\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"in_interrupt()\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"kmalloc() failed\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kaweth_device*, i32, i8*, i8*, i32, i32, i8*, i32, i32)* @kaweth_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kaweth_control(%struct.kaweth_device* %0, i32 %1, i8* %2, i8* %3, i32 %4, i32 %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.kaweth_device*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.usb_ctrlrequest*, align 8
  %21 = alloca i32, align 4
  store %struct.kaweth_device* %0, %struct.kaweth_device** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i8* %3, i8** %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i8* %6, i8** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %23 = call i64 (...) @in_interrupt()
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %29

25:                                               ; preds = %9
  %26 = call i32 @dbg(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* @EBUSY, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %69

29:                                               ; preds = %9
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call %struct.usb_ctrlrequest* @kmalloc(i32 40, i32 %30)
  store %struct.usb_ctrlrequest* %31, %struct.usb_ctrlrequest** %20, align 8
  %32 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %33 = icmp ne %struct.usb_ctrlrequest* %32, null
  br i1 %33, label %38, label %34

34:                                               ; preds = %29
  %35 = call i32 @dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %10, align 4
  br label %69

38:                                               ; preds = %29
  %39 = load i8*, i8** %14, align 8
  %40 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %41 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %40, i32 0, i32 4
  store i8* %39, i8** %41, align 8
  %42 = load i8*, i8** %13, align 8
  %43 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %44 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load i32, i32* %15, align 4
  %46 = call i8* @cpu_to_le16(i32 %45)
  %47 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %48 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %47, i32 0, i32 2
  store i8* %46, i8** %48, align 8
  %49 = load i32, i32* %16, align 4
  %50 = call i8* @cpu_to_le16(i32 %49)
  %51 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %52 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %51, i32 0, i32 1
  store i8* %50, i8** %52, align 8
  %53 = load i32, i32* %18, align 4
  %54 = call i8* @cpu_to_le16(i32 %53)
  %55 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %56 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %55, i32 0, i32 0
  store i8* %54, i8** %56, align 8
  %57 = load %struct.kaweth_device*, %struct.kaweth_device** %11, align 8
  %58 = getelementptr inbounds %struct.kaweth_device, %struct.kaweth_device* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %12, align 4
  %61 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %62 = load i8*, i8** %17, align 8
  %63 = load i32, i32* %18, align 4
  %64 = load i32, i32* %19, align 4
  %65 = call i32 @kaweth_internal_control_msg(i32 %59, i32 %60, %struct.usb_ctrlrequest* %61, i8* %62, i32 %63, i32 %64)
  store i32 %65, i32* %21, align 4
  %66 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %20, align 8
  %67 = call i32 @kfree(%struct.usb_ctrlrequest* %66)
  %68 = load i32, i32* %21, align 4
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %38, %34, %25
  %70 = load i32, i32* %10, align 4
  ret i32 %70
}

declare dso_local i32 @dbg(i8*) #1

declare dso_local i64 @in_interrupt(...) #1

declare dso_local %struct.usb_ctrlrequest* @kmalloc(i32, i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @kaweth_internal_control_msg(i32, i32, %struct.usb_ctrlrequest*, i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.usb_ctrlrequest*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
