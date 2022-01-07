; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_saa5246a.c_saa5246a_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.saa5246a_device = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@SAA5246A_REGISTER_R0 = common dso_local global i32 0, align 4
@R0_SELECT_R11 = common dso_local global i32 0, align 4
@R0_PLL_TIME_CONSTANT_LONG = common dso_local global i32 0, align 4
@R0_ENABLE_nODD_EVEN_OUTPUT = common dso_local global i32 0, align 4
@R0_ENABLE_HDR_POLL = common dso_local global i32 0, align 4
@R0_DO_NOT_FORCE_nODD_EVEN_LOW_IF_PICTURE_DISPLAYED = common dso_local global i32 0, align 4
@R0_NO_FREE_RUN_PLL = common dso_local global i32 0, align 4
@R0_NO_AUTOMATIC_FASTEXT_PROMPT = common dso_local global i32 0, align 4
@R1_NON_INTERLACED_312_312_LINES = common dso_local global i32 0, align 4
@R1_DEW = common dso_local global i32 0, align 4
@R1_EXTENDED_PACKET_DISABLE = common dso_local global i32 0, align 4
@R1_DAUS_ALL_ON = common dso_local global i32 0, align 4
@R1_8_BITS_NO_PARITY = common dso_local global i32 0, align 4
@R1_VCS_TO_SCS = common dso_local global i32 0, align 4
@COMMAND_END = common dso_local global i32 0, align 4
@SAA5246A_REGISTER_R4 = common dso_local global i32 0, align 4
@R4_DISPLAY_PAGE_4 = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @saa5246a_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @saa5246a_open(%struct.file* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.file*, align 8
  %4 = alloca %struct.saa5246a_device*, align 8
  store %struct.file* %0, %struct.file** %3, align 8
  %5 = load %struct.file*, %struct.file** %3, align 8
  %6 = call %struct.saa5246a_device* @video_drvdata(%struct.file* %5)
  store %struct.saa5246a_device* %6, %struct.saa5246a_device** %4, align 8
  %7 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %8 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %7, i32 0, i32 0
  %9 = call i64 @test_and_set_bit(i32 0, i32* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %1
  %12 = load i32, i32* @EBUSY, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %58

14:                                               ; preds = %1
  %15 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %16 = load i32, i32* @SAA5246A_REGISTER_R0, align 4
  %17 = load i32, i32* @R0_SELECT_R11, align 4
  %18 = load i32, i32* @R0_PLL_TIME_CONSTANT_LONG, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @R0_ENABLE_nODD_EVEN_OUTPUT, align 4
  %21 = or i32 %19, %20
  %22 = load i32, i32* @R0_ENABLE_HDR_POLL, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @R0_DO_NOT_FORCE_nODD_EVEN_LOW_IF_PICTURE_DISPLAYED, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @R0_NO_FREE_RUN_PLL, align 4
  %27 = or i32 %25, %26
  %28 = load i32, i32* @R0_NO_AUTOMATIC_FASTEXT_PROMPT, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @R1_NON_INTERLACED_312_312_LINES, align 4
  %31 = load i32, i32* @R1_DEW, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @R1_EXTENDED_PACKET_DISABLE, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @R1_DAUS_ALL_ON, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @R1_8_BITS_NO_PARITY, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @R1_VCS_TO_SCS, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @COMMAND_END, align 4
  %42 = call i64 (%struct.saa5246a_device*, i32, i32, i32, ...) @i2c_senddata(%struct.saa5246a_device* %15, i32 %16, i32 %29, i32 %40, i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %14
  %45 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %46 = load i32, i32* @SAA5246A_REGISTER_R4, align 4
  %47 = load i32, i32* @R4_DISPLAY_PAGE_4, align 4
  %48 = load i32, i32* @COMMAND_END, align 4
  %49 = call i64 (%struct.saa5246a_device*, i32, i32, i32, ...) @i2c_senddata(%struct.saa5246a_device* %45, i32 %46, i32 %47, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %44, %14
  %52 = load %struct.saa5246a_device*, %struct.saa5246a_device** %4, align 8
  %53 = getelementptr inbounds %struct.saa5246a_device, %struct.saa5246a_device* %52, i32 0, i32 0
  %54 = call i32 @clear_bit(i32 0, i32* %53)
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %51, %11
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local %struct.saa5246a_device* @video_drvdata(%struct.file*) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i64 @i2c_senddata(%struct.saa5246a_device*, i32, i32, i32, ...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
