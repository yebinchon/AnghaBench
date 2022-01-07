; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mv64x60_edac.c_mv64x60_cpu_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mv64x60_edac.c_mv64x60_cpu_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.mv64x60_cpu_pdata* }
%struct.mv64x60_cpu_pdata = type { i64* }

@MV64x60_CPU_ERR_CAUSE = common dso_local global i64 0, align 8
@MV64x60_CPU_CAUSE_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mv64x60_cpu_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv64x60_cpu_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edac_device_ctl_info*, align 8
  %7 = alloca %struct.mv64x60_cpu_pdata*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.edac_device_ctl_info*
  store %struct.edac_device_ctl_info* %10, %struct.edac_device_ctl_info** %6, align 8
  %11 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %12 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.mv64x60_cpu_pdata*, %struct.mv64x60_cpu_pdata** %12, align 8
  store %struct.mv64x60_cpu_pdata* %13, %struct.mv64x60_cpu_pdata** %7, align 8
  %14 = load %struct.mv64x60_cpu_pdata*, %struct.mv64x60_cpu_pdata** %7, align 8
  %15 = getelementptr inbounds %struct.mv64x60_cpu_pdata, %struct.mv64x60_cpu_pdata* %14, i32 0, i32 0
  %16 = load i64*, i64** %15, align 8
  %17 = getelementptr inbounds i64, i64* %16, i64 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @MV64x60_CPU_ERR_CAUSE, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @in_le32(i64 %20)
  %22 = load i32, i32* @MV64x60_CPU_CAUSE_MASK, align 4
  %23 = and i32 %21, %22
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @IRQ_NONE, align 4
  store i32 %27, i32* %3, align 4
  br label %32

28:                                               ; preds = %2
  %29 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %30 = call i32 @mv64x60_cpu_check(%struct.edac_device_ctl_info* %29)
  %31 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %31, i32* %3, align 4
  br label %32

32:                                               ; preds = %28, %26
  %33 = load i32, i32* %3, align 4
  ret i32 %33
}

declare dso_local i32 @in_le32(i64) #1

declare dso_local i32 @mv64x60_cpu_check(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
