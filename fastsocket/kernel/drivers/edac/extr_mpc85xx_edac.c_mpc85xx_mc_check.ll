; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_mc_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_mc_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mem_ctl_info = type { i32, i32, %struct.csrow_info*, %struct.mpc85xx_mc_pdata* }
%struct.csrow_info = type { i32, i32 }
%struct.mpc85xx_mc_pdata = type { i64 }

@MPC85XX_MC_ERR_DETECT = common dso_local global i64 0, align 8
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Err Detect Register: %#8.8x\0A\00", align 1
@DDR_EDE_SBE = common dso_local global i32 0, align 4
@DDR_EDE_MBE = common dso_local global i32 0, align 4
@MPC85XX_MC_CAPTURE_ECC = common dso_local global i64 0, align 8
@MPC85XX_MC_CAPTURE_ADDRESS = common dso_local global i64 0, align 8
@PAGE_SHIFT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"Capture Data High: %#8.8x\0A\00", align 1
@MPC85XX_MC_CAPTURE_DATA_HI = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [26 x i8] c"Capture Data Low: %#8.8x\0A\00", align 1
@MPC85XX_MC_CAPTURE_DATA_LO = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [18 x i8] c"syndrome: %#8.8x\0A\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"err addr: %#8.8x\0A\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"PFN: %#8.8x\0A\00", align 1
@.str.6 = private unnamed_addr constant [19 x i8] c"PFN out of range!\0A\00", align 1
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mem_ctl_info*)* @mpc85xx_mc_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpc85xx_mc_check(%struct.mem_ctl_info* %0) #0 {
  %2 = alloca %struct.mem_ctl_info*, align 8
  %3 = alloca %struct.mpc85xx_mc_pdata*, align 8
  %4 = alloca %struct.csrow_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.mem_ctl_info* %0, %struct.mem_ctl_info** %2, align 8
  %10 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %11 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %10, i32 0, i32 3
  %12 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %11, align 8
  store %struct.mpc85xx_mc_pdata* %12, %struct.mpc85xx_mc_pdata** %3, align 8
  %13 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %14 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @MPC85XX_MC_ERR_DETECT, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @in_be32(i64 %17)
  store i32 %18, i32* %5, align 4
  %19 = load i32, i32* %5, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %1
  br label %167

22:                                               ; preds = %1
  %23 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %24 = load i32, i32* @KERN_ERR, align 4
  %25 = load i32, i32* %5, align 4
  %26 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %23, i32 %24, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @DDR_EDE_SBE, align 4
  %29 = load i32, i32* @DDR_EDE_MBE, align 4
  %30 = or i32 %28, %29
  %31 = and i32 %27, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %22
  %34 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %35 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @MPC85XX_MC_ERR_DETECT, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @out_be32(i64 %38, i32 %39)
  br label %167

41:                                               ; preds = %22
  %42 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %43 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MPC85XX_MC_CAPTURE_ECC, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @in_be32(i64 %46)
  store i32 %47, i32* %6, align 4
  %48 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %49 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @MPC85XX_MC_CAPTURE_ADDRESS, align 8
  %52 = add nsw i64 %50, %51
  %53 = call i32 @in_be32(i64 %52)
  store i32 %53, i32* %7, align 4
  %54 = load i32, i32* %7, align 4
  %55 = load i32, i32* @PAGE_SHIFT, align 4
  %56 = ashr i32 %54, %55
  store i32 %56, i32* %8, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %83, %41
  %58 = load i32, i32* %9, align 4
  %59 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %60 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %58, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %57
  %64 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %65 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %64, i32 0, i32 2
  %66 = load %struct.csrow_info*, %struct.csrow_info** %65, align 8
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %66, i64 %68
  store %struct.csrow_info* %69, %struct.csrow_info** %4, align 8
  %70 = load i32, i32* %8, align 4
  %71 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %72 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = icmp sge i32 %70, %73
  br i1 %74, label %75, label %82

75:                                               ; preds = %63
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.csrow_info*, %struct.csrow_info** %4, align 8
  %78 = getelementptr inbounds %struct.csrow_info, %struct.csrow_info* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = icmp sle i32 %76, %79
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %86

82:                                               ; preds = %75, %63
  br label %83

83:                                               ; preds = %82
  %84 = load i32, i32* %9, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %9, align 4
  br label %57

86:                                               ; preds = %81, %57
  %87 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %88 = load i32, i32* @KERN_ERR, align 4
  %89 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %90 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @MPC85XX_MC_CAPTURE_DATA_HI, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @in_be32(i64 %93)
  %95 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %87, i32 %88, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %94)
  %96 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %97 = load i32, i32* @KERN_ERR, align 4
  %98 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %99 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @MPC85XX_MC_CAPTURE_DATA_LO, align 8
  %102 = add nsw i64 %100, %101
  %103 = call i32 @in_be32(i64 %102)
  %104 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %96, i32 %97, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %103)
  %105 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %106 = load i32, i32* @KERN_ERR, align 4
  %107 = load i32, i32* %6, align 4
  %108 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %105, i32 %106, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.3, i64 0, i64 0), i32 %107)
  %109 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %110 = load i32, i32* @KERN_ERR, align 4
  %111 = load i32, i32* %7, align 4
  %112 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %109, i32 %110, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0), i32 %111)
  %113 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %114 = load i32, i32* @KERN_ERR, align 4
  %115 = load i32, i32* %8, align 4
  %116 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %113, i32 %114, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0), i32 %115)
  %117 = load i32, i32* %9, align 4
  %118 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %119 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 8
  %121 = icmp eq i32 %117, %120
  br i1 %121, label %122, label %126

122:                                              ; preds = %86
  %123 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %124 = load i32, i32* @KERN_ERR, align 4
  %125 = call i32 (%struct.mem_ctl_info*, i32, i8*, ...) @mpc85xx_mc_printk(%struct.mem_ctl_info* %123, i32 %124, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.6, i64 0, i64 0))
  br label %126

126:                                              ; preds = %122, %86
  %127 = load i32, i32* %5, align 4
  %128 = load i32, i32* @DDR_EDE_SBE, align 4
  %129 = and i32 %127, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %143

131:                                              ; preds = %126
  %132 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %133 = load i32, i32* %8, align 4
  %134 = load i32, i32* %7, align 4
  %135 = load i32, i32* @PAGE_MASK, align 4
  %136 = and i32 %134, %135
  %137 = load i32, i32* %6, align 4
  %138 = load i32, i32* %9, align 4
  %139 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %140 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 4
  %142 = call i32 @edac_mc_handle_ce(%struct.mem_ctl_info* %132, i32 %133, i32 %136, i32 %137, i32 %138, i32 0, i32 %141)
  br label %143

143:                                              ; preds = %131, %126
  %144 = load i32, i32* %5, align 4
  %145 = load i32, i32* @DDR_EDE_MBE, align 4
  %146 = and i32 %144, %145
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %159

148:                                              ; preds = %143
  %149 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %150 = load i32, i32* %8, align 4
  %151 = load i32, i32* %7, align 4
  %152 = load i32, i32* @PAGE_MASK, align 4
  %153 = and i32 %151, %152
  %154 = load i32, i32* %9, align 4
  %155 = load %struct.mem_ctl_info*, %struct.mem_ctl_info** %2, align 8
  %156 = getelementptr inbounds %struct.mem_ctl_info, %struct.mem_ctl_info* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @edac_mc_handle_ue(%struct.mem_ctl_info* %149, i32 %150, i32 %153, i32 %154, i32 %157)
  br label %159

159:                                              ; preds = %148, %143
  %160 = load %struct.mpc85xx_mc_pdata*, %struct.mpc85xx_mc_pdata** %3, align 8
  %161 = getelementptr inbounds %struct.mpc85xx_mc_pdata, %struct.mpc85xx_mc_pdata* %160, i32 0, i32 0
  %162 = load i64, i64* %161, align 8
  %163 = load i64, i64* @MPC85XX_MC_ERR_DETECT, align 8
  %164 = add nsw i64 %162, %163
  %165 = load i32, i32* %5, align 4
  %166 = call i32 @out_be32(i64 %164, i32 %165)
  br label %167

167:                                              ; preds = %159, %33, %21
  ret void
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @mpc85xx_mc_printk(%struct.mem_ctl_info*, i32, i8*, ...) #1

declare dso_local i32 @out_be32(i64, i32) #1

declare dso_local i32 @edac_mc_handle_ce(%struct.mem_ctl_info*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @edac_mc_handle_ue(%struct.mem_ctl_info*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
