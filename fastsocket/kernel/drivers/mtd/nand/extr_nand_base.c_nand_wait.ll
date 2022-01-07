; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nand_base.c_nand_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mtd_info = type { i32 }
%struct.nand_chip = type { i32, i32, i32 (%struct.mtd_info.0*)*, i64 (%struct.mtd_info.1*)*, i32 (%struct.mtd_info.2*, i32, i32, i32)* }
%struct.mtd_info.0 = type opaque
%struct.mtd_info.1 = type opaque
%struct.mtd_info.2 = type opaque

@jiffies = common dso_local global i64 0, align 8
@FL_ERASING = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@nand_led_trigger = common dso_local global i32 0, align 4
@LED_FULL = common dso_local global i32 0, align 4
@NAND_IS_AND = common dso_local global i32 0, align 4
@NAND_CMD_STATUS_MULTI = common dso_local global i32 0, align 4
@NAND_CMD_STATUS = common dso_local global i32 0, align 4
@NAND_STATUS_READY = common dso_local global i32 0, align 4
@LED_OFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mtd_info*, %struct.nand_chip*)* @nand_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nand_wait(%struct.mtd_info* %0, %struct.nand_chip* %1) #0 {
  %3 = alloca %struct.mtd_info*, align 8
  %4 = alloca %struct.nand_chip*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mtd_info* %0, %struct.mtd_info** %3, align 8
  store %struct.nand_chip* %1, %struct.nand_chip** %4, align 8
  %8 = load i64, i64* @jiffies, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* @FL_ERASING, align 4
  %14 = icmp eq i32 %12, %13
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  %16 = load i32, i32* @HZ, align 4
  %17 = mul nsw i32 %16, 400
  %18 = sdiv i32 %17, 1000
  %19 = sext i32 %18 to i64
  %20 = load i64, i64* %5, align 8
  %21 = add i64 %20, %19
  store i64 %21, i64* %5, align 8
  br label %29

22:                                               ; preds = %2
  %23 = load i32, i32* @HZ, align 4
  %24 = mul nsw i32 %23, 20
  %25 = sdiv i32 %24, 1000
  %26 = sext i32 %25 to i64
  %27 = load i64, i64* %5, align 8
  %28 = add i64 %27, %26
  store i64 %28, i64* %5, align 8
  br label %29

29:                                               ; preds = %22, %15
  %30 = load i32, i32* @nand_led_trigger, align 4
  %31 = load i32, i32* @LED_FULL, align 4
  %32 = call i32 @led_trigger_event(i32 %30, i32 %31)
  %33 = call i32 @ndelay(i32 100)
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @FL_ERASING, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %29
  %38 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %39 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @NAND_IS_AND, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %52

44:                                               ; preds = %37
  %45 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %46 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %45, i32 0, i32 4
  %47 = load i32 (%struct.mtd_info.2*, i32, i32, i32)*, i32 (%struct.mtd_info.2*, i32, i32, i32)** %46, align 8
  %48 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %49 = bitcast %struct.mtd_info* %48 to %struct.mtd_info.2*
  %50 = load i32, i32* @NAND_CMD_STATUS_MULTI, align 4
  %51 = call i32 %47(%struct.mtd_info.2* %49, i32 %50, i32 -1, i32 -1)
  br label %60

52:                                               ; preds = %37, %29
  %53 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %54 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %53, i32 0, i32 4
  %55 = load i32 (%struct.mtd_info.2*, i32, i32, i32)*, i32 (%struct.mtd_info.2*, i32, i32, i32)** %54, align 8
  %56 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %57 = bitcast %struct.mtd_info* %56 to %struct.mtd_info.2*
  %58 = load i32, i32* @NAND_CMD_STATUS, align 4
  %59 = call i32 %55(%struct.mtd_info.2* %57, i32 %58, i32 -1, i32 -1)
  br label %60

60:                                               ; preds = %52, %44
  br label %61

61:                                               ; preds = %93, %60
  %62 = load i64, i64* @jiffies, align 8
  %63 = load i64, i64* %5, align 8
  %64 = call i64 @time_before(i64 %62, i64 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %95

66:                                               ; preds = %61
  %67 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %68 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %67, i32 0, i32 3
  %69 = load i64 (%struct.mtd_info.1*)*, i64 (%struct.mtd_info.1*)** %68, align 8
  %70 = icmp ne i64 (%struct.mtd_info.1*)* %69, null
  br i1 %70, label %71, label %81

71:                                               ; preds = %66
  %72 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %72, i32 0, i32 3
  %74 = load i64 (%struct.mtd_info.1*)*, i64 (%struct.mtd_info.1*)** %73, align 8
  %75 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %76 = bitcast %struct.mtd_info* %75 to %struct.mtd_info.1*
  %77 = call i64 %74(%struct.mtd_info.1* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %71
  br label %95

80:                                               ; preds = %71
  br label %93

81:                                               ; preds = %66
  %82 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %83 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %82, i32 0, i32 2
  %84 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %83, align 8
  %85 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %86 = bitcast %struct.mtd_info* %85 to %struct.mtd_info.0*
  %87 = call i32 %84(%struct.mtd_info.0* %86)
  %88 = load i32, i32* @NAND_STATUS_READY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %81
  br label %95

92:                                               ; preds = %81
  br label %93

93:                                               ; preds = %92, %80
  %94 = call i32 (...) @cond_resched()
  br label %61

95:                                               ; preds = %91, %79, %61
  %96 = load i32, i32* @nand_led_trigger, align 4
  %97 = load i32, i32* @LED_OFF, align 4
  %98 = call i32 @led_trigger_event(i32 %96, i32 %97)
  %99 = load %struct.nand_chip*, %struct.nand_chip** %4, align 8
  %100 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %99, i32 0, i32 2
  %101 = load i32 (%struct.mtd_info.0*)*, i32 (%struct.mtd_info.0*)** %100, align 8
  %102 = load %struct.mtd_info*, %struct.mtd_info** %3, align 8
  %103 = bitcast %struct.mtd_info* %102 to %struct.mtd_info.0*
  %104 = call i32 %101(%struct.mtd_info.0* %103)
  store i32 %104, i32* %6, align 4
  %105 = load i32, i32* %6, align 4
  ret i32 %105
}

declare dso_local i32 @led_trigger_event(i32, i32) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
