; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_meminfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_meminfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_iocfc_cfg_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.bfa_meminfo_s = type { i32 }
%struct.bfa_s = type { i32 }
%struct.bfa_mem_kva_s = type { i32 }

@BFA_LPS_MIN_LPORTS = common dso_local global i32 0, align 4
@BFA_LPS_MAX_LPORTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_iocfc_cfg_s*, %struct.bfa_meminfo_s*, %struct.bfa_s*)* @bfa_lps_meminfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_meminfo(%struct.bfa_iocfc_cfg_s* %0, %struct.bfa_meminfo_s* %1, %struct.bfa_s* %2) #0 {
  %4 = alloca %struct.bfa_iocfc_cfg_s*, align 8
  %5 = alloca %struct.bfa_meminfo_s*, align 8
  %6 = alloca %struct.bfa_s*, align 8
  %7 = alloca %struct.bfa_mem_kva_s*, align 8
  store %struct.bfa_iocfc_cfg_s* %0, %struct.bfa_iocfc_cfg_s** %4, align 8
  store %struct.bfa_meminfo_s* %1, %struct.bfa_meminfo_s** %5, align 8
  store %struct.bfa_s* %2, %struct.bfa_s** %6, align 8
  %8 = load %struct.bfa_s*, %struct.bfa_s** %6, align 8
  %9 = call %struct.bfa_mem_kva_s* @BFA_MEM_LPS_KVA(%struct.bfa_s* %8)
  store %struct.bfa_mem_kva_s* %9, %struct.bfa_mem_kva_s** %7, align 8
  %10 = load %struct.bfa_iocfc_cfg_s*, %struct.bfa_iocfc_cfg_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_iocfc_cfg_s, %struct.bfa_iocfc_cfg_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %3
  %16 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %17 = load %struct.bfa_mem_kva_s*, %struct.bfa_mem_kva_s** %7, align 8
  %18 = load i32, i32* @BFA_LPS_MIN_LPORTS, align 4
  %19 = sext i32 %18 to i64
  %20 = mul i64 4, %19
  %21 = trunc i64 %20 to i32
  %22 = call i32 @bfa_mem_kva_setup(%struct.bfa_meminfo_s* %16, %struct.bfa_mem_kva_s* %17, i32 %21)
  br label %31

23:                                               ; preds = %3
  %24 = load %struct.bfa_meminfo_s*, %struct.bfa_meminfo_s** %5, align 8
  %25 = load %struct.bfa_mem_kva_s*, %struct.bfa_mem_kva_s** %7, align 8
  %26 = load i32, i32* @BFA_LPS_MAX_LPORTS, align 4
  %27 = sext i32 %26 to i64
  %28 = mul i64 4, %27
  %29 = trunc i64 %28 to i32
  %30 = call i32 @bfa_mem_kva_setup(%struct.bfa_meminfo_s* %24, %struct.bfa_mem_kva_s* %25, i32 %29)
  br label %31

31:                                               ; preds = %23, %15
  ret void
}

declare dso_local %struct.bfa_mem_kva_s* @BFA_MEM_LPS_KVA(%struct.bfa_s*) #1

declare dso_local i32 @bfa_mem_kva_setup(%struct.bfa_meminfo_s*, %struct.bfa_mem_kva_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
