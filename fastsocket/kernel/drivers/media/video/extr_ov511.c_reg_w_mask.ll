; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_reg_w_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_reg_w_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8, i8)* @reg_w_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_w_mask(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.usb_ov511*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.usb_ov511* %0, %struct.usb_ov511** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8 %2, i8* %8, align 1
  store i8 %3, i8* %9, align 1
  %13 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %14 = load i8, i8* %7, align 1
  %15 = call i32 @reg_r(%struct.usb_ov511* %13, i8 zeroext %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %10, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %4
  %19 = load i32, i32* %10, align 4
  store i32 %19, i32* %5, align 4
  br label %46

20:                                               ; preds = %4
  %21 = load i32, i32* %10, align 4
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %11, align 1
  %23 = load i8, i8* %9, align 1
  %24 = zext i8 %23 to i32
  %25 = xor i32 %24, -1
  %26 = load i8, i8* %11, align 1
  %27 = zext i8 %26 to i32
  %28 = and i32 %27, %25
  %29 = trunc i32 %28 to i8
  store i8 %29, i8* %11, align 1
  %30 = load i8, i8* %9, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %8, align 1
  %33 = zext i8 %32 to i32
  %34 = and i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %8, align 1
  %36 = load i8, i8* %11, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* %8, align 1
  %39 = zext i8 %38 to i32
  %40 = or i32 %37, %39
  %41 = trunc i32 %40 to i8
  store i8 %41, i8* %12, align 1
  %42 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %43 = load i8, i8* %7, align 1
  %44 = load i8, i8* %12, align 1
  %45 = call i32 @reg_w(%struct.usb_ov511* %42, i8 zeroext %43, i8 zeroext %44)
  store i32 %45, i32* %5, align 4
  br label %46

46:                                               ; preds = %20, %18
  %47 = load i32, i32* %5, align 4
  ret i32 %47
}

declare dso_local i32 @reg_r(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @reg_w(%struct.usb_ov511*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
