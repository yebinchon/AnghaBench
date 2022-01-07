; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_get_addr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_rport_get_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i32, i32 }
%struct.bfa_bsg_rport_scsi_addr_s = type { i8*, i64, i64, i32, i32, i32, i32, i32 }
%struct.bfa_fcs_lport_s = type { i32 }
%struct.bfa_fcs_itnim_s = type { %struct.bfad_itnim_s* }
%struct.bfad_itnim_s = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@BFA_STATUS_UNKNOWN_LWWN = common dso_local global i8* null, align 8
@BFA_STATUS_UNKNOWN_RWWN = common dso_local global i8* null, align 8
@BFA_STATUS_OK = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bfad_s*, i8*)* @bfad_iocmd_rport_get_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_iocmd_rport_get_addr(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_rport_scsi_addr_s*, align 8
  %6 = alloca %struct.bfa_fcs_lport_s*, align 8
  %7 = alloca %struct.bfa_fcs_itnim_s*, align 8
  %8 = alloca %struct.bfad_itnim_s*, align 8
  %9 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.bfa_bsg_rport_scsi_addr_s*
  store %struct.bfa_bsg_rport_scsi_addr_s* %11, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %12 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %13 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %12, i32 0, i32 0
  %14 = load i64, i64* %9, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %17 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %16, i32 0, i32 1
  %18 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %19 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %22 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %21, i32 0, i32 6
  %23 = load i32, i32* %22, align 4
  %24 = call %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32* %17, i32 %20, i32 %23)
  store %struct.bfa_fcs_lport_s* %24, %struct.bfa_fcs_lport_s** %6, align 8
  %25 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %26 = icmp eq %struct.bfa_fcs_lport_s* %25, null
  br i1 %26, label %27, label %37

27:                                               ; preds = %2
  %28 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %29 = call i32 @bfa_trc(%struct.bfad_s* %28, i32 0)
  %30 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %31 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %30, i32 0, i32 0
  %32 = load i64, i64* %9, align 8
  %33 = call i32 @spin_unlock_irqrestore(i32* %31, i64 %32)
  %34 = load i8*, i8** @BFA_STATUS_UNKNOWN_LWWN, align 8
  %35 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %35, i32 0, i32 0
  store i8* %34, i8** %36, align 8
  br label %103

37:                                               ; preds = %2
  %38 = load %struct.bfa_fcs_lport_s*, %struct.bfa_fcs_lport_s** %6, align 8
  %39 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %39, i32 0, i32 5
  %41 = load i32, i32* %40, align 8
  %42 = call %struct.bfa_fcs_itnim_s* @bfa_fcs_itnim_lookup(%struct.bfa_fcs_lport_s* %38, i32 %41)
  store %struct.bfa_fcs_itnim_s* %42, %struct.bfa_fcs_itnim_s** %7, align 8
  %43 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %7, align 8
  %44 = icmp eq %struct.bfa_fcs_itnim_s* %43, null
  br i1 %44, label %45, label %55

45:                                               ; preds = %37
  %46 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %47 = call i32 @bfa_trc(%struct.bfad_s* %46, i32 0)
  %48 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %49 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %48, i32 0, i32 0
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @spin_unlock_irqrestore(i32* %49, i64 %50)
  %52 = load i8*, i8** @BFA_STATUS_UNKNOWN_RWWN, align 8
  %53 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %54 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %53, i32 0, i32 0
  store i8* %52, i8** %54, align 8
  br label %103

55:                                               ; preds = %37
  %56 = load %struct.bfa_fcs_itnim_s*, %struct.bfa_fcs_itnim_s** %7, align 8
  %57 = getelementptr inbounds %struct.bfa_fcs_itnim_s, %struct.bfa_fcs_itnim_s* %56, i32 0, i32 0
  %58 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %57, align 8
  store %struct.bfad_itnim_s* %58, %struct.bfad_itnim_s** %8, align 8
  %59 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %60 = icmp ne %struct.bfad_itnim_s* %59, null
  br i1 %60, label %61, label %76

61:                                               ; preds = %55
  %62 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %63 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %62, i32 0, i32 1
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %76

66:                                               ; preds = %61
  %67 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %68 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %67, i32 0, i32 1
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %75 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %74, i32 0, i32 4
  store i32 %73, i32* %75, align 4
  br label %86

76:                                               ; preds = %61, %55
  %77 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %78 = call i32 @bfa_trc(%struct.bfad_s* %77, i32 0)
  %79 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %80 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %79, i32 0, i32 0
  %81 = load i64, i64* %9, align 8
  %82 = call i32 @spin_unlock_irqrestore(i32* %80, i64 %81)
  %83 = load i8*, i8** @BFA_STATUS_UNKNOWN_RWWN, align 8
  %84 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %85 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %84, i32 0, i32 0
  store i8* %83, i8** %85, align 8
  br label %103

86:                                               ; preds = %66
  %87 = load %struct.bfad_itnim_s*, %struct.bfad_itnim_s** %8, align 8
  %88 = getelementptr inbounds %struct.bfad_itnim_s, %struct.bfad_itnim_s* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %91 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %90, i32 0, i32 3
  store i32 %89, i32* %91, align 8
  %92 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %93 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %92, i32 0, i32 0
  %94 = load i64, i64* %9, align 8
  %95 = call i32 @spin_unlock_irqrestore(i32* %93, i64 %94)
  %96 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %97 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %96, i32 0, i32 2
  store i64 0, i64* %97, align 8
  %98 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %99 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %98, i32 0, i32 1
  store i64 0, i64* %99, align 8
  %100 = load i8*, i8** @BFA_STATUS_OK, align 8
  %101 = load %struct.bfa_bsg_rport_scsi_addr_s*, %struct.bfa_bsg_rport_scsi_addr_s** %5, align 8
  %102 = getelementptr inbounds %struct.bfa_bsg_rport_scsi_addr_s, %struct.bfa_bsg_rport_scsi_addr_s* %101, i32 0, i32 0
  store i8* %100, i8** %102, align 8
  br label %103

103:                                              ; preds = %86, %76, %45, %27
  ret i32 0
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_lport_s* @bfa_fcs_lookup_port(i32*, i32, i32) #1

declare dso_local i32 @bfa_trc(%struct.bfad_s*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local %struct.bfa_fcs_itnim_s* @bfa_fcs_itnim_lookup(%struct.bfa_fcs_lport_s*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
