; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_clr_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_clr_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_rport_reset_stats_s = type { i32, i32, i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_rport_s = type { i32 }
%struct.bfa_rport_s = type { i8 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i32 0, align 4
@BFA_STATUS_UNKNOWN_RWWN = common dso_local global i32 0, align 4
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_rport_clr_stats(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_rport_reset_stats_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.bfa_fcs_rport_s*, align 8
  %8 = alloca %struct.bfa_rport_s*, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_rport_reset_stats_s*
  store %struct.bfa_bsg_rport_reset_stats_s* %11, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = load %struct.bfa_bsg_rport_reset_stats_s*, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, %struct.bfa_bsg_rport_reset_stats_s* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bfa_bsg_rport_reset_stats_s*, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, %struct.bfa_bsg_rport_reset_stats_s* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %17, i32 %20, i32 %23)
  store %struct.bfa_fcs_lport_s* %24, %struct.bfa_fcs_lport_s** %6, align 8
  %25 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %26 = icmp eq %struct.bfa_fcs_lport_s* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %2
  %28 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @spin_unlock_irqrestore(i32* %29, i64 %30)
  %32 = load i32, i32* @BFA_STATUS_UNKNOWN_LWWN, align 4
  %33 = load %struct.bfa_bsg_rport_reset_stats_s*, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %34 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, %struct.bfa_bsg_rport_reset_stats_s* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  br label %72

35:                                               ; preds = %2
  %36 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %37 = load %struct.bfa_bsg_rport_reset_stats_s*, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %38 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, %struct.bfa_bsg_rport_reset_stats_s* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s* %36, i32 %39)
  store %struct.bfa_fcs_rport_s* %40, %struct.bfa_fcs_rport_s** %7, align 8
  %41 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %42 = icmp eq %struct.bfa_fcs_rport_s* %41, null
  br i1 %42, label %43, label %51

43:                                               ; preds = %35
  %44 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %45 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %44, i32 0, i32 0
  %46 = load i64, i64* %9, align 8
  %47 = call i32 @spin_unlock_irqrestore(i32* %45, i64 %46)
  %48 = load i32, i32* @BFA_STATUS_UNKNOWN_RWWN, align 4
  %49 = load %struct.bfa_bsg_rport_reset_stats_s*, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %50 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, %struct.bfa_bsg_rport_reset_stats_s* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %72

51:                                               ; preds = %35
  %52 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %53 = getelementptr inbounds %struct.bfa_fcs_rport_s, %struct.bfa_fcs_rport_s* %52, i32 0, i32 0
  %54 = bitcast i32* %53 to i8*
  %55 = call i32 @memset(i8* %54, i32 0, i32 4)
  %56 = load %struct.bfa_fcs_rport_s*, %struct.bfa_fcs_rport_s** %7, align 8
  %57 = call %struct.bfa_rport_s* @bfa_fcs_rport_get_halrport(%struct.bfa_fcs_rport_s* %56)
  store %struct.bfa_rport_s* %57, %struct.bfa_rport_s** %8, align 8
  %58 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %8, align 8
  %59 = icmp ne %struct.bfa_rport_s* %58, null
  br i1 %59, label %60, label %64

60:                                               ; preds = %51
  %61 = load %struct.bfa_rport_s*, %struct.bfa_rport_s** %8, align 8
  %62 = getelementptr inbounds %struct.bfa_rport_s, %struct.bfa_rport_s* %61, i32 0, i32 0
  %63 = call i32 @memset(i8* %62, i32 0, i32 1)
  br label %64

64:                                               ; preds = %60, %51
  %65 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %66 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %65, i32 0, i32 0
  %67 = load i64, i64* %9, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32* %66, i64 %67)
  %69 = load i32, i32* @BFA_STATUS_OK, align 4
  %70 = load %struct.bfa_bsg_rport_reset_stats_s*, %struct.bfa_bsg_rport_reset_stats_s** %5, align 8
  %71 = getelementptr inbounds %struct.bfa_bsg_rport_reset_stats_s, %struct.bfa_bsg_rport_reset_stats_s* %70, i32 0, i32 0
  store i32 %69, i32* %71, align 4
  br label %72

72:                                               ; preds = %64, %43, %27
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_fcs_rport_s* @bfa_fcs_rport_lookup(%struct.bfa_fcs_lport_s*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local %struct.bfa_rport_s* @bfa_fcs_rport_get_halrport(%struct.bfa_fcs_rport_s*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
