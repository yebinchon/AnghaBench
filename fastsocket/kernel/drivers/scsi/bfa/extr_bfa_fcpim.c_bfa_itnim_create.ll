; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfa_fcpim.c_bfa_itnim_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfa_itnim_s = type { i8*, %struct.bfa_rport_s* }
%struct.bfa_s = type { i32 }
%struct.bfa_rport_s = type { i32 }
%struct.bfa_fcpim_s = type { i32 }

@bfa_itnim_isr = common dso_local global i32 0, align 4
@creates = common dso_local global i32 0, align 4
@BFA_ITNIM_SM_CREATE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.bfa_itnim_s* @bfa_itnim_create(%struct.bfa_s* %0, %struct.bfa_rport_s* %1, i8* %2) #0 {
  %4 = alloca %struct.bfa_s*, align 8
  %5 = alloca %struct.bfa_rport_s*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.bfa_fcpim_s*, align 8
  %8 = alloca %struct.bfa_itnim_s*, align 8
  store %struct.bfa_s* %0, %struct.bfa_s** %4, align 8
  store %struct.bfa_rport_s* %1, %struct.bfa_rport_s** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %10 = call %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s* %9)
  store %struct.bfa_fcpim_s* %10, %struct.bfa_fcpim_s** %7, align 8
  %11 = load %struct.bfa_s*, %struct.bfa_s** %4, align 8
  %12 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %5, align 8
  %13 = load i32, i32* @bfa_itnim_isr, align 4
  %14 = call i32 @bfa_itn_create(%struct.bfa_s* %11, %struct.bfa_rport_s* %12, i32 %13)
  %15 = load %struct.bfa_fcpim_s*, %struct.bfa_fcpim_s** %7, align 8
  %16 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %5, align 8
  %17 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.bfa_itnim_s* @BFA_ITNIM_FROM_TAG(%struct.bfa_fcpim_s* %15, i32 %18)
  store %struct.bfa_itnim_s* %19, %struct.bfa_itnim_s** %8, align 8
  %20 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %21 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %20, i32 0, i32 1
  %22 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %21, align 8
  %23 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %5, align 8
  %24 = icmp ne %struct.bfa_rport_s* %22, %23
  %25 = zext i1 %24 to i32
  %26 = call i32 @WARN_ON(i32 %25)
  %27 = load i8*, i8** %6, align 8
  %28 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %29 = getelementptr inbounds %struct.bfa_itnim_s, %struct.bfa_itnim_s* %28, i32 0, i32 0
  store i8* %27, i8** %29, align 8
  %30 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %31 = load i32, i32* @creates, align 4
  %32 = call i32 @bfa_stats(%struct.bfa_itnim_s* %30, i32 %31)
  %33 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  %34 = load i32, i32* @BFA_ITNIM_SM_CREATE, align 4
  %35 = call i32 @bfa_sm_send_event(%struct.bfa_itnim_s* %33, i32 %34)
  %36 = load %struct.bfa_itnim_s*, %struct.bfa_itnim_s** %8, align 8
  ret %struct.bfa_itnim_s* %36
}

declare dso_local %struct.bfa_fcpim_s* @BFA_FCPIM(%struct.bfa_s*) #1

declare dso_local i32 @bfa_itn_create(%struct.bfa_s*, %struct.bfa_rport_s*, i32) #1

declare dso_local %struct.bfa_itnim_s* @BFA_ITNIM_FROM_TAG(%struct.bfa_fcpim_s*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @bfa_stats(%struct.bfa_itnim_s*, i32) #1

declare dso_local i32 @bfa_sm_send_event(%struct.bfa_itnim_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
