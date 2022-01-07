; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_pasemi_edac.c_pasemi_edac_get_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_pasemi_edac.c_pasemi_edac_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.pci_dev = type { i32 }

@MCDEBUG_ERRSTA = common dso_local global i32 0, align 4
@MCDEBUG_ERRSTA_RFL_STATUS = common dso_local global i32 0, align 4
@MCDEBUG_ERRSTA_MBE_STATUS = common dso_local global i32 0, align 4
@MCDEBUG_ERRSTA_SBE_STATUS = common dso_local global i32 0, align 4
@MCDEBUG_ERRCNT1 = common dso_local global i32 0, align 4
@MCDEBUG_ERRCNT1_SBE_CNT_OVRFLO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*)* @pasemi_edac_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_edac_get_error_info(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.pci_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %5 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %6 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.pci_dev* @to_pci_dev(i32 %7)
  store %struct.pci_dev* %8, %struct.pci_dev** %3, align 8
  %9 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %10 = load i32, i32* @MCDEBUG_ERRSTA, align 4
  %11 = call i32 @pci_read_config_dword(%struct.pci_dev* %9, i32 %10, i32* %4)
  %12 = load i32, i32* @MCDEBUG_ERRSTA_RFL_STATUS, align 4
  %13 = load i32, i32* @MCDEBUG_ERRSTA_MBE_STATUS, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @MCDEBUG_ERRSTA_SBE_STATUS, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* %4, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %1
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @MCDEBUG_ERRSTA_SBE_STATUS, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  %27 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %28 = load i32, i32* @MCDEBUG_ERRCNT1, align 4
  %29 = load i32, i32* @MCDEBUG_ERRCNT1_SBE_CNT_OVRFLO, align 4
  %30 = call i32 @pci_write_config_dword(%struct.pci_dev* %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %21
  %32 = load %struct.pci_dev*, %struct.pci_dev** %3, align 8
  %33 = load i32, i32* @MCDEBUG_ERRSTA, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @pci_write_config_dword(%struct.pci_dev* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %31, %1
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
