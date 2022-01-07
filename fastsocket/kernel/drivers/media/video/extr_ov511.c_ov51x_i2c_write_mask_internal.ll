; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_i2c_write_mask_internal.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_ov51x_i2c_write_mask_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i64 }

@BCL_OV518 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i8, i8, i8)* @ov51x_i2c_write_mask_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ov51x_i2c_write_mask_internal(%struct.usb_ov511* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
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
  %13 = load i8, i8* %9, align 1
  %14 = zext i8 %13 to i32
  %15 = icmp eq i32 %14, 255
  br i1 %15, label %16, label %18

16:                                               ; preds = %4
  %17 = load i8, i8* %8, align 1
  store i8 %17, i8* %12, align 1
  br label %59

18:                                               ; preds = %4
  %19 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %20 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @BCL_OV518, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %26 = load i8, i8* %7, align 1
  %27 = call i32 @ov518_i2c_read_internal(%struct.usb_ov511* %25, i8 zeroext %26)
  store i32 %27, i32* %10, align 4
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %30 = load i8, i8* %7, align 1
  %31 = call i32 @ov511_i2c_read_internal(%struct.usb_ov511* %29, i8 zeroext %30)
  store i32 %31, i32* %10, align 4
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %10, align 4
  %34 = icmp slt i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %5, align 4
  br label %75

37:                                               ; preds = %32
  %38 = load i32, i32* %10, align 4
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %11, align 1
  %40 = load i8, i8* %9, align 1
  %41 = zext i8 %40 to i32
  %42 = xor i32 %41, -1
  %43 = load i8, i8* %11, align 1
  %44 = zext i8 %43 to i32
  %45 = and i32 %44, %42
  %46 = trunc i32 %45 to i8
  store i8 %46, i8* %11, align 1
  %47 = load i8, i8* %9, align 1
  %48 = zext i8 %47 to i32
  %49 = load i8, i8* %8, align 1
  %50 = zext i8 %49 to i32
  %51 = and i32 %50, %48
  %52 = trunc i32 %51 to i8
  store i8 %52, i8* %8, align 1
  %53 = load i8, i8* %11, align 1
  %54 = zext i8 %53 to i32
  %55 = load i8, i8* %8, align 1
  %56 = zext i8 %55 to i32
  %57 = or i32 %54, %56
  %58 = trunc i32 %57 to i8
  store i8 %58, i8* %12, align 1
  br label %59

59:                                               ; preds = %37, %16
  %60 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %61 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @BCL_OV518, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %70

65:                                               ; preds = %59
  %66 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %67 = load i8, i8* %7, align 1
  %68 = load i8, i8* %12, align 1
  %69 = call i32 @ov518_i2c_write_internal(%struct.usb_ov511* %66, i8 zeroext %67, i8 zeroext %68)
  store i32 %69, i32* %5, align 4
  br label %75

70:                                               ; preds = %59
  %71 = load %struct.usb_ov511*, %struct.usb_ov511** %6, align 8
  %72 = load i8, i8* %7, align 1
  %73 = load i8, i8* %12, align 1
  %74 = call i32 @ov511_i2c_write_internal(%struct.usb_ov511* %71, i8 zeroext %72, i8 zeroext %73)
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %70, %65, %35
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i32 @ov518_i2c_read_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @ov511_i2c_read_internal(%struct.usb_ov511*, i8 zeroext) #1

declare dso_local i32 @ov518_i2c_write_internal(%struct.usb_ov511*, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @ov511_i2c_write_internal(%struct.usb_ov511*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
