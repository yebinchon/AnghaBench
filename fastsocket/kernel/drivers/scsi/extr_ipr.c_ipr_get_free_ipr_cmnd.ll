; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_get_free_ipr_cmnd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_get_free_ipr_cmnd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32 }
%struct.ipr_ioa_cfg = type { i32* }

@IPR_INIT_HRRQ = common dso_local global i64 0, align 8
@ipr_lock_and_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipr_cmnd* (%struct.ipr_ioa_cfg*)* @ipr_get_free_ipr_cmnd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipr_cmnd* @ipr_get_free_ipr_cmnd(%struct.ipr_ioa_cfg* %0) #0 {
  %2 = alloca %struct.ipr_ioa_cfg*, align 8
  %3 = alloca %struct.ipr_cmnd*, align 8
  store %struct.ipr_ioa_cfg* %0, %struct.ipr_ioa_cfg** %2, align 8
  %4 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %2, align 8
  %5 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %4, i32 0, i32 0
  %6 = load i32*, i32** %5, align 8
  %7 = load i64, i64* @IPR_INIT_HRRQ, align 8
  %8 = getelementptr inbounds i32, i32* %6, i64 %7
  %9 = call %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(i32* %8)
  store %struct.ipr_cmnd* %9, %struct.ipr_cmnd** %3, align 8
  %10 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  %11 = load i32, i32* @ipr_lock_and_done, align 4
  %12 = call i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd* %10, i32 %11)
  %13 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %3, align 8
  ret %struct.ipr_cmnd* %13
}

declare dso_local %struct.ipr_cmnd* @__ipr_get_free_ipr_cmnd(i32*) #1

declare dso_local i32 @ipr_init_ipr_cmnd(%struct.ipr_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
