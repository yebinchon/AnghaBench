; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_enable_4bit_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_enable_4bit_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"configuring %d-data-line%s mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"s\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@CB710_MMC_CONFIG1_PORT = common dso_local global i32 0, align 4
@CB710_MMC_C1_4BIT_DATA_BUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cb710_slot*, i32)* @cb710_mmc_enable_4bit_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_enable_4bit_data(%struct.cb710_slot* %0, i32 %1) #0 {
  %3 = alloca %struct.cb710_slot*, align 8
  %4 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %6 = call i32 @cb710_slot_dev(%struct.cb710_slot* %5)
  %7 = load i32, i32* %4, align 4
  %8 = icmp ne i32 %7, 0
  %9 = zext i1 %8 to i64
  %10 = select i1 %8, i32 4, i32 1
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %15 = call i32 @dev_dbg(i32 %6, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %10, i8* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %20 = load i32, i32* @CB710_MMC_CONFIG1_PORT, align 4
  %21 = load i32, i32* @CB710_MMC_C1_4BIT_DATA_BUS, align 4
  %22 = call i32 @cb710_modify_port_8(%struct.cb710_slot* %19, i32 %20, i32 %21, i32 0)
  br label %28

23:                                               ; preds = %2
  %24 = load %struct.cb710_slot*, %struct.cb710_slot** %3, align 8
  %25 = load i32, i32* @CB710_MMC_CONFIG1_PORT, align 4
  %26 = load i32, i32* @CB710_MMC_C1_4BIT_DATA_BUS, align 4
  %27 = call i32 @cb710_modify_port_8(%struct.cb710_slot* %24, i32 %25, i32 0, i32 %26)
  br label %28

28:                                               ; preds = %23, %18
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, i8*) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

declare dso_local i32 @cb710_modify_port_8(%struct.cb710_slot*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
