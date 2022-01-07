; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_do_rom_fast_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/qlcnic/extr_qlcnic_init.c_do_rom_fast_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qlcnic_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@QLCNIC_ROMUSB_ROM_ADDRESS = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_ABYTE_CNT = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_INSTR_OPCODE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Error waiting for rom done\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@QLCNIC_ROMUSB_ROM_RDATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qlcnic_adapter*, i32, i32*)* @do_rom_fast_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rom_fast_read(%struct.qlcnic_adapter* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qlcnic_adapter*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  store %struct.qlcnic_adapter* %0, %struct.qlcnic_adapter** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %8 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %9 = load i32, i32* @QLCNIC_ROMUSB_ROM_ADDRESS, align 4
  %10 = load i32, i32* %6, align 4
  %11 = call i32 @QLCWR32(%struct.qlcnic_adapter* %8, i32 %9, i32 %10)
  %12 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %13 = load i32, i32* @QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, align 4
  %14 = call i32 @QLCWR32(%struct.qlcnic_adapter* %12, i32 %13, i32 0)
  %15 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %16 = load i32, i32* @QLCNIC_ROMUSB_ROM_ABYTE_CNT, align 4
  %17 = call i32 @QLCWR32(%struct.qlcnic_adapter* %15, i32 %16, i32 3)
  %18 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %19 = load i32, i32* @QLCNIC_ROMUSB_ROM_INSTR_OPCODE, align 4
  %20 = call i32 @QLCWR32(%struct.qlcnic_adapter* %18, i32 %19, i32 11)
  %21 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %22 = call i64 @qlcnic_wait_rom_done(%struct.qlcnic_adapter* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %3
  %25 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %26 = getelementptr inbounds %struct.qlcnic_adapter, %struct.qlcnic_adapter* %25, i32 0, i32 0
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = call i32 @dev_err(i32* %28, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %30 = load i32, i32* @EIO, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %4, align 4
  br label %44

32:                                               ; preds = %3
  %33 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %34 = load i32, i32* @QLCNIC_ROMUSB_ROM_ABYTE_CNT, align 4
  %35 = call i32 @QLCWR32(%struct.qlcnic_adapter* %33, i32 %34, i32 0)
  %36 = call i32 @udelay(i32 10)
  %37 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %38 = load i32, i32* @QLCNIC_ROMUSB_ROM_DUMMY_BYTE_CNT, align 4
  %39 = call i32 @QLCWR32(%struct.qlcnic_adapter* %37, i32 %38, i32 0)
  %40 = load %struct.qlcnic_adapter*, %struct.qlcnic_adapter** %5, align 8
  %41 = load i32, i32* @QLCNIC_ROMUSB_ROM_RDATA, align 4
  %42 = call i32 @QLCRD32(%struct.qlcnic_adapter* %40, i32 %41)
  %43 = load i32*, i32** %7, align 8
  store i32 %42, i32* %43, align 4
  store i32 0, i32* %4, align 4
  br label %44

44:                                               ; preds = %32, %24
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32 @QLCWR32(%struct.qlcnic_adapter*, i32, i32) #1

declare dso_local i64 @qlcnic_wait_rom_done(%struct.qlcnic_adapter*) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @QLCRD32(%struct.qlcnic_adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
