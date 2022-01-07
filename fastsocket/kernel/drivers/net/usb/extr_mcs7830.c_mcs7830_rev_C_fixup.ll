; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_rev_C_fixup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/usb/extr_mcs7830.c_mcs7830_rev_C_fixup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usbnet = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@HIF_REG_PAUSE_THRESHOLD_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"applying rev.C fixup\0A\00", align 1
@HIF_REG_PAUSE_THRESHOLD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usbnet*)* @mcs7830_rev_C_fixup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mcs7830_rev_C_fixup(%struct.usbnet* %0) #0 {
  %2 = alloca %struct.usbnet*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.usbnet* %0, %struct.usbnet** %2, align 8
  %5 = load i32, i32* @HIF_REG_PAUSE_THRESHOLD_DEFAULT, align 4
  store i32 %5, i32* %3, align 4
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %24, %1
  %7 = load i32, i32* %4, align 4
  %8 = icmp slt i32 %7, 2
  br i1 %8, label %9, label %27

9:                                                ; preds = %6
  %10 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %11 = call i32 @mcs7830_get_rev(%struct.usbnet* %10)
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %22

13:                                               ; preds = %9
  %14 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %15 = getelementptr inbounds %struct.usbnet, %struct.usbnet* %14, i32 0, i32 0
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = call i32 @dev_info(i32* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %19 = load %struct.usbnet*, %struct.usbnet** %2, align 8
  %20 = load i32, i32* @HIF_REG_PAUSE_THRESHOLD, align 4
  %21 = call i32 @mcs7830_set_reg(%struct.usbnet* %19, i32 %20, i32 1, i32* %3)
  br label %22

22:                                               ; preds = %13, %9
  %23 = call i32 @msleep(i32 1)
  br label %24

24:                                               ; preds = %22
  %25 = load i32, i32* %4, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %4, align 4
  br label %6

27:                                               ; preds = %6
  ret void
}

declare dso_local i32 @mcs7830_get_rev(%struct.usbnet*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i32 @mcs7830_set_reg(%struct.usbnet*, i32, i32, i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
