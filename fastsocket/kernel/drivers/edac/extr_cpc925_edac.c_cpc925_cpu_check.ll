; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_cpu_check.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_cpc925_edac.c_cpc925_cpu_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { i32, %struct.cpc925_dev_info* }
%struct.cpc925_dev_info = type { i64 }

@REG_APIEXCP_OFFSET = common dso_local global i64 0, align 8
@CPU_EXCP_DETECTED = common dso_local global i32 0, align 4
@REG_APIMASK_OFFSET = common dso_local global i64 0, align 8
@KERN_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [62 x i8] c"Processor Interface Fault\0AProcessor Interface register dump:\0A\00", align 1
@.str.1 = private unnamed_addr constant [17 x i8] c"APIMASK\09\090x%08x\0A\00", align 1
@.str.2 = private unnamed_addr constant [17 x i8] c"APIEXCP\09\090x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.edac_device_ctl_info*)* @cpc925_cpu_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cpc925_cpu_check(%struct.edac_device_ctl_info* %0) #0 {
  %2 = alloca %struct.edac_device_ctl_info*, align 8
  %3 = alloca %struct.cpc925_dev_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %2, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 1
  %8 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %7, align 8
  store %struct.cpc925_dev_info* %8, %struct.cpc925_dev_info** %3, align 8
  %9 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %10 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @REG_APIEXCP_OFFSET, align 8
  %13 = add nsw i64 %11, %12
  %14 = call i32 @__raw_readl(i64 %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @CPU_EXCP_DETECTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %1
  br label %40

20:                                               ; preds = %1
  %21 = load %struct.cpc925_dev_info*, %struct.cpc925_dev_info** %3, align 8
  %22 = getelementptr inbounds %struct.cpc925_dev_info, %struct.cpc925_dev_info* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @REG_APIMASK_OFFSET, align 8
  %25 = add nsw i64 %23, %24
  %26 = call i32 @__raw_readl(i64 %25)
  store i32 %26, i32* %5, align 4
  %27 = load i32, i32* @KERN_INFO, align 4
  %28 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %27, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  %29 = load i32, i32* @KERN_INFO, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %29, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @KERN_INFO, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 (i32, i8*, ...) @cpc925_printk(i32 %32, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %33)
  %35 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %36 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %2, align 8
  %37 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @edac_device_handle_ue(%struct.edac_device_ctl_info* %35, i32 0, i32 0, i32 %38)
  br label %40

40:                                               ; preds = %20, %19
  ret void
}

declare dso_local i32 @__raw_readl(i64) #1

declare dso_local i32 @cpc925_printk(i32, i8*, ...) #1

declare dso_local i32 @edac_device_handle_ue(%struct.edac_device_ctl_info*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
