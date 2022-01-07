; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_mc_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, %struct.cpc925_mc_pdata* }
%struct.cpc925_mc_pdata = type { i64 }

@REG_APIEXCP_OFFSET = common dso_local global i64 0, align 8
@ECC_EXCP_DETECTED = common dso_local global i32 0, align 4
@REG_MESR_OFFSET = common dso_local global i64 0, align 8
@MESR_ECC_SYN_H_MASK = common dso_local global i32 0, align 4
@MESR_ECC_SYN_L_MASK = common dso_local global i32 0, align 4
@REG_MEAR_OFFSET = common dso_local global i64 0, align 8
@CECC_EXCP_DETECTED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"DRAM CECC Fault\0A\00", align 1
@UECC_EXCP_DETECTED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"DRAM UECC Fault\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"Dump registers:\0A\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"APIMASK\09\090x%08x\0A\00", align 1
@REG_APIMASK_OFFSET = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [17 x i8] c"APIEXCP\09\090x%08x\0A\00", align 1
@.str.5 = private unnamed_addr constant [23 x i8] c"Mem Scrub Ctrl\090x%08x\0A\00", align 1
@REG_MSCR_OFFSET = common dso_local global i64 0, align 8
@.str.6 = private unnamed_addr constant [28 x i8] c"Mem Scrub Rge Start\090x%08x\0A\00", align 1
@REG_MSRSR_OFFSET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [26 x i8] c"Mem Scrub Rge End\090x%08x\0A\00", align 1
@REG_MSRER_OFFSET = common dso_local global i64 0, align 8
@.str.8 = private unnamed_addr constant [26 x i8] c"Mem Scrub Pattern\090x%08x\0A\00", align 1
@REG_MSPR_OFFSET = common dso_local global i64 0, align 8
@.str.9 = private unnamed_addr constant [22 x i8] c"Mem Chk Ctrl\09\090x%08x\0A\00", align 1
@REG_MCCR_OFFSET = common dso_local global i64 0, align 8
@.str.10 = private unnamed_addr constant [24 x i8] c"Mem Chk Rge End\090x%08x\0A\00", align 1
@REG_MCRER_OFFSET = common dso_local global i64 0, align 8
@.str.11 = private unnamed_addr constant [24 x i8] c"Mem Err Address\090x%08x\0A\00", align 1
@.str.12 = private unnamed_addr constant [25 x i8] c"Mem Err Syndrome\090x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @cpc925_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.cpc925_mc_pdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %12 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %13 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %12, i32 0, i32 1
  %14 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %13, align 8
  store %struct.cpc925_mc_pdata* %14, %struct.cpc925_mc_pdata** %3, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %15 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %16 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_APIEXCP_OFFSET, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @__raw_readl(i64 %19)
  store i32 %20, i32* %4, align 4
  %21 = load i32, i32* %4, align 4
  %22 = load i32, i32* @ECC_EXCP_DETECTED, align 4
  %23 = and i32 %21, %22
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %1
  br label %164

26:                                               ; preds = %1
  %27 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %28 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @REG_MESR_OFFSET, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @__raw_readl(i64 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @MESR_ECC_SYN_H_MASK, align 4
  %35 = load i32, i32* @MESR_ECC_SYN_L_MASK, align 4
  %36 = or i32 %34, %35
  %37 = or i32 %33, %36
  store i32 %37, i32* %7, align 4
  %38 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %39 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REG_MEAR_OFFSET, align 8
  %42 = add nsw i64 %40, %41
  %43 = call i32 @__raw_readl(i64 %42)
  store i32 %43, i32* %5, align 4
  %44 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %45 = load i32, i32* %5, align 4
  %46 = call i32 @cpc925_mc_get_pfn(%struct.mem_ctl_info* %44, i32 %45, i64* %8, i64* %9, i32* %10)
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @CECC_EXCP_DETECTED, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %68

51:                                               ; preds = %26
  %52 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %53 = load i32, i32* @KERN_INFO, align 4
  %54 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %52, i32 %53, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %55 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @cpc925_mc_find_channel(%struct.mem_ctl_info* %55, i32 %56)
  store i32 %57, i32* %11, align 4
  %58 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %59 = load i64, i64* %8, align 8
  %60 = load i64, i64* %9, align 8
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %58, i64 %59, i64 %60, i32 %61, i32 %62, i32 %63, i32 %66)
  br label %68

68:                                               ; preds = %51, %26
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* @UECC_EXCP_DETECTED, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %85

73:                                               ; preds = %68
  %74 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %75 = load i32, i32* @KERN_INFO, align 4
  %76 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %74, i32 %75, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0))
  %77 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %78 = load i64, i64* %8, align 8
  %79 = load i64, i64* %9, align 8
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %82 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %77, i64 %78, i64 %79, i32 %80, i32 %83)
  br label %85

85:                                               ; preds = %73, %68
  %86 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %87 = load i32, i32* @KERN_INFO, align 4
  %88 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %86, i32 %87, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0))
  %89 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %90 = load i32, i32* @KERN_INFO, align 4
  %91 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %92 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %95 = add nsw i64 %93, %94
  %96 = call i32 @__raw_readl(i64 %95)
  %97 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %89, i32 %90, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0), i32 %96)
  %98 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %99 = load i32, i32* @KERN_INFO, align 4
  %100 = load i32, i32* %4, align 4
  %101 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %98, i32 %99, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.4, i64 0, i64 0), i32 %100)
  %102 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %103 = load i32, i32* @KERN_INFO, align 4
  %104 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %105 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @REG_MSCR_OFFSET, align 8
  %108 = add nsw i64 %106, %107
  %109 = call i32 @__raw_readl(i64 %108)
  %110 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %102, i32 %103, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.5, i64 0, i64 0), i32 %109)
  %111 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %112 = load i32, i32* @KERN_INFO, align 4
  %113 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %114 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load i64, i64* @REG_MSRSR_OFFSET, align 8
  %117 = add nsw i64 %115, %116
  %118 = call i32 @__raw_readl(i64 %117)
  %119 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %111, i32 %112, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i32 %118)
  %120 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %121 = load i32, i32* @KERN_INFO, align 4
  %122 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %123 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @REG_MSRER_OFFSET, align 8
  %126 = add nsw i64 %124, %125
  %127 = call i32 @__raw_readl(i64 %126)
  %128 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %120, i32 %121, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.7, i64 0, i64 0), i32 %127)
  %129 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %130 = load i32, i32* @KERN_INFO, align 4
  %131 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %132 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load i64, i64* @REG_MSPR_OFFSET, align 8
  %135 = add nsw i64 %133, %134
  %136 = call i32 @__raw_readl(i64 %135)
  %137 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %129, i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 %136)
  %138 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %139 = load i32, i32* @KERN_INFO, align 4
  %140 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %141 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %140, i32 0, i32 0
  %142 = load i64, i64* %141, align 8
  %143 = load i64, i64* @REG_MCCR_OFFSET, align 8
  %144 = add nsw i64 %142, %143
  %145 = call i32 @__raw_readl(i64 %144)
  %146 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %138, i32 %139, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.9, i64 0, i64 0), i32 %145)
  %147 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %148 = load i32, i32* @KERN_INFO, align 4
  %149 = load %struct.cpc925_mc_pdata*, %struct.cpc925_mc_pdata** %3, align 8
  %150 = getelementptr inbounds %struct.cpc925_mc_pdata, %struct.cpc925_mc_pdata* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load i64, i64* @REG_MCRER_OFFSET, align 8
  %153 = add nsw i64 %151, %152
  %154 = call i32 @__raw_readl(i64 %153)
  %155 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %147, i32 %148, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  %156 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %157 = load i32, i32* @KERN_INFO, align 4
  %158 = load i32, i32* %6, align 4
  %159 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %156, i32 %157, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.11, i64 0, i64 0), i32 %158)
  %160 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %161 = load i32, i32* @KERN_INFO, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @cpc925_mc_printk(%struct.mem_ctl_info* %160, i32 %161, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.12, i64 0, i64 0), i32 %162)
  br label %164

164:                                              ; preds = %85, %25
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpc925_mc_get_pfn(%struct.mem_ctl_info*, i32, i64*, i64*, i32*) #1

declare dso_local i32 @cpc925_mc_printk(%struct.mem_ctl_info*, i32, i8*, ...) #1

declare dso_local i32 @cpc925_mc_find_channel(%struct.mem_ctl_info*, i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i64, i64, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i64, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
