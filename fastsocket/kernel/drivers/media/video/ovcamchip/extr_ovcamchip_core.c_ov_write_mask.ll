; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ov_write_mask.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/ovcamchip/extr_ovcamchip_core.c_ov_write_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_client = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ov_write_mask(%struct.i2c_client* %0, i8 zeroext %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.i2c_client*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i8, align 1
  %10 = alloca i32, align 4
  %11 = alloca i8, align 1
  %12 = alloca i8, align 1
  store %struct.i2c_client* %0, %struct.i2c_client** %6, align 8
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
  br label %46

18:                                               ; preds = %4
  %19 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %20 = load i8, i8* %7, align 1
  %21 = call i32 @ov_read(%struct.i2c_client* %19, i8 zeroext %20, i8* %11)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %10, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %18
  %25 = load i32, i32* %10, align 4
  store i32 %25, i32* %5, align 4
  br label %51

26:                                               ; preds = %18
  %27 = load i8, i8* %9, align 1
  %28 = zext i8 %27 to i32
  %29 = xor i32 %28, -1
  %30 = load i8, i8* %11, align 1
  %31 = zext i8 %30 to i32
  %32 = and i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %11, align 1
  %34 = load i8, i8* %9, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* %8, align 1
  %37 = zext i8 %36 to i32
  %38 = and i32 %37, %35
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %8, align 1
  %40 = load i8, i8* %11, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* %8, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  store i8 %45, i8* %12, align 1
  br label %46

46:                                               ; preds = %26, %16
  %47 = load %struct.i2c_client*, %struct.i2c_client** %6, align 8
  %48 = load i8, i8* %7, align 1
  %49 = load i8, i8* %12, align 1
  %50 = call i32 @ov_write(%struct.i2c_client* %47, i8 zeroext %48, i8 zeroext %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %46, %24
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ov_read(%struct.i2c_client*, i8 zeroext, i8*) #1

declare dso_local i32 @ov_write(%struct.i2c_client*, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
