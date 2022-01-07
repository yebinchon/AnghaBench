; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_set_slave_ids.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_set_slave_ids.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@OV511_RESET_NOREGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8)* @ov51x_set_slave_ids to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_set_slave_ids(%struct.usb_ov511* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.usb_ov511*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %7 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %6, i32 0, i32 0
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %10 = load i8, i8* %4, align 1
  %11 = call i32 @i2c_set_slave_internal(%struct.usb_ov511* %9, i8 zeroext %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %2
  br label %19

15:                                               ; preds = %2
  %16 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %17 = load i32, i32* @OV511_RESET_NOREGS, align 4
  %18 = call i32 @ov51x_reset(%struct.usb_ov511* %16, i32 %17)
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %15, %14
  %20 = load %struct.usb_ov511*, %struct.usb_ov511** %3, align 8
  %21 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %20, i32 0, i32 0
  %22 = call i32 @mutex_unlock(i32* %21)
  %23 = load i32, i32* %5, align 4
  ret i32 %23
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @i2c_set_slave_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @ov51x_reset(%struct.usb_ov511*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
