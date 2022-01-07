; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_saturation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_ov511.c_sensor_set_saturation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ov511 = type { i32, i16, i64 }

@.str = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@EIO = common dso_local global i32 0, align 4
@OV7610_REG_SAT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Unsupported with this sensor\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.usb_ov511*, i16)* @sensor_set_saturation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sensor_set_saturation(%struct.usb_ov511* %0, i16 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.usb_ov511*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i32, align 4
  store %struct.usb_ov511* %0, %struct.usb_ov511** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load i16, i16* %5, align 2
  %8 = zext i16 %7 to i32
  %9 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %11 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %2
  %15 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %16 = call i64 @ov51x_stop(%struct.usb_ov511* %15)
  %17 = icmp slt i64 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %14
  %19 = load i32, i32* @EIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %78

21:                                               ; preds = %14
  br label %22

22:                                               ; preds = %21, %2
  %23 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %24 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  switch i32 %25, label %61 [
    i32 131, label %26
    i32 129, label %26
    i32 133, label %26
    i32 132, label %26
    i32 130, label %38
    i32 128, label %50
  ]

26:                                               ; preds = %22, %22, %22, %22
  %27 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %28 = load i32, i32* @OV7610_REG_SAT, align 4
  %29 = load i16, i16* %5, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %30, 8
  %32 = trunc i32 %31 to i16
  %33 = call i32 @i2c_w(%struct.usb_ov511* %27, i32 %28, i16 zeroext %32)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %26
  br label %69

37:                                               ; preds = %26
  br label %65

38:                                               ; preds = %22
  %39 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %40 = load i32, i32* @OV7610_REG_SAT, align 4
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = ashr i32 %42, 8
  %44 = trunc i32 %43 to i16
  %45 = call i32 @i2c_w(%struct.usb_ov511* %39, i32 %40, i16 zeroext %44)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %69

49:                                               ; preds = %38
  br label %65

50:                                               ; preds = %22
  %51 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %52 = load i16, i16* %5, align 2
  %53 = zext i16 %52 to i32
  %54 = ashr i32 %53, 9
  %55 = trunc i32 %54 to i16
  %56 = call i32 @i2c_w(%struct.usb_ov511* %51, i32 12, i16 zeroext %55)
  store i32 %56, i32* %6, align 4
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %50
  br label %69

60:                                               ; preds = %50
  br label %65

61:                                               ; preds = %22
  %62 = call i32 (i32, i8*, ...) @PDEBUG(i32 3, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  %63 = load i32, i32* @EPERM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %6, align 4
  br label %69

65:                                               ; preds = %60, %49, %37
  store i32 0, i32* %6, align 4
  %66 = load i16, i16* %5, align 2
  %67 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %68 = getelementptr inbounds %struct.usb_ov511, %struct.usb_ov511* %67, i32 0, i32 1
  store i16 %66, i16* %68, align 4
  br label %69

69:                                               ; preds = %65, %61, %59, %48, %36
  %70 = load %struct.usb_ov511*, %struct.usb_ov511** %4, align 8
  %71 = call i64 @ov51x_restart(%struct.usb_ov511* %70)
  %72 = icmp slt i64 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %69
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %3, align 4
  br label %78

76:                                               ; preds = %69
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %3, align 4
  br label %78

78:                                               ; preds = %76, %73, %18
  %79 = load i32, i32* %3, align 4
  ret i32 %79
}

declare dso_local i32 @PDEBUG(i32, i8*, ...) #1

declare dso_local i64 @ov51x_stop(%struct.usb_ov511*) #1

declare dso_local i32 @i2c_w(%struct.usb_ov511*, i32, i16 zeroext) #1

declare dso_local i64 @ov51x_restart(%struct.usb_ov511*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
