; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_reg_r.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov519.c_reg_r.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sd = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32*, i32 }

@USB_DIR_IN = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"GET %02x 0000 %04x %02x\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"reg_r %02x failed %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sd*, i32)* @reg_r to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_r(%struct.sd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sd* %0, %struct.sd** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.sd*, %struct.sd** %4, align 8
  %9 = getelementptr inbounds %struct.sd, %struct.sd* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %67

14:                                               ; preds = %2
  %15 = load %struct.sd*, %struct.sd** %4, align 8
  %16 = getelementptr inbounds %struct.sd, %struct.sd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  switch i32 %17, label %20 [
    i32 130, label %18
    i32 129, label %18
    i32 128, label %19
  ]

18:                                               ; preds = %14, %14
  store i32 3, i32* %7, align 4
  br label %21

19:                                               ; preds = %14
  store i32 11, i32* %7, align 4
  br label %21

20:                                               ; preds = %14
  store i32 1, i32* %7, align 4
  br label %21

21:                                               ; preds = %20, %19, %18
  %22 = load %struct.sd*, %struct.sd** %4, align 8
  %23 = getelementptr inbounds %struct.sd, %struct.sd* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.sd*, %struct.sd** %4, align 8
  %27 = getelementptr inbounds %struct.sd, %struct.sd* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @usb_rcvctrlpipe(i32 %29, i32 0)
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* @USB_DIR_IN, align 4
  %33 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.sd*, %struct.sd** %4, align 8
  %39 = getelementptr inbounds %struct.sd, %struct.sd* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = load i32*, i32** %40, align 8
  %42 = call i32 @usb_control_msg(i32 %25, i32 %30, i32 %31, i32 %36, i32 0, i32 %37, i32* %41, i32 1, i32 500)
  store i32 %42, i32* %6, align 4
  %43 = load i32, i32* %6, align 4
  %44 = icmp sge i32 %43, 0
  br i1 %44, label %45, label %57

45:                                               ; preds = %21
  %46 = load %struct.sd*, %struct.sd** %4, align 8
  %47 = getelementptr inbounds %struct.sd, %struct.sd* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 1
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  store i32 %51, i32* %6, align 4
  %52 = load i32, i32* @D_USBI, align 4
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @PDEBUG(i32 %52, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54, i32 %55)
  br label %65

57:                                               ; preds = %21
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @err(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.sd*, %struct.sd** %4, align 8
  %63 = getelementptr inbounds %struct.sd, %struct.sd* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  store i32 %61, i32* %64, align 8
  br label %65

65:                                               ; preds = %57, %45
  %66 = load i32, i32* %6, align 4
  store i32 %66, i32* %3, align 4
  br label %67

67:                                               ; preds = %65, %13
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_rcvctrlpipe(i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32, i32) #1

declare dso_local i32 @err(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
