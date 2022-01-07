; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcs_fcpim.c_bfa_fcs_itnim_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_fcs_itnim_s = type { i8*, i8*, i8*, i8*, i32*, %struct.bfad_itnim_s*, i32, %struct.bfa_fcs_rport_s* }
%struct.bfad_itnim_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32, i32, %struct.bfa_fcs_lport_s* }
%struct.bfa_fcs_lport_s = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@BFA_FALSE = common dso_local global i8* null, align 8
@bfa_fcs_itnim_sm_offline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_fcs_itnim_s* @bfa_fcs_itnim_create(%struct.bfa_fcs_rport_s* %0) #0 {
  %2 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %3 = alloca %struct.bfa_fcs_rport_s*, align 8
  %4 = alloca %struct.bfa_fcs_lport_s*, align 8
  %5 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %6 = alloca %struct.bfad_itnim_s*, align 8
  store %struct.bfa_fcs_rport_s* %0, %struct.bfa_fcs_rport_s** %3, align 8
  %7 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %8 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %7, i32 0, i32 2
  %9 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %8, align 8
  store %struct.bfa_fcs_lport_s* %9, %struct.bfa_fcs_lport_s** %4, align 8
  %10 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %10, i32 0, i32 0
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bfa_fcb_itnim_alloc(i32 %14, %struct.bfa_fcs_itnim_s** %5, %struct.bfad_itnim_s** %6)
  %16 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %17 = icmp eq %struct.bfa_fcs_itnim_s* %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %4, align 8
  %20 = getelementptr inbounds %struct.bfa_fcs_lport_s, %struct.bfa_fcs_lport_s* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %23 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bfa_trc(%struct.TYPE_2__* %21, i32 %24)
  store %struct.bfa_fcs_itnim_s* null, %struct.bfa_fcs_itnim_s** %2, align 8
  br label %56

26:                                               ; preds = %1
  %27 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %28 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %28, i32 0, i32 7
  store %struct.bfa_fcs_rport_s* %27, %struct.bfa_fcs_rport_s** %29, align 8
  %30 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %33, i32 0, i32 6
  store i32 %32, i32* %34, align 8
  %35 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %6, align 8
  %36 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %37 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %36, i32 0, i32 5
  store %struct.bfad_itnim_s* %35, %struct.bfad_itnim_s** %37, align 8
  %38 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %39 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %38, i32 0, i32 4
  store i32* null, i32** %39, align 8
  %40 = load i8*, i8** @BFA_FALSE, align 8
  %41 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %42 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %41, i32 0, i32 3
  store i8* %40, i8** %42, align 8
  %43 = load i8*, i8** @BFA_FALSE, align 8
  %44 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %45 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %44, i32 0, i32 2
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** @BFA_FALSE, align 8
  %47 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %48 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load i8*, i8** @BFA_FALSE, align 8
  %50 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %51 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  %52 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  %53 = load i32, i32* @bfa_fcs_itnim_sm_offline, align 4
  %54 = call i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s* %52, i32 %53)
  %55 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %5, align 8
  store %struct.bfa_fcs_itnim_s* %55, %struct.bfa_fcs_itnim_s** %2, align 8
  br label %56

56:                                               ; preds = %26, %18
  %57 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %2, align 8
  ret %struct.bfa_fcs_itnim_s* %57
}

declare dso_local i32 @bfa_fcb_itnim_alloc(i32, %struct.bfa_fcs_itnim_s**, %struct.bfad_itnim_s**) #1

declare dso_local i32 @bfa_trc(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @bfa_sm_set_state(%struct.bfa_fcs_itnim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
