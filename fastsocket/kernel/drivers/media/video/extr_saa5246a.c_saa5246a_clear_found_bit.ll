; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_clear_found_bit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_clear_found_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa5246a_device = type { i32 }

@SAA5246A_REGISTER_R8 = common dso_local global i32 0, align 4
@R8_DO_NOT_CLEAR_MEMORY = common dso_local global i8 0, align 1
@R9_CURSER_ROW_25 = common dso_local global i32 0, align 4
@R10_CURSER_COLUMN_8 = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ROW25_COLUMN8_PAGE_NOT_FOUND = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa5246a_device*, i8)* @saa5246a_clear_found_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_clear_found_bit(%struct.saa5246a_device* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa5246a_device*, align 8
  %5 = alloca i8, align 1
  %6 = alloca i8, align 1
  store %struct.saa5246a_device* %0, %struct.saa5246a_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %7 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %8 = load i32, i32* @SAA5246A_REGISTER_R8, align 4
  %9 = load i8, i8* %5, align 1
  %10 = zext i8 %9 to i32
  %11 = load i8, i8* @R8_DO_NOT_CLEAR_MEMORY, align 1
  %12 = zext i8 %11 to i32
  %13 = or i32 %10, %12
  %14 = trunc i32 %13 to i8
  %15 = load i32, i32* @R9_CURSER_ROW_25, align 4
  %16 = load i32, i32* @R10_CURSER_COLUMN_8, align 4
  %17 = load i32, i32* @COMMAND_END, align 4
  %18 = trunc i32 %17 to i8
  %19 = call i64 (%struct.saa5246a_device*, i32, i8, i32, i32, i8, ...) @i2c_senddata(%struct.saa5246a_device* %7, i32 %8, i8 zeroext %14, i32 %15, i32 %16, i8 zeroext %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %25, label %21

21:                                               ; preds = %2
  %22 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %23 = call i64 @i2c_getdata(%struct.saa5246a_device* %22, i32 1, i8* %6)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %21, %2
  %26 = load i32, i32* @EIO, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %53

28:                                               ; preds = %21
  %29 = load i8, i8* @ROW25_COLUMN8_PAGE_NOT_FOUND, align 1
  %30 = zext i8 %29 to i32
  %31 = load i8, i8* %6, align 1
  %32 = zext i8 %31 to i32
  %33 = or i32 %32, %30
  %34 = trunc i32 %33 to i8
  store i8 %34, i8* %6, align 1
  %35 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %36 = load i32, i32* @SAA5246A_REGISTER_R8, align 4
  %37 = load i8, i8* %5, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* @R8_DO_NOT_CLEAR_MEMORY, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = trunc i32 %41 to i8
  %43 = load i32, i32* @R9_CURSER_ROW_25, align 4
  %44 = load i32, i32* @R10_CURSER_COLUMN_8, align 4
  %45 = load i8, i8* %6, align 1
  %46 = load i32, i32* @COMMAND_END, align 4
  %47 = call i64 (%struct.saa5246a_device*, i32, i8, i32, i32, i8, ...) @i2c_senddata(%struct.saa5246a_device* %35, i32 %36, i8 zeroext %42, i32 %43, i32 %44, i8 zeroext %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %28
  %50 = load i32, i32* @EIO, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %53

52:                                               ; preds = %28
  store i32 0, i32* %3, align 4
  br label %53

53:                                               ; preds = %52, %49, %25
  %54 = load i32, i32* %3, align 4
  ret i32 %54
}

declare dso_local i64 @i2c_senddata(%struct.saa5246a_device*, i32, i8 zeroext, i32, i32, i8 zeroext, ...) #1

declare dso_local i64 @i2c_getdata(%struct.saa5246a_device*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
