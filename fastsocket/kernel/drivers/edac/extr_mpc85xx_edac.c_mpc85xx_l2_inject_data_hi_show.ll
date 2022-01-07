; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_inject_data_hi_show.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/edac/extr_mpc85xx_edac.c_mpc85xx_l2_inject_data_hi_show.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.edac_device_ctl_info = type { %struct.mpc85xx_l2_pdata* }
%struct.mpc85xx_l2_pdata = type { i64 }

@.str = private unnamed_addr constant [7 x i8] c"0x%08x\00", align 1
@MPC85XX_L2_ERRINJHI = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.edac_device_ctl_info*, i8*)* @mpc85xx_l2_inject_data_hi_show to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc85xx_l2_inject_data_hi_show(%struct.edac_device_ctl_info* %0, i8* %1) #0 {
  %3 = alloca %struct.edac_device_ctl_info*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mpc85xx_l2_pdata*, align 8
  store %struct.edac_device_ctl_info* %0, %struct.edac_device_ctl_info** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.edac_device_ctl_info*, %struct.edac_device_ctl_info** %3, align 8
  %7 = getelementptr inbounds %struct.edac_device_ctl_info, %struct.edac_device_ctl_info* %6, i32 0, i32 0
  %8 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %7, align 8
  store %struct.mpc85xx_l2_pdata* %8, %struct.mpc85xx_l2_pdata** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = load %struct.mpc85xx_l2_pdata*, %struct.mpc85xx_l2_pdata** %5, align 8
  %11 = getelementptr inbounds %struct.mpc85xx_l2_pdata, %struct.mpc85xx_l2_pdata* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @MPC85XX_L2_ERRINJHI, align 8
  %14 = add nsw i64 %12, %13
  %15 = call i32 @in_be32(i64 %14)
  %16 = call i32 @sprintf(i8* %9, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %15)
  ret i32 %16
}

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @in_be32(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
