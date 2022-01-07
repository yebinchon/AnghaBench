; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_pasemi_edac.c_pasemi_edac_process_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_pasemi_edac.c_pasemi_edac_process_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.pci_dev = type { i32 }

@MCDEBUG_ERRLOG1A = common dso_local global i32 0, align 4
@MCDEBUG_ERRLOG1A_MERR_CS_M = common dso_local global i32 0, align 4
@MCDEBUG_ERRLOG1A_MERR_CS_S = common dso_local global i32 0, align 4
@MCDEBUG_ERRSTA_MBE_STATUS = common dso_local global i32 0, align 4
@MCDEBUG_ERRSTA_RFL_STATUS = common dso_local global i32 0, align 4
@MCDEBUG_ERRSTA_SBE_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32)* @pasemi_edac_process_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pasemi_edac_process_error_info(%struct.mem_ctl_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %9 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call %struct.pci_dev* @to_pci_dev(i32 %10)
  store %struct.pci_dev* %11, %struct.pci_dev** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  br label %65

15:                                               ; preds = %2
  %16 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %17 = load i32, i32* @MCDEBUG_ERRLOG1A, align 4
  %18 = call i32 @pci_read_config_dword(%struct.pci_dev* %16, i32 %17, i32* %6)
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MCDEBUG_ERRLOG1A_MERR_CS_M, align 4
  %21 = and i32 %19, %20
  %22 = load i32, i32* @MCDEBUG_ERRLOG1A_MERR_CS_S, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %7, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @MCDEBUG_ERRSTA_MBE_STATUS, align 4
  %26 = load i32, i32* @MCDEBUG_ERRSTA_RFL_STATUS, align 4
  %27 = or i32 %25, %26
  %28 = and i32 %24, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %15
  %31 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %33 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %32, i32 0, i32 1
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load i32, i32* %7, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %42 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %31, i32 %39, i32 0, i32 %40, i32 %43)
  br label %45

45:                                               ; preds = %30, %15
  %46 = load i32, i32* %4, align 4
  %47 = load i32, i32* @MCDEBUG_ERRSTA_SBE_STATUS, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %45
  %51 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %53 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %52, i32 0, i32 1
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %62 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %51, i32 %59, i32 0, i32 0, i32 %60, i32 0, i32 %63)
  br label %65

65:                                               ; preds = %14, %50, %45
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
