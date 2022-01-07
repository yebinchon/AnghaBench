; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_send_blocking_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ipr.c_ipr_send_blocking_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipr_cmnd = type { i32, %struct.ipr_ioa_cfg* }
%struct.ipr_ioa_cfg = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ipr_internal_cmd_done = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipr_cmnd*, void (%struct.ipr_cmnd*)*, i32)* @ipr_send_blocking_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipr_send_blocking_cmd(%struct.ipr_cmnd* %0, void (%struct.ipr_cmnd*)* %1, i32 %2) #0 {
  %4 = alloca %struct.ipr_cmnd*, align 8
  %5 = alloca void (%struct.ipr_cmnd*)*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ipr_ioa_cfg*, align 8
  store %struct.ipr_cmnd* %0, %struct.ipr_cmnd** %4, align 8
  store void (%struct.ipr_cmnd*)* %1, void (%struct.ipr_cmnd*)** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %9 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %8, i32 0, i32 1
  %10 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %9, align 8
  store %struct.ipr_ioa_cfg* %10, %struct.ipr_ioa_cfg** %7, align 8
  %11 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %12 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %11, i32 0, i32 0
  %13 = call i32 @init_completion(i32* %12)
  %14 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %15 = load i32, i32* @ipr_internal_cmd_done, align 4
  %16 = load void (%struct.ipr_cmnd*)*, void (%struct.ipr_cmnd*)** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ipr_do_req(%struct.ipr_cmnd* %14, i32 %15, void (%struct.ipr_cmnd*)* %16, i32 %17)
  %19 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  %20 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @spin_unlock_irq(i32 %23)
  %25 = load %struct.ipr_cmnd*, %struct.ipr_cmnd** %4, align 8
  %26 = getelementptr inbounds %struct.ipr_cmnd, %struct.ipr_cmnd* %25, i32 0, i32 0
  %27 = call i32 @wait_for_completion(i32* %26)
  %28 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %7, align 8
  %29 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @spin_lock_irq(i32 %32)
  ret void
}

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @ipr_do_req(%struct.ipr_cmnd*, i32, void (%struct.ipr_cmnd*)*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @wait_for_completion(i32*) #1

declare dso_local i32 @spin_lock_irq(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
