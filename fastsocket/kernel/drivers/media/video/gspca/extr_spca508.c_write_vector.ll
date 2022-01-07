; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca508.c_write_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca508.c_write_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gspca_dev*, [2 x i32]*)* @write_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_vector(%struct.gspca_dev* %0, [2 x i32]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [2 x i32]*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [2 x i32]* %1, [2 x i32]** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %54, %2
  %11 = load [2 x i32]*, [2 x i32]** %4, align 8
  %12 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %57

15:                                               ; preds = %10
  %16 = load [2 x i32]*, [2 x i32]** %4, align 8
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = and i32 %18, 32768
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %15
  %22 = load [2 x i32]*, [2 x i32]** %4, align 8
  %23 = getelementptr inbounds [2 x i32], [2 x i32]* %22, i64 0, i64 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp eq i32 %24, 56576
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load [2 x i32]*, [2 x i32]** %4, align 8
  %28 = getelementptr inbounds [2 x i32], [2 x i32]* %27, i64 0, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @msleep(i32 %29)
  br label %40

31:                                               ; preds = %21
  %32 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %33 = load [2 x i32]*, [2 x i32]** %4, align 8
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %33, i64 0, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load [2 x i32]*, [2 x i32]** %4, align 8
  %37 = getelementptr inbounds [2 x i32], [2 x i32]* %36, i64 0, i64 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @reg_write(%struct.usb_device* %32, i32 %35, i32 %38)
  store i32 %39, i32* %6, align 4
  br label %40

40:                                               ; preds = %31, %26
  br label %50

41:                                               ; preds = %15
  %42 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %43 = load [2 x i32]*, [2 x i32]** %4, align 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %43, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = load [2 x i32]*, [2 x i32]** %4, align 8
  %47 = getelementptr inbounds [2 x i32], [2 x i32]* %46, i64 0, i64 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @ssi_w(%struct.gspca_dev* %42, i32 %45, i32 %48)
  store i32 %49, i32* %6, align 4
  br label %50

50:                                               ; preds = %41, %40
  %51 = load i32, i32* %6, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %50
  br label %57

54:                                               ; preds = %50
  %55 = load [2 x i32]*, [2 x i32]** %4, align 8
  %56 = getelementptr inbounds [2 x i32], [2 x i32]* %55, i32 1
  store [2 x i32]* %56, [2 x i32]** %4, align 8
  br label %10

57:                                               ; preds = %53, %10
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @reg_write(%struct.usb_device*, i32, i32) #1

declare dso_local i32 @ssi_w(%struct.gspca_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
