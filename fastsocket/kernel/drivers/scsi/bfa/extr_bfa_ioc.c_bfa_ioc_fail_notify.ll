; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fail_notify.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_ioc.c_bfa_ioc_fail_notify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_ioc_s = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }
%struct.bfad_s = type { i32 }

@BFA_IOC_E_FAILED = common dso_local global i32 0, align 4
@KERN_CRIT = common dso_local global i32 0, align 4
@bfa_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Heart Beat of IOC has failed\0A\00", align 1
@BFA_IOC_AEN_HBFAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_ioc_s*)* @bfa_ioc_fail_notify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_ioc_fail_notify(%struct.bfa_ioc_s* %0) #0 {
  %2 = alloca %struct.bfa_ioc_s*, align 8
  %3 = alloca %struct.bfad_s*, align 8
  store %struct.bfa_ioc_s* %0, %struct.bfa_ioc_s** %2, align 8
  %4 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %5 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %4, i32 0, i32 0
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to %struct.bfad_s*
  store %struct.bfad_s* %9, %struct.bfad_s** %3, align 8
  %10 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %11 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %10, i32 0, i32 1
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %13, align 8
  %15 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %16 = getelementptr inbounds %struct.bfa_ioc_s, %struct.bfa_ioc_s* %15, i32 0, i32 0
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = call i32 %14(%struct.TYPE_4__* %17)
  %19 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %20 = load i32, i32* @BFA_IOC_E_FAILED, align 4
  %21 = call i32 @bfa_ioc_event_notify(%struct.bfa_ioc_s* %19, i32 %20)
  %22 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %23 = call i32 @bfa_ioc_debug_save_ftrc(%struct.bfa_ioc_s* %22)
  %24 = load i32, i32* @KERN_CRIT, align 4
  %25 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %26 = load i32, i32* @bfa_log_level, align 4
  %27 = call i32 @BFA_LOG(i32 %24, %struct.bfad_s* %25, i32 %26, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.bfa_ioc_s*, %struct.bfa_ioc_s** %2, align 8
  %29 = load i32, i32* @BFA_IOC_AEN_HBFAIL, align 4
  %30 = call i32 @bfa_ioc_aen_post(%struct.bfa_ioc_s* %28, i32 %29)
  ret void
}

declare dso_local i32 @bfa_ioc_event_notify(%struct.bfa_ioc_s*, i32) #1

declare dso_local i32 @bfa_ioc_debug_save_ftrc(%struct.bfa_ioc_s*) #1

declare dso_local i32 @BFA_LOG(i32, %struct.bfad_s*, i32, i8*) #1

declare dso_local i32 @bfa_ioc_aen_post(%struct.bfa_ioc_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
