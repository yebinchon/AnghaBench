; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_write_regvals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_write_regvals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }
%struct.ov511_regvals = type { i64, i32, i32 }

@OV511_DONE_BUS = common dso_local global i64 0, align 8
@OV511_REG_BUS = common dso_local global i64 0, align 8
@OV511_I2C_BUS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Bad regval array\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, %struct.ov511_regvals*)* @write_regvals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_regvals(%struct.usb_ov511* %0, %struct.ov511_regvals* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca %struct.ov511_regvals*, align 8
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store %struct.ov511_regvals* %1, %struct.ov511_regvals** %5, align 8
  br label %7

7:                                                ; preds = %54, %2
  %8 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %9 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @OV511_DONE_BUS, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %57

13:                                               ; preds = %7
  %14 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %15 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @OV511_REG_BUS, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %32

19:                                               ; preds = %13
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %21 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %22 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %25 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @reg_w(%struct.usb_ov511* %20, i32 %23, i32 %26)
  store i32 %27, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %19
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %58

31:                                               ; preds = %19
  br label %54

32:                                               ; preds = %13
  %33 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %34 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @OV511_I2C_BUS, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %51

38:                                               ; preds = %32
  %39 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %40 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %41 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %44 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @i2c_w(%struct.usb_ov511* %39, i32 %42, i32 %45)
  store i32 %46, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %38
  %49 = load i32, i32* %6, align 4
  store i32 %49, i32* %3, align 4
  br label %58

50:                                               ; preds = %38
  br label %53

51:                                               ; preds = %32
  %52 = call i32 @err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %3, align 4
  br label %58

53:                                               ; preds = %50
  br label %54

54:                                               ; preds = %53, %31
  %55 = load %struct.ov511_regvals*, %struct.ov511_regvals** %5, align 8
  %56 = getelementptr inbounds %struct.ov511_regvals, %struct.ov511_regvals* %55, i32 1
  store %struct.ov511_regvals* %56, %struct.ov511_regvals** %5, align 8
  br label %7

57:                                               ; preds = %7
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %57, %51, %48, %29
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i32) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
