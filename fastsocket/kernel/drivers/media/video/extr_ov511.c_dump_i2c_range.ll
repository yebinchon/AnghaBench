; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_dump_i2c_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_dump_i2c_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Sensor[0x%02X] = 0x%02X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.usb_ov511*, i32, i32)* @dump_i2c_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dump_i2c_range(%struct.usb_ov511* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %5, align 4
  store i32 %9, i32* %7, align 4
  br label %10

10:                                               ; preds = %25, %3
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp sle i32 %11, %12
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @i2c_r(%struct.usb_ov511* %15, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %19 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @dev_info(i32* %21, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %22, i32 %23)
  br label %25

25:                                               ; preds = %14
  %26 = load i32, i32* %7, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %7, align 4
  br label %10

28:                                               ; preds = %10
  ret void
}

declare dso_local i32 @i2c_r(%struct.usb_ov511*, i32) #1

declare dso_local i32 @dev_info(i32*, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
