; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_itnim_get_itnstats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_itnim_get_itnstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_itnim_itnstats_s = type { i32, i32, i32, i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_itnim_s = type { i32 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i32 0, align 4
@BFA_STATUS_UNKNOWN_RWWN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*)* @bfad_iocmd_itnim_get_itnstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_itnim_get_itnstats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_itnim_itnstats_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %8 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to %struct.bfa_bsg_itnim_itnstats_s*
  store %struct.bfa_bsg_itnim_itnstats_s* %10, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %11 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %12 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %11, i32 0, i32 0
  %13 = load i64, i64* %8, align 8
  %14 = call i32 @spin_lock_irqsave(i32* %12, i64 %13)
  %15 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %15, i32 0, i32 1
  %17 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %18 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %21 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %16, i32 %19, i32 %22)
  store %struct.bfa_fcs_lport_s* %23, %struct.bfa_fcs_lport_s** %6, align 8
  %24 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %25 = icmp ne %struct.bfa_fcs_lport_s* %24, null
  br i1 %25, label %32, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @BFA_STATUS_UNKNOWN_LWWN, align 4
  %28 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %29 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 4
  %30 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %31 = call i32 @bfa_trc(%struct.bfad_s* %30, i32 0)
  br label %56

32:                                               ; preds = %2
  %33 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %34 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %35 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call %struct.bfa_fcs_itnim_s* @bfa_fcs_itnim_lookup(%struct.bfa_fcs_lport_s* %33, i32 %36)
  store %struct.bfa_fcs_itnim_s* %37, %struct.bfa_fcs_itnim_s** %7, align 8
  %38 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %7, align 8
  %39 = icmp eq %struct.bfa_fcs_itnim_s* %38, null
  br i1 %39, label %40, label %44

40:                                               ; preds = %32
  %41 = load i32, i32* @BFA_STATUS_UNKNOWN_RWWN, align 4
  %42 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  br label %55

44:                                               ; preds = %32
  %45 = load i32, i32* @BFA_STATUS_OK, align 4
  %46 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %47 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %49 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.bfa_bsg_itnim_itnstats_s*, %struct.bfa_bsg_itnim_itnstats_s** %5, align 8
  %53 = getelementptr inbounds %struct.bfa_bsg_itnim_itnstats_s, %struct.bfa_bsg_itnim_itnstats_s* %52, i32 0, i32 0
  %54 = call i32 @bfa_fcs_itnim_stats_get(%struct.bfa_fcs_lport_s* %48, i32 %51, i32* %53)
  br label %55

55:                                               ; preds = %44, %40
  br label %56

56:                                               ; preds = %55, %26
  %57 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %58 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %57, i32 0, i32 0
  %59 = load i64, i64* %8, align 8
  %60 = call i32 @spin_unlock_irqrestore(i32* %58, i64 %59)
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local %struct.bfa_fcs_itnim_s* @bfa_fcs_itnim_lookup(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @bfa_fcs_itnim_stats_get(%struct.bfa_fcs_lport_s*, i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
