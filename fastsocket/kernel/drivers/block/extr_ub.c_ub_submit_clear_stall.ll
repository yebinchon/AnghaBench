; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_submit_clear_stall.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_submit_clear_stall.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { %struct.TYPE_2__, i32, i32, i32, i32, %struct.usb_ctrlrequest }
%struct.TYPE_2__ = type { i64 }
%struct.usb_ctrlrequest = type { i8*, i8*, i8*, i32, i32 }
%struct.ub_scsi_cmd = type { i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_RECIP_ENDPOINT = common dso_local global i32 0, align 4
@USB_REQ_CLEAR_FEATURE = common dso_local global i32 0, align 4
@USB_ENDPOINT_HALT = common dso_local global i32 0, align 4
@ub_urb_complete = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@UB_CTRL_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ub_dev*, %struct.ub_scsi_cmd*, i32)* @ub_submit_clear_stall to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ub_submit_clear_stall(%struct.ub_dev* %0, %struct.ub_scsi_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ub_dev*, align 8
  %6 = alloca %struct.ub_scsi_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.usb_ctrlrequest*, align 8
  %10 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %5, align 8
  store %struct.ub_scsi_cmd* %1, %struct.ub_scsi_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %7, align 4
  %12 = call i32 @usb_pipeendpoint(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i64 @usb_pipein(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %3
  %17 = load i32, i32* @USB_DIR_IN, align 4
  %18 = load i32, i32* %8, align 4
  %19 = or i32 %18, %17
  store i32 %19, i32* %8, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %22 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %21, i32 0, i32 5
  store %struct.usb_ctrlrequest* %22, %struct.usb_ctrlrequest** %9, align 8
  %23 = load i32, i32* @USB_RECIP_ENDPOINT, align 4
  %24 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %25 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %24, i32 0, i32 4
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @USB_REQ_CLEAR_FEATURE, align 4
  %27 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %28 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %27, i32 0, i32 3
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* @USB_ENDPOINT_HALT, align 4
  %30 = call i8* @cpu_to_le16(i32 %29)
  %31 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %32 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load i32, i32* %8, align 4
  %34 = call i8* @cpu_to_le16(i32 %33)
  %35 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %36 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %35, i32 0, i32 1
  store i8* %34, i8** %36, align 8
  %37 = call i8* @cpu_to_le16(i32 0)
  %38 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %39 = getelementptr inbounds %struct.usb_ctrlrequest, %struct.usb_ctrlrequest* %38, i32 0, i32 0
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %41 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @UB_INIT_COMPLETION(i32 %42)
  %44 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %45 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %44, i32 0, i32 2
  %46 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %47 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %46, i32 0, i32 4
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %50 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.usb_ctrlrequest*, %struct.usb_ctrlrequest** %9, align 8
  %53 = bitcast %struct.usb_ctrlrequest* %52 to i8*
  %54 = load i32, i32* @ub_urb_complete, align 4
  %55 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %56 = call i32 @usb_fill_control_urb(i32* %45, i32 %48, i32 %51, i8* %53, i32* null, i32 0, i32 %54, %struct.ub_dev* %55)
  %57 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %58 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %57, i32 0, i32 2
  %59 = load i32, i32* @GFP_ATOMIC, align 4
  %60 = call i32 @usb_submit_urb(i32* %58, i32 %59)
  store i32 %60, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %20
  %63 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %64 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %63, i32 0, i32 1
  %65 = call i32 @ub_complete(i32* %64)
  %66 = load i32, i32* %10, align 4
  store i32 %66, i32* %4, align 4
  br label %77

67:                                               ; preds = %20
  %68 = load i64, i64* @jiffies, align 8
  %69 = load i64, i64* @UB_CTRL_TIMEOUT, align 8
  %70 = add nsw i64 %68, %69
  %71 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %72 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i64 %70, i64* %73, align 8
  %74 = load %struct.ub_dev*, %struct.ub_dev** %5, align 8
  %75 = getelementptr inbounds %struct.ub_dev, %struct.ub_dev* %74, i32 0, i32 0
  %76 = call i32 @add_timer(%struct.TYPE_2__* %75)
  store i32 0, i32* %4, align 4
  br label %77

77:                                               ; preds = %67, %62
  %78 = load i32, i32* %4, align 4
  ret i32 %78
}

declare dso_local i32 @usb_pipeendpoint(i32) #1

declare dso_local i64 @usb_pipein(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @UB_INIT_COMPLETION(i32) #1

declare dso_local i32 @usb_fill_control_urb(i32*, i32, i32, i8*, i32*, i32, i32, %struct.ub_dev*) #1

declare dso_local i32 @usb_submit_urb(i32*, i32) #1

declare dso_local i32 @ub_complete(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
