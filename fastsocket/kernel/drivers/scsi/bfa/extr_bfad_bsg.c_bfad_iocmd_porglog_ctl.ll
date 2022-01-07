; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_porglog_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_porglog_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_bsg_portlogctl_s = type { i64, i32 }

@BFA_TRUE = common dso_local global i64 0, align 8
@BFA_STATUS_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_porglog_ctl(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca %struct.bfad_s*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bfa_bsg_portlogctl_s*, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.bfa_bsg_portlogctl_s*
  store %struct.bfa_bsg_portlogctl_s* %7, %struct.bfa_bsg_portlogctl_s** %5, align 8
  %8 = load %struct.bfa_bsg_portlogctl_s*, %struct.bfa_bsg_portlogctl_s** %5, align 8
  %9 = getelementptr inbounds %struct.bfa_bsg_portlogctl_s, %struct.bfa_bsg_portlogctl_s* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @BFA_TRUE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store i32 1, i32* %16, align 4
  br label %21

17:                                               ; preds = %2
  %18 = load %struct.bfad_s*, %struct.bfad_s** %3, align 8
  %19 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32 0, i32* %20, align 4
  br label %21

21:                                               ; preds = %17, %13
  %22 = load i32, i32* @BFA_STATUS_OK, align 4
  %23 = load %struct.bfa_bsg_portlogctl_s*, %struct.bfa_bsg_portlogctl_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfa_bsg_portlogctl_s, %struct.bfa_bsg_portlogctl_s* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 8
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
