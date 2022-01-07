; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptfc.c_mptfc_qcmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptfc.c_mptfc_qcmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.mptfc_rport_info = type { i32 }
%struct.fc_rport = type { i64 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@DID_IMM_RETRY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @mptfc_qcmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mptfc_qcmd(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.mptfc_rport_info*, align 8
  %7 = alloca %struct.fc_rport*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %10, i32 0, i32 1
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %11, align 8
  %13 = call i32 @scsi_target(%struct.TYPE_4__* %12)
  %14 = call %struct.fc_rport* @starget_to_rport(i32 %13)
  store %struct.fc_rport* %14, %struct.fc_rport** %7, align 8
  %15 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %16 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %15, i32 0, i32 1
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %18, align 8
  store %struct.TYPE_3__* %19, %struct.TYPE_3__** %9, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %21 = icmp ne %struct.TYPE_3__* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %34, label %27

27:                                               ; preds = %22, %2
  %28 = load i32, i32* @DID_NO_CONNECT, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %33 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %32(%struct.scsi_cmnd* %33)
  store i32 0, i32* %3, align 4
  br label %69

34:                                               ; preds = %22
  %35 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %36 = call i32 @fc_remote_port_chkready(%struct.fc_rport* %35)
  store i32 %36, i32* %8, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %34
  %41 = load i32, i32* %8, align 4
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %45 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %44(%struct.scsi_cmnd* %45)
  store i32 0, i32* %3, align 4
  br label %69

46:                                               ; preds = %34
  %47 = load %struct.fc_rport*, %struct.fc_rport** %7, align 8
  %48 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.mptfc_rport_info**
  %51 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %50, align 8
  store %struct.mptfc_rport_info* %51, %struct.mptfc_rport_info** %6, align 8
  %52 = load %struct.mptfc_rport_info*, %struct.mptfc_rport_info** %6, align 8
  %53 = icmp ne %struct.mptfc_rport_info* %52, null
  %54 = xor i1 %53, true
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %46
  %59 = load i32, i32* @DID_IMM_RETRY, align 4
  %60 = shl i32 %59, 16
  %61 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %62 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %63(%struct.scsi_cmnd* %64)
  store i32 0, i32* %3, align 4
  br label %69

65:                                               ; preds = %46
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %67 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %68 = call i32 @mptscsih_qcmd(%struct.scsi_cmnd* %66, void (%struct.scsi_cmnd*)* %67)
  store i32 %68, i32* %3, align 4
  br label %69

69:                                               ; preds = %65, %58, %40, %27
  %70 = load i32, i32* %3, align 4
  ret i32 %70
}

declare dso_local %struct.fc_rport* @starget_to_rport(i32) #1

declare dso_local i32 @scsi_target(%struct.TYPE_4__*) #1

declare dso_local i32 @fc_remote_port_chkready(%struct.fc_rport*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @mptscsih_qcmd(%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
