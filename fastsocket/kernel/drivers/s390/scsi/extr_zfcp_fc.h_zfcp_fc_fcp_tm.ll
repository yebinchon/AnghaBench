; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_fcp_tm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.h_zfcp_fc_fcp_tm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcp_cmnd = type { i32, i32 }
%struct.scsi_device = type { i32 }
%struct.scsi_lun = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fcp_cmnd*, %struct.scsi_device*, i32)* @zfcp_fc_fcp_tm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_fcp_tm(%struct.fcp_cmnd* %0, %struct.scsi_device* %1, i32 %2) #0 {
  %4 = alloca %struct.fcp_cmnd*, align 8
  %5 = alloca %struct.scsi_device*, align 8
  %6 = alloca i32, align 4
  store %struct.fcp_cmnd* %0, %struct.fcp_cmnd** %4, align 8
  store %struct.scsi_device* %1, %struct.scsi_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.scsi_device*, %struct.scsi_device** %5, align 8
  %8 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %10, i32 0, i32 1
  %12 = bitcast i32* %11 to %struct.scsi_lun*
  %13 = call i32 @int_to_scsilun(i32 %9, %struct.scsi_lun* %12)
  %14 = load i32, i32* %6, align 4
  %15 = load %struct.fcp_cmnd*, %struct.fcp_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.fcp_cmnd, %struct.fcp_cmnd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = or i32 %17, %14
  store i32 %18, i32* %16, align 4
  ret void
}

declare dso_local i32 @int_to_scsilun(i32, %struct.scsi_lun*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
