; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_i2c_w1.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_sonixj.c_i2c_w1.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32*, i32 }
%struct.sd = type { i32, i32 }

@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"i2c_w1 [%02x] = %02x\00", align 1
@USB_DIR_OUT = common dso_local global i32 0, align 4
@USB_TYPE_VENDOR = common dso_local global i32 0, align 4
@USB_RECIP_INTERFACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"i2c_w1 err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, i8*, i8*)* @i2c_w1 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2c_w1(%struct.gspca_dev* %0, i8* %1, i8* %2) #0 {
  %4 = alloca %struct.gspca_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.sd*, align 8
  %8 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %10 = bitcast %struct.gspca_dev* %9 to %struct.sd*
  store %struct.sd* %10, %struct.sd** %7, align 8
  %11 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %12 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  br label %94

16:                                               ; preds = %3
  %17 = load i32, i32* @D_USBO, align 4
  %18 = load i8*, i8** %5, align 8
  %19 = load i8*, i8** %6, align 8
  %20 = call i32 @PDEBUG(i32 %17, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %18, i8* %19)
  %21 = load %struct.sd*, %struct.sd** %7, align 8
  %22 = getelementptr inbounds %struct.sd, %struct.sd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  switch i32 %23, label %29 [
    i32 130, label %24
    i32 128, label %24
    i32 129, label %24
  ]

24:                                               ; preds = %16, %16, %16
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  store i32 160, i32* %28, align 4
  br label %34

29:                                               ; preds = %16
  %30 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %31 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 161, i32* %33, align 4
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.sd*, %struct.sd** %7, align 8
  %36 = getelementptr inbounds %struct.sd, %struct.sd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %39 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %38, i32 0, i32 1
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 %37, i32* %41, align 4
  %42 = load i8*, i8** %5, align 8
  %43 = ptrtoint i8* %42 to i32
  %44 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %45 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  store i32 %43, i32* %47, align 4
  %48 = load i8*, i8** %6, align 8
  %49 = ptrtoint i8* %48 to i32
  %50 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %51 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 3
  store i32 %49, i32* %53, align 4
  %54 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %55 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 4
  store i32 0, i32* %57, align 4
  %58 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %59 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 5
  store i32 0, i32* %61, align 4
  %62 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %63 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 6
  store i32 0, i32* %65, align 4
  %66 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %67 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %66, i32 0, i32 1
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 7
  store i32 16, i32* %69, align 4
  %70 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %71 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %74 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = call i32 @usb_sndctrlpipe(i32 %75, i32 0)
  %77 = load i32, i32* @USB_DIR_OUT, align 4
  %78 = load i32, i32* @USB_TYPE_VENDOR, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @USB_RECIP_INTERFACE, align 4
  %81 = or i32 %79, %80
  %82 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %83 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %82, i32 0, i32 1
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @usb_control_msg(i32 %72, i32 %76, i32 8, i32 %81, i32 8, i32 0, i32* %84, i32 8, i32 500)
  store i32 %85, i32* %8, align 4
  %86 = load i32, i32* %8, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %34
  %89 = load i32, i32* %8, align 4
  %90 = call i32 @err(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0), i32 %89)
  %91 = load i32, i32* %8, align 4
  %92 = load %struct.gspca_dev*, %struct.gspca_dev** %4, align 8
  %93 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  br label %94

94:                                               ; preds = %15, %88, %34
  ret void
}

declare dso_local i32 @PDEBUG(i32, i8*, i8*, i8*) #1

declare dso_local i32 @usb_control_msg(i32, i32, i32, i32, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @usb_sndctrlpipe(i32, i32) #1

declare dso_local i32 @err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
