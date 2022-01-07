; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_htlink_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_htlink_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.cpc925_dev_info* }
%struct.cpc925_dev_info = type { i64 }

@REG_BRGCTRL_OFFSET = common dso_local global i64 0, align 8
@REG_LINKCTRL_OFFSET = common dso_local global i64 0, align 8
@REG_ERRCTRL_OFFSET = common dso_local global i64 0, align 8
@REG_LINKERR_OFFSET = common dso_local global i64 0, align 8
@BRGCTRL_DETSERR = common dso_local global i32 0, align 4
@HT_LINKCTRL_DETECTED = common dso_local global i32 0, align 4
@HT_ERRCTRL_DETECTED = common dso_local global i32 0, align 4
@HT_LINKERR_DETECTED = common dso_local global i32 0, align 4
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"HT Link Fault\0AHT register dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Bridge Ctrl\09\09\090x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Link Config Ctrl\09\090x%08x\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"Error Enum and Ctrl\09\090x%08x\0A\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"Link Error\09\09\090x%08x\0A\00", align 1
@ERRCTRL_CHN_FAL = common dso_local global i32 0, align 4
@BRGCTRL_SECBUSRESET = common dso_local global i32 0, align 4
@ERRCTRL_RSP_ERR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @cpc925_htlink_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_htlink_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.cpc925_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %8 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %9 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %8, i32 0, i32 1
  %10 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %9, align 8
  store %struct.cpc925_dev_info* %10, %struct.cpc925_dev_info** %3, align 8
  %11 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %12 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @REG_BRGCTRL_OFFSET, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @__raw_readl(i64 %15)
  store i32 %16, i32* %4, align 4
  %17 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %18 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @REG_LINKCTRL_OFFSET, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @__raw_readl(i64 %21)
  store i32 %22, i32* %5, align 4
  %23 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %24 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @REG_ERRCTRL_OFFSET, align 8
  %27 = add nsw i64 %25, %26
  %28 = call i32 @__raw_readl(i64 %27)
  store i32 %28, i32* %6, align 4
  %29 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %30 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @REG_LINKERR_OFFSET, align 8
  %33 = add nsw i64 %31, %32
  %34 = call i32 @__raw_readl(i64 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @BRGCTRL_DETSERR, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %55, label %39

39:                                               ; preds = %1
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @HT_LINKCTRL_DETECTED, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %55, label %44

44:                                               ; preds = %39
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @HT_ERRCTRL_DETECTED, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %7, align 4
  %51 = load i32, i32* @HT_LINKERR_DETECTED, align 4
  %52 = and i32 %50, %51
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %55, label %54

54:                                               ; preds = %49
  br label %140

55:                                               ; preds = %49, %44, %39, %1
  %56 = load i32, i32* @KERN_INFO, align 4
  %57 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %56, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @KERN_INFO, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %58, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %59)
  %61 = load i32, i32* @KERN_INFO, align 4
  %62 = load i32, i32* %5, align 4
  %63 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %61, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %62)
  %64 = load i32, i32* @KERN_INFO, align 4
  %65 = load i32, i32* %6, align 4
  %66 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %64, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @KERN_INFO, align 4
  %68 = load i32, i32* %7, align 4
  %69 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %67, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 %68)
  %70 = load i32, i32* %4, align 4
  %71 = load i32, i32* @BRGCTRL_DETSERR, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %55
  %75 = load i32, i32* @BRGCTRL_DETSERR, align 4
  %76 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %77 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @REG_BRGCTRL_OFFSET, align 8
  %80 = add nsw i64 %78, %79
  %81 = call i32 @__raw_writel(i32 %75, i64 %80)
  br label %82

82:                                               ; preds = %74, %55
  %83 = load i32, i32* %5, align 4
  %84 = load i32, i32* @HT_LINKCTRL_DETECTED, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %95

87:                                               ; preds = %82
  %88 = load i32, i32* @HT_LINKCTRL_DETECTED, align 4
  %89 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %90 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load i64, i64* @REG_LINKCTRL_OFFSET, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @__raw_writel(i32 %88, i64 %93)
  br label %95

95:                                               ; preds = %87, %82
  %96 = load i32, i32* %6, align 4
  %97 = load i32, i32* @ERRCTRL_CHN_FAL, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %95
  %101 = load i32, i32* @BRGCTRL_SECBUSRESET, align 4
  %102 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %103 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* @REG_BRGCTRL_OFFSET, align 8
  %106 = add nsw i64 %104, %105
  %107 = call i32 @__raw_writel(i32 %101, i64 %106)
  br label %108

108:                                              ; preds = %100, %95
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ERRCTRL_RSP_ERR, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %108
  %114 = load i32, i32* @ERRCTRL_RSP_ERR, align 4
  %115 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %116 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @REG_ERRCTRL_OFFSET, align 8
  %119 = add nsw i64 %117, %118
  %120 = call i32 @__raw_writel(i32 %114, i64 %119)
  br label %121

121:                                              ; preds = %113, %108
  %122 = load i32, i32* %7, align 4
  %123 = load i32, i32* @HT_LINKERR_DETECTED, align 4
  %124 = and i32 %122, %123
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %134

126:                                              ; preds = %121
  %127 = load i32, i32* @HT_LINKERR_DETECTED, align 4
  %128 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %129 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load i64, i64* @REG_LINKERR_OFFSET, align 8
  %132 = add nsw i64 %130, %131
  %133 = call i32 @__raw_writel(i32 %127, i64 %132)
  br label %134

134:                                              ; preds = %126, %121
  %135 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %136 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %137 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = call i32 @edac_device_handle_ce(%struct.edac_device_ctl_info* %135, i32 0, i32 0, i32 %138)
  br label %140

140:                                              ; preds = %134, %54
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpc925_printk(i32, i8*, ...) #1

declare dso_local i32 @__raw_writel(i32, i64) #1

declare dso_local i32 @edac_device_handle_ce(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
