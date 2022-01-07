; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_k8_map_sysaddr_to_csrow.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_amd64_edac.c_k8_map_sysaddr_to_csrow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { %struct.amd64_pvt* }
%struct.amd64_pvt = type { i32 }

@NBCFG_CHIPKILL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"unknown syndrome 0x%04x - possible error reporting race\0A\00", align 1
@EDAC_MOD_STR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"failed to map error addr 0x%lx to a node\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*, i32, i32)* @k8_map_sysaddr_to_csrow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @k8_map_sysaddr_to_csrow(%struct.mem_ctl_info* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.mem_ctl_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.mem_ctl_info*, align 8
  %8 = alloca %struct.amd64_pvt*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load %struct.amd64_pvt*, %struct.amd64_pvt** %14, align 8
  store %struct.amd64_pvt* %15, %struct.amd64_pvt** %8, align 8
  %16 = load %struct.amd64_pvt*, %struct.amd64_pvt** %8, align 8
  %17 = getelementptr inbounds %struct.amd64_pvt, %struct.amd64_pvt* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @NBCFG_CHIPKILL, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %36

22:                                               ; preds = %3
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info* %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %22
  %29 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @amd64_mc_warn(%struct.mem_ctl_info* %29, i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %33 = load i32, i32* @EDAC_MOD_STR, align 4
  %34 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %32, i32 %33)
  br label %77

35:                                               ; preds = %22
  br label %42

36:                                               ; preds = %3
  %37 = load i32, i32* %5, align 4
  %38 = call i32 @BIT(i32 3)
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  %41 = zext i1 %40 to i32
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %35
  %43 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %44 = load i32, i32* %5, align 4
  %45 = call %struct.mem_ctl_info* @find_mc_by_sys_addr(%struct.mem_ctl_info* %43, i32 %44)
  store %struct.mem_ctl_info* %45, %struct.mem_ctl_info** %7, align 8
  %46 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %47 = icmp ne %struct.mem_ctl_info* %46, null
  br i1 %47, label %56, label %48

48:                                               ; preds = %42
  %49 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %50 = load i32, i32* %5, align 4
  %51 = sext i32 %50 to i64
  %52 = call i32 @amd64_mc_err(%struct.mem_ctl_info* %49, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i64 %51)
  %53 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %4, align 8
  %54 = load i32, i32* @EDAC_MOD_STR, align 4
  %55 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %53, i32 %54)
  br label %77

56:                                               ; preds = %42
  %57 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %58 = load i32, i32* %5, align 4
  %59 = call i32 @sys_addr_to_csrow(%struct.mem_ctl_info* %57, i32 %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %56
  %63 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %64 = load i32, i32* @EDAC_MOD_STR, align 4
  %65 = call i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info* %63, i32 %64)
  br label %77

66:                                               ; preds = %56
  %67 = load i32, i32* %5, align 4
  %68 = call i32 @error_address_to_page_and_offset(i32 %67, i32* %11, i32* %12)
  %69 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %7, align 8
  %70 = load i32, i32* %11, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %6, align 4
  %73 = load i32, i32* %10, align 4
  %74 = load i32, i32* %9, align 4
  %75 = load i32, i32* @EDAC_MOD_STR, align 4
  %76 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %69, i32 %70, i32 %71, i32 %72, i32 %73, i32 %74, i32 %75)
  br label %77

77:                                               ; preds = %28, %48, %66, %62
  ret void
}

declare dso_local i32 @get_channel_from_ecc_syndrome(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @amd64_mc_warn(%struct.mem_ctl_info*, i8*, i32) #1

declare dso_local i32 @edac_mc_handle_ce_no_info(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local %struct.mem_ctl_info* @find_mc_by_sys_addr(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @amd64_mc_err(%struct.mem_ctl_info*, i8*, i64) #1

declare dso_local i32 @sys_addr_to_csrow(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @error_address_to_page_and_offset(i32, i32*, i32*) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
