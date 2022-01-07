; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_setflashmode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_setflashmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.airo_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@FLAG_FLASHING = common dso_local global i32 0, align 4
@SWS0 = common dso_local global i32 0, align 4
@FLASH_COMMAND = common dso_local global i32 0, align 4
@SWS1 = common dso_local global i32 0, align 4
@probe = common dso_local global i64 0, align 8
@COMMAND = common dso_local global i32 0, align 4
@SWS2 = common dso_local global i32 0, align 4
@SWS3 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Waitbusy hang after setflash mode\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.airo_info*)* @setflashmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @setflashmode(%struct.airo_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.airo_info*, align 8
  store %struct.airo_info* %0, %struct.airo_info** %3, align 8
  %4 = load i32, i32* @FLAG_FLASHING, align 4
  %5 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %6 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %5, i32 0, i32 1
  %7 = call i32 @set_bit(i32 %4, i32* %6)
  %8 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %9 = load i32, i32* @SWS0, align 4
  %10 = load i32, i32* @FLASH_COMMAND, align 4
  %11 = call i32 @OUT4500(%struct.airo_info* %8, i32 %9, i32 %10)
  %12 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %13 = load i32, i32* @SWS1, align 4
  %14 = load i32, i32* @FLASH_COMMAND, align 4
  %15 = call i32 @OUT4500(%struct.airo_info* %12, i32 %13, i32 %14)
  %16 = load i64, i64* @probe, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %20 = load i32, i32* @SWS0, align 4
  %21 = load i32, i32* @FLASH_COMMAND, align 4
  %22 = call i32 @OUT4500(%struct.airo_info* %19, i32 %20, i32 %21)
  %23 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %24 = load i32, i32* @COMMAND, align 4
  %25 = call i32 @OUT4500(%struct.airo_info* %23, i32 %24, i32 16)
  br label %38

26:                                               ; preds = %1
  %27 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %28 = load i32, i32* @SWS2, align 4
  %29 = load i32, i32* @FLASH_COMMAND, align 4
  %30 = call i32 @OUT4500(%struct.airo_info* %27, i32 %28, i32 %29)
  %31 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %32 = load i32, i32* @SWS3, align 4
  %33 = load i32, i32* @FLASH_COMMAND, align 4
  %34 = call i32 @OUT4500(%struct.airo_info* %31, i32 %32, i32 %33)
  %35 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %36 = load i32, i32* @COMMAND, align 4
  %37 = call i32 @OUT4500(%struct.airo_info* %35, i32 %36, i32 0)
  br label %38

38:                                               ; preds = %26, %18
  %39 = call i32 @msleep(i32 500)
  %40 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %41 = call i32 @waitbusy(%struct.airo_info* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %38
  %44 = load i32, i32* @FLAG_FLASHING, align 4
  %45 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %46 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %45, i32 0, i32 1
  %47 = call i32 @clear_bit(i32 %44, i32* %46)
  %48 = load %struct.airo_info*, %struct.airo_info** %3, align 8
  %49 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %48, i32 0, i32 0
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @airo_print_info(i32 %52, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %54 = load i32, i32* @EIO, align 4
  %55 = sub nsw i32 0, %54
  store i32 %55, i32* %2, align 4
  br label %57

56:                                               ; preds = %38
  store i32 0, i32* %2, align 4
  br label %57

57:                                               ; preds = %56, %43
  %58 = load i32, i32* %2, align 4
  ret i32 %58
}

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @waitbusy(%struct.airo_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @airo_print_info(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
