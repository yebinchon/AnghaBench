; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca500.c_spca500_synch310.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca500.c_spca500_synch310.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32, i32, i32 }

@D_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Set packet size: set interface error\00", align 1
@D_PACK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ClickSmart310 sync alt: %d\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @spca500_synch310 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spca500_synch310(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  %4 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %5 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i64 @usb_set_interface(i32 %6, i32 %9, i32 0)
  %11 = icmp slt i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load i32, i32* @D_ERR, align 4
  %14 = call i32 (i32, i8*, ...) @PDEBUG(i32 %13, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %40

15:                                               ; preds = %1
  %16 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %17 = call i32 @spca500_ping310(%struct.gspca_dev* %16)
  %18 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %19 = call i32 @reg_r(%struct.gspca_dev* %18, i32 3328, i32 1)
  %20 = load i32, i32* @D_PACK, align 4
  %21 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %22 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 (i32, i8*, ...) @PDEBUG(i32 %20, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %26 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %29 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %32 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i64 @usb_set_interface(i32 %27, i32 %30, i32 %33)
  %35 = icmp slt i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %15
  %37 = load i32, i32* @D_ERR, align 4
  %38 = call i32 (i32, i8*, ...) @PDEBUG(i32 %37, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %40

39:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %43

40:                                               ; preds = %36, %12
  %41 = load i32, i32* @EBUSY, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %40, %39
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i64 @usb_set_interface(i32, i32, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i32 @spca500_ping310(%struct.gspca_dev*) #1

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
