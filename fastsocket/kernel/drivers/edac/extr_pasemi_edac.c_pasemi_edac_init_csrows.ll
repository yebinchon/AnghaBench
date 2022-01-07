; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_pasemi_edac.c_pasemi_edac_init_csrows.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_pasemi_edac.c_pasemi_edac_init_csrows.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.csrow_info* }
%struct.csrow_info = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.pci_dev = type { i32 }

@MCDRAM_RANKCFG = common dso_local global i64 0, align 8
@MCDRAM_RANKCFG_EN = common dso_local global i32 0, align 4
@MCDRAM_RANKCFG_TYPE_SIZE_M = common dso_local global i32 0, align 4
@MCDRAM_RANKCFG_TYPE_SIZE_S = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"Unrecognized Rank Config. rankcfg=%u\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@last_page_in_mmc = common dso_local global i32 0, align 4
@PASEMI_EDAC_ERROR_GRAIN = common dso_local global i32 0, align 4
@MEM_DDR = common dso_local global i32 0, align 4
@DEV_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mem_ctl_info*, %struct.pci_dev*, i32)* @pasemi_edac_init_csrows to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pasemi_edac_init_csrows(%struct.mem_ctl_info* %0, %struct.pci_dev* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mem_ctl_info*, align 8
  %6 = alloca %struct.pci_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.csrow_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %5, align 8
  store %struct.pci_dev* %1, %struct.pci_dev** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %112, %3
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %14 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp slt i32 %12, %15
  br i1 %16, label %17, label %115

17:                                               ; preds = %11
  %18 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %19 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %18, i32 0, i32 1
  %20 = load %struct.csrow_info*, %struct.csrow_info** %19, align 8
  %21 = load i32, i32* %10, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %20, i64 %22
  store %struct.csrow_info* %23, %struct.csrow_info** %8, align 8
  %24 = load %struct.pci_dev*, %struct.pci_dev** %6, align 8
  %25 = load i64, i64* @MCDRAM_RANKCFG, align 8
  %26 = load i32, i32* %10, align 4
  %27 = mul nsw i32 %26, 12
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %25, %28
  %30 = call i32 @pci_read_config_dword(%struct.pci_dev* %24, i64 %29, i32* %9)
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* @MCDRAM_RANKCFG_EN, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %17
  br label %112

36:                                               ; preds = %17
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @MCDRAM_RANKCFG_TYPE_SIZE_M, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* @MCDRAM_RANKCFG_TYPE_SIZE_S, align 4
  %41 = ashr i32 %39, %40
  switch i32 %41, label %72 [
    i32 0, label %42
    i32 1, label %48
    i32 2, label %54
    i32 3, label %54
    i32 4, label %60
    i32 5, label %66
  ]

42:                                               ; preds = %36
  %43 = load i32, i32* @PAGE_SHIFT, align 4
  %44 = sub nsw i32 20, %43
  %45 = shl i32 128, %44
  %46 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %47 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %79

48:                                               ; preds = %36
  %49 = load i32, i32* @PAGE_SHIFT, align 4
  %50 = sub nsw i32 20, %49
  %51 = shl i32 256, %50
  %52 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %53 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %79

54:                                               ; preds = %36, %36
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = sub nsw i32 20, %55
  %57 = shl i32 512, %56
  %58 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %59 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  br label %79

60:                                               ; preds = %36
  %61 = load i32, i32* @PAGE_SHIFT, align 4
  %62 = sub nsw i32 20, %61
  %63 = shl i32 1024, %62
  %64 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %65 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  br label %79

66:                                               ; preds = %36
  %67 = load i32, i32* @PAGE_SHIFT, align 4
  %68 = sub nsw i32 20, %67
  %69 = shl i32 2048, %68
  %70 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %71 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 8
  br label %79

72:                                               ; preds = %36
  %73 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %5, align 8
  %74 = load i32, i32* @KERN_ERR, align 4
  %75 = load i32, i32* %9, align 4
  %76 = call i32 @edac_mc_printk(%struct.mem_ctl_info* %73, i32 %74, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %75)
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %4, align 4
  br label %116

79:                                               ; preds = %66, %60, %54, %48, %42
  %80 = load i32, i32* @last_page_in_mmc, align 4
  %81 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %82 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %81, i32 0, i32 1
  store i32 %80, i32* %82, align 4
  %83 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %84 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %87 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = add nsw i32 %85, %88
  %90 = sub nsw i32 %89, 1
  %91 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %92 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %91, i32 0, i32 2
  store i32 %90, i32* %92, align 8
  %93 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %94 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @last_page_in_mmc, align 4
  %97 = add nsw i32 %96, %95
  store i32 %97, i32* @last_page_in_mmc, align 4
  %98 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %99 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %98, i32 0, i32 7
  store i64 0, i64* %99, align 8
  %100 = load i32, i32* @PASEMI_EDAC_ERROR_GRAIN, align 4
  %101 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %102 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %101, i32 0, i32 6
  store i32 %100, i32* %102, align 8
  %103 = load i32, i32* @MEM_DDR, align 4
  %104 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %105 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %104, i32 0, i32 5
  store i32 %103, i32* %105, align 4
  %106 = load i32, i32* @DEV_UNKNOWN, align 4
  %107 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %108 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %107, i32 0, i32 4
  store i32 %106, i32* %108, align 8
  %109 = load i32, i32* %7, align 4
  %110 = load %struct.csrow_info*, %struct.csrow_info** %8, align 8
  %111 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %110, i32 0, i32 3
  store i32 %109, i32* %111, align 4
  br label %112

112:                                              ; preds = %79, %35
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %10, align 4
  br label %11

115:                                              ; preds = %11
  store i32 0, i32* %4, align 4
  br label %116

116:                                              ; preds = %115, %72
  %117 = load i32, i32* %4, align 4
  ret i32 %117
}

declare dso_local i32 @pci_read_config_dword(%struct.pci_dev*, i64, i32*) #1

declare dso_local i32 @edac_mc_printk(%struct.mem_ctl_info*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
