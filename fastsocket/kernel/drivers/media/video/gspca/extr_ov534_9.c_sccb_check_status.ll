; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sccb_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_ov534_9.c_sccb_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { i32 }

@OV534_REG_STATUS = common dso_local global i32 0, align 4
@D_USBI = common dso_local global i32 0, align 4
@D_USBO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"sccb status 0x%02x, attempt %d/5\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*)* @sccb_check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sccb_check_status(%struct.gspca_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %26, %1
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 5
  br i1 %8, label %9, label %29

9:                                                ; preds = %6
  %10 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %11 = load i32, i32* @OV534_REG_STATUS, align 4
  %12 = call i32 @reg_r(%struct.gspca_dev* %10, i32 %11)
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  switch i32 %13, label %17 [
    i32 0, label %14
    i32 4, label %15
    i32 3, label %16
  ]

14:                                               ; preds = %9
  store i32 1, i32* %2, align 4
  br label %30

15:                                               ; preds = %9
  store i32 0, i32* %2, align 4
  br label %30

16:                                               ; preds = %9
  br label %25

17:                                               ; preds = %9
  %18 = load i32, i32* @D_USBI, align 4
  %19 = load i32, i32* @D_USBO, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %22, 1
  %24 = call i32 @PDEBUG(i32 %20, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %23)
  br label %25

25:                                               ; preds = %17, %16
  br label %26

26:                                               ; preds = %25
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %5, align 4
  br label %6

29:                                               ; preds = %6
  store i32 0, i32* %2, align 4
  br label %30

30:                                               ; preds = %29, %15, %14
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i32 @reg_r(%struct.gspca_dev*, i32) #1

declare dso_local i32 @PDEBUG(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
