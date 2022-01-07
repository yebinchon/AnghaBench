; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c___carl9170_exec_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/ath/carl9170/extr_usb.c___carl9170_exec_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ar9170 = type { i32, i32 }
%struct.carl9170_cmd = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.urb = type { i32 }

@EPERM = common dso_local global i32 0, align 4
@CARL9170_MAX_CMD_LEN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AR9170_USB_EP_CMD = common dso_local global i32 0, align 4
@carl9170_usb_cmd_complete = common dso_local global i32 0, align 4
@URB_FREE_BUFFER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__carl9170_exec_cmd(%struct.ar9170* %0, %struct.carl9170_cmd* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ar9170*, align 8
  %6 = alloca %struct.carl9170_cmd*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.urb*, align 8
  %9 = alloca i32, align 4
  store %struct.ar9170* %0, %struct.ar9170** %5, align 8
  store %struct.carl9170_cmd* %1, %struct.carl9170_cmd** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  %10 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %11 = call i32 @IS_INITIALIZED(%struct.ar9170* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EPERM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %9, align 4
  br label %74

16:                                               ; preds = %3
  %17 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %18 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @CARL9170_MAX_CMD_LEN, align 4
  %22 = sub nsw i32 %21, 4
  %23 = icmp sgt i32 %20, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @WARN_ON(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %9, align 4
  br label %74

30:                                               ; preds = %16
  %31 = load i32, i32* @GFP_ATOMIC, align 4
  %32 = call %struct.urb* @usb_alloc_urb(i32 0, i32 %31)
  store %struct.urb* %32, %struct.urb** %8, align 8
  %33 = load %struct.urb*, %struct.urb** %8, align 8
  %34 = icmp ne %struct.urb* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %30
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %9, align 4
  br label %74

38:                                               ; preds = %30
  %39 = load %struct.urb*, %struct.urb** %8, align 8
  %40 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %41 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %44 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* @AR9170_USB_EP_CMD, align 4
  %47 = call i32 @usb_sndintpipe(i32 %45, i32 %46)
  %48 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %49 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %50 = getelementptr inbounds %struct.carl9170_cmd, %struct.carl9170_cmd* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 4
  %54 = load i32, i32* @carl9170_usb_cmd_complete, align 4
  %55 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %56 = call i32 @usb_fill_int_urb(%struct.urb* %39, i32 %42, i32 %47, %struct.carl9170_cmd* %48, i32 %53, i32 %54, %struct.ar9170* %55, i32 1)
  %57 = load i32, i32* %7, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %38
  %60 = load i32, i32* @URB_FREE_BUFFER, align 4
  %61 = load %struct.urb*, %struct.urb** %8, align 8
  %62 = getelementptr inbounds %struct.urb, %struct.urb* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = or i32 %63, %60
  store i32 %64, i32* %62, align 4
  br label %65

65:                                               ; preds = %59, %38
  %66 = load %struct.urb*, %struct.urb** %8, align 8
  %67 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %68 = getelementptr inbounds %struct.ar9170, %struct.ar9170* %67, i32 0, i32 0
  %69 = call i32 @usb_anchor_urb(%struct.urb* %66, i32* %68)
  %70 = load %struct.urb*, %struct.urb** %8, align 8
  %71 = call i32 @usb_free_urb(%struct.urb* %70)
  %72 = load %struct.ar9170*, %struct.ar9170** %5, align 8
  %73 = call i32 @carl9170_usb_submit_cmd_urb(%struct.ar9170* %72)
  store i32 %73, i32* %4, align 4
  br label %82

74:                                               ; preds = %35, %27, %13
  %75 = load i32, i32* %7, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %74
  %78 = load %struct.carl9170_cmd*, %struct.carl9170_cmd** %6, align 8
  %79 = call i32 @kfree(%struct.carl9170_cmd* %78)
  br label %80

80:                                               ; preds = %77, %74
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %4, align 4
  br label %82

82:                                               ; preds = %80, %65
  %83 = load i32, i32* %4, align 4
  ret i32 %83
}

declare dso_local i32 @IS_INITIALIZED(%struct.ar9170*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local %struct.urb* @usb_alloc_urb(i32, i32) #1

declare dso_local i32 @usb_fill_int_urb(%struct.urb*, i32, i32, %struct.carl9170_cmd*, i32, i32, %struct.ar9170*, i32) #1

declare dso_local i32 @usb_sndintpipe(i32, i32) #1

declare dso_local i32 @usb_anchor_urb(%struct.urb*, i32*) #1

declare dso_local i32 @usb_free_urb(%struct.urb*) #1

declare dso_local i32 @carl9170_usb_submit_cmd_urb(%struct.ar9170*) #1

declare dso_local i32 @kfree(%struct.carl9170_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
