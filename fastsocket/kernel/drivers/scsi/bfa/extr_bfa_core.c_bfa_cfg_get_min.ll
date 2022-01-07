; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_min.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_cfg_get_min.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i64, i32, i32, i32, i32, i32 }

@BFA_IOIM_MIN = common dso_local global i32 0, align 4
@BFA_TSKIM_MIN = common dso_local global i32 0, align 4
@BFA_FCXP_MIN = common dso_local global i32 0, align 4
@BFA_UF_MIN = common dso_local global i32 0, align 4
@BFA_RPORT_MIN = common dso_local global i32 0, align 4
@BFA_SGPG_MIN = common dso_local global i32 0, align 4
@BFA_REQQ_NELEMS_MIN = common dso_local global i32 0, align 4
@BFA_RSPQ_NELEMS_MIN = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_cfg_get_min(%struct.bfa_iocfc_cfg_s* %0) #0 {
  %2 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %2, align 8
  %3 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %4 = call i32 @bfa_cfg_get_default(%struct.bfa_iocfc_cfg_s* %3)
  %5 = load i32, i32* @BFA_IOIM_MIN, align 4
  %6 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %7 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store i32 %5, i32* %8, align 8
  %9 = load i32, i32* @BFA_TSKIM_MIN, align 4
  %10 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 4
  store i32 %9, i32* %12, align 4
  %13 = load i32, i32* @BFA_FCXP_MIN, align 4
  %14 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %15 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 3
  store i32 %13, i32* %16, align 8
  %17 = load i32, i32* @BFA_UF_MIN, align 4
  %18 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %19 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  store i32 %17, i32* %20, align 4
  %21 = load i32, i32* @BFA_RPORT_MIN, align 4
  %22 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %23 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 8
  %25 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %26 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  %28 = load i32, i32* @BFA_SGPG_MIN, align 4
  %29 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %30 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 4
  %32 = load i32, i32* @BFA_REQQ_NELEMS_MIN, align 4
  %33 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %34 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 2
  store i32 %32, i32* %35, align 8
  %36 = load i32, i32* @BFA_RSPQ_NELEMS_MIN, align 4
  %37 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %38 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 1
  store i32 %36, i32* %39, align 4
  %40 = load i32, i32* @BFA_TRUE, align 4
  %41 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %2, align 8
  %42 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  store i32 %40, i32* %43, align 8
  ret void
}

declare dso_local i32 @bfa_cfg_get_default(%struct.bfa_iocfc_cfg_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
