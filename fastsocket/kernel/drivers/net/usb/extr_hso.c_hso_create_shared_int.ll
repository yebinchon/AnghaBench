; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_shared_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_hso.c_hso_create_shared_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hso_shared_int = type { i32, %struct.hso_shared_int*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.usb_interface = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@USB_ENDPOINT_XFER_INT = common dso_local global i32 0, align 4
@USB_DIR_IN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Can't find INT IN endpoint\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"Could not allocate intr urb?\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"Could not allocate intr buf?\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hso_shared_int* (%struct.usb_interface*)* @hso_create_shared_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hso_shared_int* @hso_create_shared_int(%struct.usb_interface* %0) #0 {
  %2 = alloca %struct.hso_shared_int*, align 8
  %3 = alloca %struct.usb_interface*, align 8
  %4 = alloca %struct.hso_shared_int*, align 8
  store %struct.usb_interface* %0, %struct.usb_interface** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call i8* @kzalloc(i32 32, i32 %5)
  %7 = bitcast i8* %6 to %struct.hso_shared_int*
  store %struct.hso_shared_int* %7, %struct.hso_shared_int** %4, align 8
  %8 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %9 = icmp ne %struct.hso_shared_int* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.hso_shared_int* null, %struct.hso_shared_int** %2, align 8
  br label %74

11:                                               ; preds = %1
  %12 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %13 = load i32, i32* @USB_ENDPOINT_XFER_INT, align 4
  %14 = load i32, i32* @USB_DIR_IN, align 4
  %15 = call %struct.TYPE_2__* @hso_get_ep(%struct.usb_interface* %12, i32 %13, i32 %14)
  %16 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %17 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %16, i32 0, i32 3
  store %struct.TYPE_2__* %15, %struct.TYPE_2__** %17, align 8
  %18 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %19 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %18, i32 0, i32 3
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = icmp ne %struct.TYPE_2__* %20, null
  br i1 %21, label %26, label %22

22:                                               ; preds = %11
  %23 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %24 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %23, i32 0, i32 0
  %25 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  br label %63

26:                                               ; preds = %11
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @usb_alloc_urb(i32 0, i32 %27)
  %29 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %30 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %32 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %39, label %35

35:                                               ; preds = %26
  %36 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %37 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %36, i32 0, i32 0
  %38 = call i32 @dev_err(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %63

39:                                               ; preds = %26
  %40 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %41 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %40, i32 0, i32 3
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @GFP_KERNEL, align 4
  %46 = call i8* @kzalloc(i32 %44, i32 %45)
  %47 = bitcast i8* %46 to %struct.hso_shared_int*
  %48 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %49 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %48, i32 0, i32 1
  store %struct.hso_shared_int* %47, %struct.hso_shared_int** %49, align 8
  %50 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %51 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %50, i32 0, i32 1
  %52 = load %struct.hso_shared_int*, %struct.hso_shared_int** %51, align 8
  %53 = icmp ne %struct.hso_shared_int* %52, null
  br i1 %53, label %58, label %54

54:                                               ; preds = %39
  %55 = load %struct.usb_interface*, %struct.usb_interface** %3, align 8
  %56 = getelementptr inbounds %struct.usb_interface, %struct.usb_interface* %55, i32 0, i32 0
  %57 = call i32 @dev_err(i32* %56, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %63

58:                                               ; preds = %39
  %59 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %60 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %59, i32 0, i32 2
  %61 = call i32 @mutex_init(i32* %60)
  %62 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  store %struct.hso_shared_int* %62, %struct.hso_shared_int** %2, align 8
  br label %74

63:                                               ; preds = %54, %35, %22
  %64 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %65 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %64, i32 0, i32 1
  %66 = load %struct.hso_shared_int*, %struct.hso_shared_int** %65, align 8
  %67 = call i32 @kfree(%struct.hso_shared_int* %66)
  %68 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %69 = getelementptr inbounds %struct.hso_shared_int, %struct.hso_shared_int* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @usb_free_urb(i32 %70)
  %72 = load %struct.hso_shared_int*, %struct.hso_shared_int** %4, align 8
  %73 = call i32 @kfree(%struct.hso_shared_int* %72)
  store %struct.hso_shared_int* null, %struct.hso_shared_int** %2, align 8
  br label %74

74:                                               ; preds = %63, %58, %10
  %75 = load %struct.hso_shared_int*, %struct.hso_shared_int** %2, align 8
  ret %struct.hso_shared_int* %75
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_2__* @hso_get_ep(%struct.usb_interface*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @kfree(%struct.hso_shared_int*) #1

declare dso_local i32 @usb_free_urb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
