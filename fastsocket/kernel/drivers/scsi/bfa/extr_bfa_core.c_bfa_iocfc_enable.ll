; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_core.c_bfa_iocfc_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_s = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@BFA_PL_MID_HAL = common dso_local global i32 0, align 4
@BFA_PL_EID_MISC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"IOC Enable\00", align 1
@BFA_TRUE = common dso_local global i32 0, align 4
@IOCFC_E_ENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_iocfc_enable(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %2, align 8
  %3 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %4 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @BFA_PL_MID_HAL, align 4
  %7 = load i32, i32* @BFA_PL_EID_MISC, align 4
  %8 = call i32 @bfa_plog_str(i32 %5, i32 %6, i32 %7, i32 0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %9 = load i32, i32* @BFA_TRUE, align 4
  %10 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  store i32 %9, i32* %12, align 4
  %13 = load %struct.bfa_s*, %struct.bfa_s** %2, align 8
  %14 = getelementptr inbounds %struct.bfa_s, %struct.bfa_s* %13, i32 0, i32 0
  %15 = load i32, i32* @IOCFC_E_ENABLE, align 4
  %16 = call i32 @bfa_fsm_send_event(%struct.TYPE_2__* %14, i32 %15)
  ret void
}

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bfa_fsm_send_event(%struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
