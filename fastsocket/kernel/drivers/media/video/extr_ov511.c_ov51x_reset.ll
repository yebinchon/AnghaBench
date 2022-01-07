; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64 }

@BCL_OV518 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"Reset: type=0x%02X\00", align 1
@R51x_SYS_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"reset: command failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8)* @ov51x_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_reset(%struct.usb_ov511* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @BCL_OV518, align 8
  %10 = icmp eq i64 %8, %9
  br i1 %10, label %11, label %16

11:                                               ; preds = %2
  %12 = load i8, i8* %4, align 1
  %13 = zext i8 %12 to i32
  %14 = and i32 %13, 254
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %4, align 1
  br label %16

16:                                               ; preds = %11, %2
  %17 = load i8, i8* %4, align 1
  %18 = call i32 @PDEBUG(i32 4, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i8 zeroext %17)
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %20 = load i32, i32* @R51x_SYS_RESET, align 4
  %21 = load i8, i8* %4, align 1
  %22 = call i32 @reg_w(%struct.usb_ov511* %19, i32 %20, i8 zeroext %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %24 = load i32, i32* @R51x_SYS_RESET, align 4
  %25 = call i32 @reg_w(%struct.usb_ov511* %23, i32 %24, i8 zeroext 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %16
  %29 = call i32 @err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %30

30:                                               ; preds = %28, %16
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @PDEBUG(i32, i8*, i8 zeroext) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i32, i8 zeroext) #1

declare dso_local i32 @err(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
