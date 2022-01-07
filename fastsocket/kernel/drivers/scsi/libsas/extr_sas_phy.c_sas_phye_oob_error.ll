; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_oob_error.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/libsas/extr_sas_phy.c_sas_phye_oob_error.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.work_struct = type { i32 }
%struct.asd_sas_event = type { %struct.asd_sas_phy* }
%struct.asd_sas_phy = type { i32, i64, i32, %struct.asd_sas_port*, %struct.sas_ha_struct* }
%struct.asd_sas_port = type { i32 }
%struct.sas_ha_struct = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sas_internal = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.asd_sas_phy*, i32, i32*)* }

@PHYE_OOB_ERROR = common dso_local global i32 0, align 4
@PHY_FUNC_HARD_RESET = common dso_local global i32 0, align 4
@PHY_FUNC_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.work_struct*)* @sas_phye_oob_error to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sas_phye_oob_error(%struct.work_struct* %0) #0 {
  %2 = alloca %struct.work_struct*, align 8
  %3 = alloca %struct.asd_sas_event*, align 8
  %4 = alloca %struct.asd_sas_phy*, align 8
  %5 = alloca %struct.sas_ha_struct*, align 8
  %6 = alloca %struct.asd_sas_port*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  store %struct.work_struct* %0, %struct.work_struct** %2, align 8
  %8 = load %struct.work_struct*, %struct.work_struct** %2, align 8
  %9 = call %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct* %8)
  store %struct.asd_sas_event* %9, %struct.asd_sas_event** %3, align 8
  %10 = load %struct.asd_sas_event*, %struct.asd_sas_event** %3, align 8
  %11 = getelementptr inbounds %struct.asd_sas_event, %struct.asd_sas_event* %10, i32 0, i32 0
  %12 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %11, align 8
  store %struct.asd_sas_phy* %12, %struct.asd_sas_phy** %4, align 8
  %13 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %14 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %13, i32 0, i32 4
  %15 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %14, align 8
  store %struct.sas_ha_struct* %15, %struct.sas_ha_struct** %5, align 8
  %16 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %17 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %16, i32 0, i32 3
  %18 = load %struct.asd_sas_port*, %struct.asd_sas_port** %17, align 8
  store %struct.asd_sas_port* %18, %struct.asd_sas_port** %6, align 8
  %19 = load %struct.sas_ha_struct*, %struct.sas_ha_struct** %5, align 8
  %20 = getelementptr inbounds %struct.sas_ha_struct, %struct.sas_ha_struct* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call %struct.sas_internal* @to_sas_internal(i32 %24)
  store %struct.sas_internal* %25, %struct.sas_internal** %7, align 8
  %26 = load i32, i32* @PHYE_OOB_ERROR, align 4
  %27 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %28 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %27, i32 0, i32 2
  %29 = call i32 @clear_bit(i32 %26, i32* %28)
  %30 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %31 = call i32 @sas_deform_port(%struct.asd_sas_phy* %30, i32 1)
  %32 = load %struct.asd_sas_port*, %struct.asd_sas_port** %6, align 8
  %33 = icmp ne %struct.asd_sas_port* %32, null
  br i1 %33, label %78, label %34

34:                                               ; preds = %1
  %35 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %36 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %78

39:                                               ; preds = %34
  %40 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %41 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %43, align 8
  %45 = icmp ne i32 (%struct.asd_sas_phy*, i32, i32*)* %44, null
  br i1 %45, label %46, label %78

46:                                               ; preds = %39
  %47 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %48 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %52 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  switch i32 %53, label %64 [
    i32 1, label %54
    i32 2, label %54
    i32 3, label %63
  ]

54:                                               ; preds = %46, %46
  %55 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %56 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %55, i32 0, i32 0
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %58, align 8
  %60 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %61 = load i32, i32* @PHY_FUNC_HARD_RESET, align 4
  %62 = call i32 %59(%struct.asd_sas_phy* %60, i32 %61, i32* null)
  br label %77

63:                                               ; preds = %46
  br label %64

64:                                               ; preds = %46, %63
  %65 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %66 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %65, i32 0, i32 0
  store i32 0, i32* %66, align 8
  %67 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %68 = getelementptr inbounds %struct.asd_sas_phy, %struct.asd_sas_phy* %67, i32 0, i32 1
  store i64 0, i64* %68, align 8
  %69 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %70 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %69, i32 0, i32 0
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %71, i32 0, i32 0
  %73 = load i32 (%struct.asd_sas_phy*, i32, i32*)*, i32 (%struct.asd_sas_phy*, i32, i32*)** %72, align 8
  %74 = load %struct.asd_sas_phy*, %struct.asd_sas_phy** %4, align 8
  %75 = load i32, i32* @PHY_FUNC_DISABLE, align 4
  %76 = call i32 %73(%struct.asd_sas_phy* %74, i32 %75, i32* null)
  br label %77

77:                                               ; preds = %64, %54
  br label %78

78:                                               ; preds = %77, %39, %34, %1
  ret void
}

declare dso_local %struct.asd_sas_event* @to_asd_sas_event(%struct.work_struct*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @sas_deform_port(%struct.asd_sas_phy*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
