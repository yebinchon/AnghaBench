; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_fifo_hack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/host/extr_cb710-mmc.c_cb710_mmc_fifo_hack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cb710_slot = type { i32 }

@CB710_MMC_DATA_PORT = common dso_local global i32 0, align 4
@CB710_MMC_STATUS0_PORT = common dso_local global i32 0, align 4
@CB710_MMC_S0_FIFO_UNDERFLOW = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"FIFO-read-hack: expected STATUS0 bit was %s\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"set.\00", align 1
@.str.2 = private unnamed_addr constant [9 x i8] c"NOT SET!\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"FIFO-read-hack: dwords ignored: %08X %08X - %s\0A\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"BAD (NOT ZERO)!\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ok\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cb710_slot*)* @cb710_mmc_fifo_hack to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cb710_mmc_fifo_hack(%struct.cb710_slot* %0) #0 {
  %2 = alloca %struct.cb710_slot*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.cb710_slot* %0, %struct.cb710_slot** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %7 = load i32, i32* @CB710_MMC_DATA_PORT, align 4
  %8 = call i32 @cb710_read_port_32(%struct.cb710_slot* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %10 = load i32, i32* @CB710_MMC_DATA_PORT, align 4
  %11 = call i32 @cb710_read_port_32(%struct.cb710_slot* %9, i32 %10)
  store i32 %11, i32* %4, align 4
  %12 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %13 = load i32, i32* @CB710_MMC_STATUS0_PORT, align 4
  %14 = call i32 @cb710_read_port_8(%struct.cb710_slot* %12, i32 %13)
  %15 = load i32, i32* @CB710_MMC_S0_FIFO_UNDERFLOW, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %20 = load i32, i32* @CB710_MMC_STATUS0_PORT, align 4
  %21 = load i32, i32* @CB710_MMC_S0_FIFO_UNDERFLOW, align 4
  %22 = call i32 @cb710_write_port_8(%struct.cb710_slot* %19, i32 %20, i32 %21)
  store i32 1, i32* %5, align 4
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %25 = call i32 @cb710_slot_dev(%struct.cb710_slot* %24)
  %26 = load i32, i32* %5, align 4
  %27 = icmp ne i32 %26, 0
  %28 = zext i1 %27 to i64
  %29 = select i1 %27, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0)
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %25, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i8* %29)
  %31 = load %struct.cb710_slot*, %struct.cb710_slot** %2, align 8
  %32 = call i32 @cb710_slot_dev(%struct.cb710_slot* %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* %3, align 4
  %36 = load i32, i32* %4, align 4
  %37 = or i32 %35, %36
  %38 = icmp ne i32 %37, 0
  %39 = zext i1 %38 to i64
  %40 = select i1 %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0)
  %41 = call i32 (i32, i8*, ...) @dev_dbg(i32 %32, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0), i32 %33, i32 %34, i8* %40)
  ret void
}

declare dso_local i32 @cb710_read_port_32(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_read_port_8(%struct.cb710_slot*, i32) #1

declare dso_local i32 @cb710_write_port_8(%struct.cb710_slot*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @cb710_slot_dev(%struct.cb710_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
