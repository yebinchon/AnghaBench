; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mvsas/extr_mv_sas.c_mvs_assign_reg_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mvsas/extr_mv_sas.c_mvs_assign_reg_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (%struct.mvs_info*, i64*)* }
%struct.mvs_info = type { i32 }
%struct.mvs_device = type { i64 }

@MVS_ID_NOT_MAPPED = common dso_local global i64 0, align 8
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mvs_info*, %struct.mvs_device*)* @mvs_assign_reg_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mvs_assign_reg_set(%struct.mvs_info* %0, %struct.mvs_device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca %struct.mvs_device*, align 8
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store %struct.mvs_device* %1, %struct.mvs_device** %5, align 8
  %6 = load %struct.mvs_device*, %struct.mvs_device** %5, align 8
  %7 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @MVS_ID_NOT_MAPPED, align 8
  %10 = icmp ne i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %20

12:                                               ; preds = %2
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @MVS_CHIP_DISP, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i32 (%struct.mvs_info*, i64*)*, i32 (%struct.mvs_info*, i64*)** %14, align 8
  %16 = load %struct.mvs_info*, %struct.mvs_info** %4, align 8
  %17 = load %struct.mvs_device*, %struct.mvs_device** %5, align 8
  %18 = getelementptr inbounds %struct.mvs_device, %struct.mvs_device* %17, i32 0, i32 0
  %19 = call i32 %15(%struct.mvs_info* %16, i64* %18)
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %12, %11
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
