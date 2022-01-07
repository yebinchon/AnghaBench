; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_no_res.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_svc.c_bfa_lps_no_res.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_lps_s = type { i32, i32, i32, %struct.bfa_s* }
%struct.bfa_s = type { i32 }
%struct.bfa_lps_mod_s = type { i32 }
%struct.list_head = type { i32, i32, i32, %struct.bfa_s* }

@BFA_LPS_SM_FWRSP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bfa_lps_s*, i32)* @bfa_lps_no_res to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bfa_lps_no_res(%struct.bfa_lps_s* %0, i32 %1) #0 {
  %3 = alloca %struct.bfa_lps_s*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bfa_s*, align 8
  %6 = alloca %struct.bfa_lps_mod_s*, align 8
  %7 = alloca %struct.list_head*, align 8
  %8 = alloca %struct.list_head*, align 8
  %9 = alloca %struct.bfa_lps_s*, align 8
  store %struct.bfa_lps_s* %0, %struct.bfa_lps_s** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %11 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %10, i32 0, i32 3
  %12 = load %struct.bfa_s*, %struct.bfa_s** %11, align 8
  store %struct.bfa_s* %12, %struct.bfa_s** %5, align 8
  %13 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %14 = call %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s* %13)
  store %struct.bfa_lps_mod_s* %14, %struct.bfa_lps_mod_s** %6, align 8
  %15 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @bfa_trc(%struct.bfa_s* %15, i32 %16)
  %18 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %19 = bitcast %struct.bfa_lps_s* %18 to %struct.list_head*
  %20 = call %struct.list_head* @bfa_q_next(%struct.list_head* %19)
  store %struct.list_head* %20, %struct.list_head** %7, align 8
  br label %21

21:                                               ; preds = %29, %2
  %22 = load i32, i32* %4, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21
  %25 = load %struct.list_head*, %struct.list_head** %7, align 8
  %26 = icmp ne %struct.list_head* %25, null
  br label %27

27:                                               ; preds = %24, %21
  %28 = phi i1 [ false, %21 ], [ %26, %24 ]
  br i1 %28, label %29, label %59

29:                                               ; preds = %27
  %30 = load %struct.list_head*, %struct.list_head** %7, align 8
  %31 = call %struct.list_head* @bfa_q_next(%struct.list_head* %30)
  store %struct.list_head* %31, %struct.list_head** %8, align 8
  %32 = load %struct.list_head*, %struct.list_head** %7, align 8
  %33 = bitcast %struct.list_head* %32 to %struct.bfa_lps_s*
  store %struct.bfa_lps_s* %33, %struct.bfa_lps_s** %9, align 8
  %34 = load %struct.bfa_s*, %struct.bfa_s** %5, align 8
  %35 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %9, align 8
  %36 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @bfa_trc(%struct.bfa_s* %34, i32 %37)
  %39 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %3, align 8
  %40 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %9, align 8
  %43 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %9, align 8
  %45 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %44, i32 0, i32 0
  %46 = call i32 @list_del(i32* %45)
  %47 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %9, align 8
  %48 = getelementptr inbounds %struct.bfa_lps_s, %struct.bfa_lps_s* %47, i32 0, i32 0
  %49 = load %struct.bfa_lps_mod_s*, %struct.bfa_lps_mod_s** %6, align 8
  %50 = getelementptr inbounds %struct.bfa_lps_mod_s, %struct.bfa_lps_mod_s* %49, i32 0, i32 0
  %51 = call i32 @list_add_tail(i32* %48, i32* %50)
  %52 = load %struct.bfa_lps_s*, %struct.bfa_lps_s** %9, align 8
  %53 = bitcast %struct.bfa_lps_s* %52 to %struct.list_head*
  %54 = load i32, i32* @BFA_LPS_SM_FWRSP, align 4
  %55 = call i32 @bfa_sm_send_event(%struct.list_head* %53, i32 %54)
  %56 = load %struct.list_head*, %struct.list_head** %8, align 8
  store %struct.list_head* %56, %struct.list_head** %7, align 8
  %57 = load i32, i32* %4, align 4
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %4, align 4
  br label %21

59:                                               ; preds = %27
  ret void
}

declare dso_local %struct.bfa_lps_mod_s* @BFA_LPS_MOD(%struct.bfa_s*) #1

declare dso_local i32 @bfa_trc(%struct.bfa_s*, i32) #1

declare dso_local %struct.list_head* @bfa_q_next(%struct.list_head*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @bfa_sm_send_event(%struct.list_head*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
