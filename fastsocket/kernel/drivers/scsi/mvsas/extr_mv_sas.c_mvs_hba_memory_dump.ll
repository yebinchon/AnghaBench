; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mvsas/extr_mv_sas.c_mvs_hba_memory_dump.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mvsas/extr_mv_sas.c_mvs_hba_memory_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }
%struct.mvs_info = type { i64, i32, i64, i32*, i64, i32*, %struct.mvs_slot_info* }
%struct.mvs_slot_info = type { i64, i32, i32, i64, i64 }

@KERN_DEBUG = common dso_local global i32 0, align 4
@MVS_CHIP_DISP = common dso_local global %struct.TYPE_2__* null, align 8
@MVS_CHIP_SLOT_SZ = common dso_local global i64 0, align 8
@MVS_OAF_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mvs_info*, i64, i32)* @mvs_hba_memory_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mvs_hba_memory_dump(%struct.mvs_info* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mvs_info*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.mvs_info* %0, %struct.mvs_info** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
