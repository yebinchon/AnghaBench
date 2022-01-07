; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82443bxgx_edac.c_i82443bxgx_edacmc_get_error_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i82443bxgx_edac.c_i82443bxgx_edacmc_get_error_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32 }
%struct.i82443bxgx_edacmc_error_info = type { i32 }
%struct.pci_dev = type { i32 }

@I82443BXGX_EAP = common dso_local global i32 0, align 4
@I82443BXGX_EAP_OFFSET_SBE = common dso_local global i32 0, align 4
@I82443BXGX_EAP_OFFSET_MBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, %struct.i82443bxgx_edacmc_error_info*)* @i82443bxgx_edacmc_get_error_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i82443bxgx_edacmc_get_error_info(%struct.mem_ctl_info* %0, %struct.i82443bxgx_edacmc_error_info* %1) #0 {
  %3 = alloca %struct.mem_ctl_info*, align 8
  %4 = alloca %struct.i82443bxgx_edacmc_error_info*, align 8
  %5 = alloca %struct.pci_dev*, align 8
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %3, align 8
  store %struct.i82443bxgx_edacmc_error_info* %1, %struct.i82443bxgx_edacmc_error_info** %4, align 8
  %6 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call %struct.pci_dev* @to_pci_dev(i32 %8)
  store %struct.pci_dev* %9, %struct.pci_dev** %5, align 8
  %10 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %11 = load i32, i32* @I82443BXGX_EAP, align 4
  %12 = load %struct.i82443bxgx_edacmc_error_info*, %struct.i82443bxgx_edacmc_error_info** %4, align 8
  %13 = getelementptr inbounds %struct.i82443bxgx_edacmc_error_info, %struct.i82443bxgx_edacmc_error_info* %12, i32 0, i32 0
  %14 = call i32 @pci_read_config_dword(%struct.pci_dev* %10, i32 %11, i32* %13)
  %15 = load %struct.i82443bxgx_edacmc_error_info*, %struct.i82443bxgx_edacmc_error_info** %4, align 8
  %16 = getelementptr inbounds %struct.i82443bxgx_edacmc_error_info, %struct.i82443bxgx_edacmc_error_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @I82443BXGX_EAP_OFFSET_SBE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %23 = load i32, i32* @I82443BXGX_EAP, align 4
  %24 = load i32, i32* @I82443BXGX_EAP_OFFSET_SBE, align 4
  %25 = load i32, i32* @I82443BXGX_EAP_OFFSET_SBE, align 4
  %26 = call i32 @pci_write_bits32(%struct.pci_dev* %22, i32 %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %21, %2
  %28 = load %struct.i82443bxgx_edacmc_error_info*, %struct.i82443bxgx_edacmc_error_info** %4, align 8
  %29 = getelementptr inbounds %struct.i82443bxgx_edacmc_error_info, %struct.i82443bxgx_edacmc_error_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @I82443BXGX_EAP_OFFSET_MBE, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %36 = load i32, i32* @I82443BXGX_EAP, align 4
  %37 = load i32, i32* @I82443BXGX_EAP_OFFSET_MBE, align 4
  %38 = load i32, i32* @I82443BXGX_EAP_OFFSET_MBE, align 4
  %39 = call i32 @pci_write_bits32(%struct.pci_dev* %35, i32 %36, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %34, %27
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @pci_write_bits32(%struct.pci_dev*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
