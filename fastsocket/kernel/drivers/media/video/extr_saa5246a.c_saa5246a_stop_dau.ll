; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_stop_dau.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_stop_dau.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.saa5246a_device = type { i32* }

@NUM_DAUS = common dso_local global i8 0, align 1
@EINVAL = common dso_local global i32 0, align 4
@SAA5246A_REGISTER_R2 = common dso_local global i32 0, align 4
@R2_IN_R3_SELECT_PAGE_HUNDREDS = common dso_local global i8 0, align 1
@R2_BANK_0 = common dso_local global i8 0, align 1
@R2_HAMMING_CHECK_OFF = common dso_local global i8 0, align 1
@R3_PAGE_HUNDREDS_0 = common dso_local global i32 0, align 4
@R3_HOLD_PAGE = common dso_local global i32 0, align 4
@R3_PAGE_HUNDREDS_DO_NOT_CARE = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.saa5246a_device*, i8)* @saa5246a_stop_dau to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_stop_dau(%struct.saa5246a_device* %0, i8 zeroext %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.saa5246a_device*, align 8
  %5 = alloca i8, align 1
  store %struct.saa5246a_device* %0, %struct.saa5246a_device** %4, align 8
  store i8 %1, i8* %5, align 1
  %6 = load i8, i8* %5, align 1
  %7 = zext i8 %6 to i32
  %8 = load i8, i8* @NUM_DAUS, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp sge i32 %7, %9
  br i1 %10, label %11, label %14

11:                                               ; preds = %2
  %12 = load i32, i32* @EINVAL, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %48

14:                                               ; preds = %2
  %15 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %16 = load i32, i32* @SAA5246A_REGISTER_R2, align 4
  %17 = load i8, i8* @R2_IN_R3_SELECT_PAGE_HUNDREDS, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %5, align 1
  %20 = zext i8 %19 to i32
  %21 = shl i32 %20, 4
  %22 = or i32 %18, %21
  %23 = load i8, i8* @R2_BANK_0, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %22, %24
  %26 = load i8, i8* @R2_HAMMING_CHECK_OFF, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = trunc i32 %28 to i8
  %30 = load i32, i32* @R3_PAGE_HUNDREDS_0, align 4
  %31 = load i32, i32* @R3_HOLD_PAGE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @R3_PAGE_HUNDREDS_DO_NOT_CARE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @COMMAND_END, align 4
  %36 = call i64 @i2c_senddata(%struct.saa5246a_device* %15, i32 %16, i8 zeroext %29, i32 %34, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %14
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %48

41:                                               ; preds = %14
  %42 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %43 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i8, i8* %5, align 1
  %46 = zext i8 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  store i32 0, i32* %47, align 4
  store i32 0, i32* %3, align 4
  br label %48

48:                                               ; preds = %41, %38, %11
  %49 = load i32, i32* %3, align 4
  ret i32 %49
}

declare dso_local i64 @i2c_senddata(%struct.saa5246a_device*, i32, i8 zeroext, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
