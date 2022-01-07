; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_state_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_ub.c_ub_state_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ub_dev = type { i32 }
%struct.ub_scsi_cmd = type { i32, i32 (%struct.ub_dev.0*, %struct.ub_scsi_cmd*)*, i32 }
%struct.ub_dev.0 = type opaque

@UB_CMDST_DONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ub_dev*, %struct.ub_scsi_cmd*, i32)* @ub_state_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ub_state_done(%struct.ub_dev* %0, %struct.ub_scsi_cmd* %1, i32 %2) #0 {
  %4 = alloca %struct.ub_dev*, align 8
  %5 = alloca %struct.ub_scsi_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.ub_dev* %0, %struct.ub_dev** %4, align 8
  store %struct.ub_scsi_cmd* %1, %struct.ub_scsi_cmd** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %9 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @UB_CMDST_DONE, align 4
  %11 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %12 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 8
  %13 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %14 = call i32 @ub_cmdq_pop(%struct.ub_dev* %13)
  %15 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %16 = getelementptr inbounds %struct.ub_scsi_cmd, %struct.ub_scsi_cmd* %15, i32 0, i32 1
  %17 = load i32 (%struct.ub_dev.0*, %struct.ub_scsi_cmd*)*, i32 (%struct.ub_dev.0*, %struct.ub_scsi_cmd*)** %16, align 8
  %18 = load %struct.ub_dev*, %struct.ub_dev** %4, align 8
  %19 = bitcast %struct.ub_dev* %18 to %struct.ub_dev.0*
  %20 = load %struct.ub_scsi_cmd*, %struct.ub_scsi_cmd** %5, align 8
  %21 = call i32 %17(%struct.ub_dev.0* %19, %struct.ub_scsi_cmd* %20)
  ret void
}

declare dso_local i32 @ub_cmdq_pop(%struct.ub_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
