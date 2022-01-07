; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_reg_w_ixbuf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_t613.c_reg_w_ixbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32* }

@USB_BUF_SZ = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i32, i32*, i32)* @reg_w_ixbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @reg_w_ixbuf(%struct.gspca_dev* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca %struct.gspca_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = mul nsw i32 %12, 2
  %14 = load i32, i32* @USB_BUF_SZ, align 4
  %15 = icmp sle i32 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %4
  %17 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %18 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %17, i32 0, i32 1
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %11, align 8
  store i32* %19, i32** %10, align 8
  br label %30

20:                                               ; preds = %4
  %21 = load i32, i32* %8, align 4
  %22 = mul nsw i32 %21, 2
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call i32* @kmalloc(i32 %22, i32 %23)
  store i32* %24, i32** %11, align 8
  store i32* %24, i32** %10, align 8
  %25 = load i32*, i32** %11, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %20
  %28 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %70

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29, %16
  %31 = load i32, i32* %8, align 4
  store i32 %31, i32* %9, align 4
  br label %32

32:                                               ; preds = %36, %30
  %33 = load i32, i32* %9, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %9, align 4
  %35 = icmp sge i32 %34, 0
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %6, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i32 1
  store i32* %40, i32** %10, align 8
  store i32 %37, i32* %39, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = getelementptr inbounds i32, i32* %41, i32 1
  store i32* %42, i32** %7, align 8
  %43 = load i32, i32* %41, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %10, align 8
  store i32 %43, i32* %44, align 4
  br label %32

46:                                               ; preds = %32
  %47 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %48 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %5, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @usb_sndctrlpipe(i32 %52, i32 0)
  %54 = load i32, i32* @USB_DIR_OUT, align 4
  %55 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @USB_RECIP_DEVICE, align 4
  %58 = or i32 %56, %57
  %59 = load i32*, i32** %11, align 8
  %60 = load i32, i32* %8, align 4
  %61 = mul nsw i32 %60, 2
  %62 = call i32 @usb_control_msg(i32 %49, i32 %53, i32 0, i32 %58, i32 1, i32 0, i32* %59, i32 %61, i32 500)
  %63 = load i32, i32* %8, align 4
  %64 = mul nsw i32 %63, 2
  %65 = load i32, i32* @USB_BUF_SZ, align 4
  %66 = icmp sgt i32 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %46
  %68 = load i32*, i32** %11, align 8
  %69 = call i32 @kfree(i32* %68)
  br label %70

70:                                               ; preds = %27, %67, %46
  ret void
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @err(i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
