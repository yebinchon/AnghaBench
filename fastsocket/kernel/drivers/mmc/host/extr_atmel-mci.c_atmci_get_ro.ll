; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_get_ro.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_atmel-mci.c_atmci_get_ro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_host = type { i32 }
%struct.atmel_mci_slot = type { i32 }

@ENOSYS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"card is %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"read-write\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_host*)* @atmci_get_ro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atmci_get_ro(%struct.mmc_host* %0) #0 {
  %2 = alloca %struct.mmc_host*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.atmel_mci_slot*, align 8
  store %struct.mmc_host* %0, %struct.mmc_host** %2, align 8
  %5 = load i32, i32* @ENOSYS, align 4
  %6 = sub nsw i32 0, %5
  store i32 %6, i32* %3, align 4
  %7 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %8 = call %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host* %7)
  store %struct.atmel_mci_slot* %8, %struct.atmel_mci_slot** %4, align 8
  %9 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %4, align 8
  %10 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i64 @gpio_is_valid(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.atmel_mci_slot*, %struct.atmel_mci_slot** %4, align 8
  %16 = getelementptr inbounds %struct.atmel_mci_slot, %struct.atmel_mci_slot* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @gpio_get_value(i32 %17)
  store i32 %18, i32* %3, align 4
  %19 = load %struct.mmc_host*, %struct.mmc_host** %2, align 8
  %20 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %19, i32 0, i32 0
  %21 = load i32, i32* %3, align 4
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %25 = call i32 @dev_dbg(i32* %20, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load i32, i32* %3, align 4
  ret i32 %27
}

declare dso_local %struct.atmel_mci_slot* @mmc_priv(%struct.mmc_host*) #1

declare dso_local i64 @gpio_is_valid(i32) #1

declare dso_local i32 @gpio_get_value(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
