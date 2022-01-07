; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7300_edac.c_i7300_clear_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_i7300_edac.c_i7300_clear_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.i7300_pvt* }
%struct.i7300_pvt = type { i32, i32 }

@FERR_GLOBAL_HI = common dso_local global i32 0, align 4
@FERR_GLOBAL_LO = common dso_local global i32 0, align 4
@FERR_FAT_FBD = common dso_local global i32 0, align 4
@FERR_NF_FBD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @i7300_clear_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i7300_clear_error(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.i7300_pvt*, align 8
  %4 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %5 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %6 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %5, i32 0, i32 0
  %7 = load %struct.i7300_pvt*, %struct.i7300_pvt** %6, align 8
  store %struct.i7300_pvt* %7, %struct.i7300_pvt** %3, align 8
  %8 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %9 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @FERR_GLOBAL_HI, align 4
  %12 = call i32 @pci_read_config_dword(i32 %10, i32 %11, i32* %4)
  %13 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %14 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @FERR_GLOBAL_HI, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @pci_write_config_dword(i32 %15, i32 %16, i32 %17)
  %19 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %20 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @FERR_GLOBAL_LO, align 4
  %23 = call i32 @pci_read_config_dword(i32 %21, i32 %22, i32* %4)
  %24 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %25 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @FERR_GLOBAL_LO, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pci_write_config_dword(i32 %26, i32 %27, i32 %28)
  %30 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %31 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @FERR_FAT_FBD, align 4
  %34 = call i32 @pci_read_config_dword(i32 %32, i32 %33, i32* %4)
  %35 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %36 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @FERR_FAT_FBD, align 4
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pci_write_config_dword(i32 %37, i32 %38, i32 %39)
  %41 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %42 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FERR_NF_FBD, align 4
  %45 = call i32 @pci_read_config_dword(i32 %43, i32 %44, i32* %4)
  %46 = load %struct.i7300_pvt*, %struct.i7300_pvt** %3, align 8
  %47 = getelementptr inbounds %struct.i7300_pvt, %struct.i7300_pvt* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @FERR_NF_FBD, align 4
  %50 = load i32, i32* %4, align 4
  %51 = call i32 @pci_write_config_dword(i32 %48, i32 %49, i32 %50)
  ret void
}

declare dso_local i32 @pci_read_config_dword(i32, i32, i32*) #1

declare dso_local i32 @pci_write_config_dword(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
