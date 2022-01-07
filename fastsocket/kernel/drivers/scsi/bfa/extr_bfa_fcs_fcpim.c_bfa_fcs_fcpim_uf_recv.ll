; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_fcpim_uf_recv.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_fcpim_uf_recv.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { i32, i32 }
%struct.fchs_s = type { i32, i32 }
%struct.fc_els_cmd_s = type { i32 }

@FC_TYPE_ELS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfa_fcs_fcpim_uf_recv(%struct.bfa_fcs_itnim_s* %0, %struct.fchs_s* %1, i32 %2) #0 {
  %4 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %5 = alloca %struct.fchs_s*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.fc_els_cmd_s*, align 8
  store %struct.bfa_fcs_itnim_s* %0, %struct.bfa_fcs_itnim_s** %4, align 8
  store %struct.fchs_s* %1, %struct.fchs_s** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %4, align 8
  %9 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %12 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @bfa_trc(i32 %10, i32 %13)
  %15 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %16 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = sext i32 %17 to i64
  %19 = load i64, i64* @FC_TYPE_ELS, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %3
  br label %46

22:                                               ; preds = %3
  %23 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %24 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %23, i64 1
  %25 = bitcast %struct.fchs_s* %24 to %struct.fc_els_cmd_s*
  store %struct.fc_els_cmd_s* %25, %struct.fc_els_cmd_s** %7, align 8
  %26 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %4, align 8
  %27 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %7, align 8
  %30 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @bfa_trc(i32 %28, i32 %31)
  %33 = load %struct.fc_els_cmd_s*, %struct.fc_els_cmd_s** %7, align 8
  %34 = getelementptr inbounds %struct.fc_els_cmd_s, %struct.fc_els_cmd_s* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  switch i32 %35, label %44 [
    i32 128, label %36
  ]

36:                                               ; preds = %22
  %37 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %4, align 8
  %38 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.fchs_s*, %struct.fchs_s** %5, align 8
  %41 = getelementptr inbounds %struct.fchs_s, %struct.fchs_s* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @bfa_fcs_rport_prlo(i32 %39, i32 %42)
  br label %46

44:                                               ; preds = %22
  %45 = call i32 @WARN_ON(i32 1)
  br label %46

46:                                               ; preds = %21, %44, %36
  ret void
}

declare dso_local i32 @bfa_trc(i32, i32) #1

declare dso_local i32 @bfa_fcs_rport_prlo(i32, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
