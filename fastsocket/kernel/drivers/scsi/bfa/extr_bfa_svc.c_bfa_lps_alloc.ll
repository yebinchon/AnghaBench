; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_alloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32 }
%struct.bfa_s = type { i32 }
%struct.bfa_lps_mod_s = type { i32, i32 }

@bfa_lps_sm_init = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_lps_s* @bfa_lps_alloc(%struct.bfa_s* %0) #0 {
  %2 = alloca %struct.bfa_lps_s*, align 8
  %3 = alloca %struct.bfa_s*, align 8
  %4 = alloca %struct.bfa_lps_mod_s*, align 8
  %5 = alloca %struct.bfa_lps_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %3, align 8
  %6 = load %struct.bfa_s*, %struct.bfa_s** %3, align 8
  %7 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s* %6)
  store %struct.bfa_lps_mod_s* %7, %struct.bfa_lps_mod_s** %4, align 8
  store %struct.bfa_lps_s* null, %struct.bfa_lps_s** %5, align 8
  %8 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %8, i32 0, i32 1
  %10 = call i32 @bfa_q_deq(i32* %9, %struct.bfa_lps_s** %5)
  %11 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %5, align 8
  %12 = icmp eq %struct.bfa_lps_s* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.bfa_lps_s* null, %struct.bfa_lps_s** %2, align 8
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %5, align 8
  %16 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %15, i32 0, i32 0
  %17 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %4, align 8
  %18 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %17, i32 0, i32 0
  %19 = call i32 @list_add_tail(i32* %16, i32* %18)
  %20 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %5, align 8
  %21 = load i32, i32* @bfa_lps_sm_init, align 4
  %22 = call i32 @bfa_sm_set_state(%struct.bfa_lps_s* %20, i32 %21)
  %23 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %5, align 8
  store %struct.bfa_lps_s* %23, %struct.bfa_lps_s** %2, align 8
  br label %24

24:                                               ; preds = %14, %13
  %25 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %2, align 8
  ret %struct.bfa_lps_s* %25
}

declare dso_local %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_q_deq(i32*, %struct.bfa_lps_s**) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_lps_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
