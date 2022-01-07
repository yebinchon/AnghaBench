; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.mpc85xx_l2_pdata* }
%struct.mpc85xx_l2_pdata = type { i64 }

@MPC85XX_L2_ERRDET = common dso_local global i64 0, align 8
@L2_EDE_MASK = common dso_local global i32 0, align 4
@IRQ_NONE = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mpc85xx_l2_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_l2_isr(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.edac_device_ctl_info*, align 8
  %7 = alloca %struct.mpc85xx_l2_pdata*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.edac_device_ctl_info*
  store %struct.edac_device_ctl_info* %10, %struct.edac_device_ctl_info** %6, align 8
  %11 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %12 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %11, i32 0, i32 0
  %13 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %12, align 8
  store %struct.mpc85xx_l2_pdata* %13, %struct.mpc85xx_l2_pdata** %7, align 8
  %14 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %7, align 8
  %15 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @MPC85XX_L2_ERRDET, align 8
  %18 = add nsw i64 %16, %17
  %19 = call i32 @in_be32(i64 %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = load i32, i32* @L2_EDE_MASK, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %2
  %25 = load i32, i32* @IRQ_NONE, align 4
  store i32 %25, i32* %3, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %6, align 8
  %28 = call i32 @mpc85xx_l2_check(%struct.edac_device_ctl_info* %27)
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %26, %24
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @in_be32(i64) #1

declare dso_local i32 @mpc85xx_l2_check(%struct.edac_device_ctl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
