; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_set_ios.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_set_ios.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.mmc_ios = type { i32, i64, i32 }
%struct.cb710_slot = type { i32 }
%struct.cb710_mmc_reader = type { i64 }

@.str = private unnamed_addr constant [49 x i8] c"no card inserted - ignoring bus powerup request\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"powerup failed (%d)- retrying\0A\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"powerup retry failed (%d) - expect errors\0A\00", align 1
@MMC_BUS_WIDTH_1 = common dso_local global i64 0, align 8
@CB710_MMC_IE_TEST_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mmc_host*, %struct.mmc_ios*)* @cb710_mmc_set_ios to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_set_ios(%struct.mmc_host* %0, %struct.mmc_ios* %1) #0 {
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.mmc_ios*, align 8
  %5 = alloca %struct.cb710_slot*, align 8
  %6 = alloca %struct.cb710_mmc_reader*, align 8
  %7 = alloca i32, align 4
  store %struct.mmc_host* %0, %struct.mmc_host** %3, align 8
  store %struct.mmc_ios* %1, %struct.mmc_ios** %4, align 8
  %8 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %9 = call %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host* %8)
  store %struct.cb710_slot* %9, %struct.cb710_slot** %5, align 8
  %10 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %11 = call %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host* %10)
  store %struct.cb710_mmc_reader* %11, %struct.cb710_mmc_reader** %6, align 8
  %12 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %13 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %14 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @cb710_mmc_set_clock(%struct.mmc_host* %12, i32 %15)
  %17 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %18 = call i32 @cb710_mmc_is_card_inserted(%struct.cb710_slot* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %26, label %20

20:                                               ; preds = %2
  %21 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %22 = call i32 @cb710_slot_dev(%struct.cb710_slot* %21)
  %23 = call i32 @dev_dbg(i32 %22, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %24, i32 0, i32 0
  store i32 130, i32* %25, align 8
  br label %26

26:                                               ; preds = %20, %2
  %27 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %28 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %32 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br i1 %34, label %35, label %73

35:                                               ; preds = %26
  %36 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %37 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  switch i32 %38, label %71 [
    i32 129, label %39
    i32 130, label %65
    i32 128, label %70
  ]

39:                                               ; preds = %35
  %40 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %41 = call i32 @cb710_mmc_powerup(%struct.cb710_slot* %40)
  store i32 %41, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %62

44:                                               ; preds = %39
  %45 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %46 = call i32 @cb710_slot_dev(%struct.cb710_slot* %45)
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @dev_warn(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %47)
  %49 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %50 = call i32 @cb710_mmc_powerdown(%struct.cb710_slot* %49)
  %51 = call i32 @udelay(i32 1)
  %52 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %53 = call i32 @cb710_mmc_powerup(%struct.cb710_slot* %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %44
  %57 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %58 = call i32 @cb710_slot_dev(%struct.cb710_slot* %57)
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @dev_warn(i32 %58, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %56, %44
  br label %62

62:                                               ; preds = %61, %39
  %63 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %64 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %63, i32 0, i32 0
  store i64 129, i64* %64, align 8
  br label %72

65:                                               ; preds = %35
  %66 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %67 = call i32 @cb710_mmc_powerdown(%struct.cb710_slot* %66)
  %68 = load %struct.cb710_mmc_reader*, %struct.cb710_mmc_reader** %6, align 8
  %69 = getelementptr inbounds %struct.cb710_mmc_reader, %struct.cb710_mmc_reader* %68, i32 0, i32 0
  store i64 130, i64* %69, align 8
  br label %72

70:                                               ; preds = %35
  br label %71

71:                                               ; preds = %35, %70
  br label %72

72:                                               ; preds = %71, %65, %62
  br label %73

73:                                               ; preds = %72, %26
  %74 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %75 = load %struct.mmc_ios*, %struct.mmc_ios** %4, align 8
  %76 = getelementptr inbounds %struct.mmc_ios, %struct.mmc_ios* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @MMC_BUS_WIDTH_1, align 8
  %79 = icmp ne i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @cb710_mmc_enable_4bit_data(%struct.cb710_slot* %74, i32 %80)
  %82 = load %struct.cb710_slot*, %struct.cb710_slot** %5, align 8
  %83 = load i32, i32* @CB710_MMC_IE_TEST_MASK, align 4
  %84 = call i32 @cb710_mmc_enable_irq(%struct.cb710_slot* %82, i32 %83, i32 0)
  ret void
}

declare dso_local %struct.cb710_slot* @cb710_mmc_to_slot(%struct.mmc_host*) #1

declare dso_local %struct.cb710_mmc_reader* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i32 @cb710_mmc_set_clock(%struct.mmc_host*, i32) #1

declare dso_local i32 @cb710_mmc_is_card_inserted(%struct.cb710_slot*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_mmc_powerup(%struct.cb710_slot*) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i32 @cb710_mmc_powerdown(%struct.cb710_slot*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @cb710_mmc_enable_4bit_data(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_mmc_enable_irq(%struct.cb710_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
