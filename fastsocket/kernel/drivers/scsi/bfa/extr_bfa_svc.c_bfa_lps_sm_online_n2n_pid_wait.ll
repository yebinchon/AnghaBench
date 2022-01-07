; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_online_n2n_pid_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_sm_online_n2n_pid_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }

@bfa_lps_sm_online = common dso_local global i32 0, align 4
@bfa_lps_sm_logowait = common dso_local global i32 0, align 4
@BFA_PL_MID_LPS = common dso_local global i32 0, align 4
@BFA_PL_EID_LOGO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"Logout\00", align 1
@bfa_lps_sm_init = common dso_local global i32 0, align 4
@BFA_PL_EID_FIP_FCF_CVL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"FCF Clear Virt. Link Rx\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*, i32)* @bfa_lps_sm_online_n2n_pid_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_sm_online_n2n_pid_wait(%struct.bfa_lps_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_lps_s*, align 8
  %4 = alloca i32, align 4
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %6 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %5, i32 0, i32 1
  %7 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %8 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %9 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @bfa_trc(%struct.TYPE_3__* %7, i32 %10)
  %12 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @bfa_trc(%struct.TYPE_3__* %14, i32 %15)
  %17 = load i32, i32* %4, align 4
  switch i32 %17, label %60 [
    i32 129, label %18
    i32 131, label %24
    i32 128, label %36
    i32 130, label %53
    i32 132, label %53
  ]

18:                                               ; preds = %2
  %19 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %20 = load i32, i32* @bfa_lps_sm_online, align 4
  %21 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %19, i32 %20)
  %22 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %23 = call i32 @bfa_lps_send_set_n2n_pid(%struct.bfa_lps_s* %22)
  br label %66

24:                                               ; preds = %2
  %25 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %26 = load i32, i32* @bfa_lps_sm_logowait, align 4
  %27 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %25, i32 %26)
  %28 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %34 = load i32, i32* @BFA_PL_EID_LOGO, align 4
  %35 = call i32 @bfa_plog_str(i32 %32, i32 %33, i32 %34, i32 0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  br label %66

36:                                               ; preds = %2
  %37 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %38 = load i32, i32* @bfa_lps_sm_init, align 4
  %39 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %37, i32 %38)
  %40 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %41 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %40, i32 0, i32 2
  %42 = call i32 @bfa_reqq_wcancel(i32* %41)
  %43 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %44 = call i32 @bfa_lps_cvl_event(%struct.bfa_lps_s* %43)
  %45 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %46 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %45, i32 0, i32 1
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @BFA_PL_MID_LPS, align 4
  %51 = load i32, i32* @BFA_PL_EID_FIP_FCF_CVL, align 4
  %52 = call i32 @bfa_plog_str(i32 %49, i32 %50, i32 %51, i32 0, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  br label %66

53:                                               ; preds = %2, %2
  %54 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %55 = load i32, i32* @bfa_lps_sm_init, align 4
  %56 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %54, i32 %55)
  %57 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %57, i32 0, i32 2
  %59 = call i32 @bfa_reqq_wcancel(i32* %58)
  br label %66

60:                                               ; preds = %2
  %61 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %62 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %61, i32 0, i32 1
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = call i32 @bfa_sm_fault(%struct.TYPE_3__* %63, i32 %64)
  br label %66

66:                                               ; preds = %60, %53, %36, %24, %18
  ret void
}

declare dso_local i32 @bfa_trc(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_lps_s*, i32) #1

declare dso_local i32 @bfa_lps_send_set_n2n_pid(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_plog_str(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @bfa_reqq_wcancel(i32*) #1

declare dso_local i32 @bfa_lps_cvl_event(%struct.bfa_lps_s*) #1

declare dso_local i32 @bfa_sm_fault(%struct.TYPE_3__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
