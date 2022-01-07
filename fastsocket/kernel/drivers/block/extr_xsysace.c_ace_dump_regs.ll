; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_dump_regs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xsysace.c_ace_dump_regs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ace_device = type { i32 }

@.str = private unnamed_addr constant [136 x i8] c"    ctrl:  %.8x  seccnt/cmd: %.4x      ver:%.4x\0A    status:%.8x  mpu_lba:%.8x  busmode:%4x\0A    error: %.8x  cfg_lba:%.8x  fatstat:%.4x\0A\00", align 1
@ACE_CTRL = common dso_local global i32 0, align 4
@ACE_SECCNTCMD = common dso_local global i32 0, align 4
@ACE_VERSION = common dso_local global i32 0, align 4
@ACE_STATUS = common dso_local global i32 0, align 4
@ACE_MPULBA = common dso_local global i32 0, align 4
@ACE_BUSMODE = common dso_local global i32 0, align 4
@ACE_ERROR = common dso_local global i32 0, align 4
@ACE_CFGLBA = common dso_local global i32 0, align 4
@ACE_FATSTAT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ace_device*)* @ace_dump_regs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ace_dump_regs(%struct.ace_device* %0) #0 {
  %2 = alloca %struct.ace_device*, align 8
  store %struct.ace_device* %0, %struct.ace_device** %2, align 8
  %3 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %4 = getelementptr inbounds %struct.ace_device, %struct.ace_device* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %7 = load i32, i32* @ACE_CTRL, align 4
  %8 = call i32 @ace_in32(%struct.ace_device* %6, i32 %7)
  %9 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %10 = load i32, i32* @ACE_SECCNTCMD, align 4
  %11 = call i32 @ace_in(%struct.ace_device* %9, i32 %10)
  %12 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %13 = load i32, i32* @ACE_VERSION, align 4
  %14 = call i32 @ace_in(%struct.ace_device* %12, i32 %13)
  %15 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %16 = load i32, i32* @ACE_STATUS, align 4
  %17 = call i32 @ace_in32(%struct.ace_device* %15, i32 %16)
  %18 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %19 = load i32, i32* @ACE_MPULBA, align 4
  %20 = call i32 @ace_in32(%struct.ace_device* %18, i32 %19)
  %21 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %22 = load i32, i32* @ACE_BUSMODE, align 4
  %23 = call i32 @ace_in(%struct.ace_device* %21, i32 %22)
  %24 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %25 = load i32, i32* @ACE_ERROR, align 4
  %26 = call i32 @ace_in32(%struct.ace_device* %24, i32 %25)
  %27 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %28 = load i32, i32* @ACE_CFGLBA, align 4
  %29 = call i32 @ace_in32(%struct.ace_device* %27, i32 %28)
  %30 = load %struct.ace_device*, %struct.ace_device** %2, align 8
  %31 = load i32, i32* @ACE_FATSTAT, align 4
  %32 = call i32 @ace_in(%struct.ace_device* %30, i32 %31)
  %33 = call i32 @dev_info(i32 %5, i8* getelementptr inbounds ([136 x i8], [136 x i8]* @.str, i64 0, i64 0), i32 %8, i32 %11, i32 %14, i32 %17, i32 %20, i32 %23, i32 %26, i32 %29, i32 %32)
  ret void
}

declare dso_local i32 @dev_info(i32, i8*, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ace_in32(%struct.ace_device*, i32) #1

declare dso_local i32 @ace_in(%struct.ace_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
