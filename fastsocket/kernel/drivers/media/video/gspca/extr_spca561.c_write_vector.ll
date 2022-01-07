; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_write_vector.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/gspca/extr_spca561.c_write_vector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gspca_dev = type { %struct.usb_device* }
%struct.usb_device = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gspca_dev*, [2 x i64]*)* @write_vector to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @write_vector(%struct.gspca_dev* %0, [2 x i64]* %1) #0 {
  %3 = alloca %struct.gspca_dev*, align 8
  %4 = alloca [2 x i64]*, align 8
  %5 = alloca %struct.usb_device*, align 8
  %6 = alloca i32, align 4
  store %struct.gspca_dev* %0, %struct.gspca_dev** %3, align 8
  store [2 x i64]* %1, [2 x i64]** %4, align 8
  %7 = load %struct.gspca_dev*, %struct.gspca_dev** %3, align 8
  %8 = getelementptr inbounds %struct.gspca_dev, %struct.gspca_dev* %7, i32 0, i32 0
  %9 = load %struct.usb_device*, %struct.usb_device** %8, align 8
  store %struct.usb_device* %9, %struct.usb_device** %5, align 8
  store i32 0, i32* %6, align 4
  br label %10

10:                                               ; preds = %18, %2
  %11 = load [2 x i64]*, [2 x i64]** %4, align 8
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [2 x i64], [2 x i64]* %11, i64 %13
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %14, i64 0, i64 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %35

18:                                               ; preds = %10
  %19 = load %struct.usb_device*, %struct.usb_device** %5, align 8
  %20 = load [2 x i64]*, [2 x i64]** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %20, i64 %22
  %24 = getelementptr inbounds [2 x i64], [2 x i64]* %23, i64 0, i64 1
  %25 = load i64, i64* %24, align 8
  %26 = load [2 x i64]*, [2 x i64]** %4, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [2 x i64], [2 x i64]* %26, i64 %28
  %30 = getelementptr inbounds [2 x i64], [2 x i64]* %29, i64 0, i64 0
  %31 = load i64, i64* %30, align 8
  %32 = call i32 @reg_w_val(%struct.usb_device* %19, i64 %25, i64 %31)
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %6, align 4
  br label %10

35:                                               ; preds = %10
  ret void
}

declare dso_local i32 @reg_w_val(%struct.usb_device*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
