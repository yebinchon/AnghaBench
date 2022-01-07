; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_set_symbolic_name.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_set_symbolic_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i8*, i64 }
%struct.bfad_vport_s = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.bfad_im_port_s = type { %struct.bfad_s* }
%struct.bfad_s = type { i32, i32 }
%struct.bfa_fcs_vport_s = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bfad_im_vport_set_symbolic_name(%struct.fc_vport* %0) #0 {
  %2 = alloca %struct.fc_vport*, align 8
  %3 = alloca %struct.bfad_vport_s*, align 8
  %4 = alloca %struct.bfad_im_port_s*, align 8
  %5 = alloca %struct.bfad_s*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.bfa_fcs_vport_s*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.fc_vport* %0, %struct.fc_vport** %2, align 8
  %11 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %12 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.bfad_vport_s*
  store %struct.bfad_vport_s* %14, %struct.bfad_vport_s** %3, align 8
  %15 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %3, align 8
  %16 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** %17, align 8
  %19 = bitcast %struct.TYPE_6__* %18 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %19, %struct.bfad_im_port_s** %4, align 8
  %20 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %20, i32 0, i32 0
  %22 = load %struct.bfad_s*, %struct.bfad_s** %21, align 8
  store %struct.bfad_s* %22, %struct.bfad_s** %5, align 8
  %23 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %3, align 8
  %24 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %27, align 8
  store %struct.Scsi_Host* %28, %struct.Scsi_Host** %6, align 8
  %29 = load %struct.fc_vport*, %struct.fc_vport** %2, align 8
  %30 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %29, i32 0, i32 0
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** %7, align 8
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %33 = call i32 @fc_host_port_name(%struct.Scsi_Host* %32)
  %34 = call i32 @u64_to_wwn(i32 %33, i32* %9)
  %35 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %36 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %35, i32 0, i32 0
  %37 = load i64, i64* %10, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %40 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %39, i32 0, i32 1
  %41 = load i32, i32* %9, align 4
  %42 = call %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32* %40, i32 0, i32 %41)
  store %struct.bfa_fcs_vport_s* %42, %struct.bfa_fcs_vport_s** %8, align 8
  %43 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %44 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %43, i32 0, i32 0
  %45 = load i64, i64* %10, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %48 = icmp eq %struct.bfa_fcs_vport_s* %47, null
  br i1 %48, label %49, label %50

49:                                               ; preds = %1
  br label %76

50:                                               ; preds = %1
  %51 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %52 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %51, i32 0, i32 0
  %53 = load i64, i64* %10, align 8
  %54 = call i32 @spin_lock_irqsave(i32* %52, i64 %53)
  %55 = load i8*, i8** %7, align 8
  %56 = call i64 @strlen(i8* %55)
  %57 = icmp sgt i64 %56, 0
  br i1 %57, label %58, label %71

58:                                               ; preds = %50
  %59 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %60 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load i8*, i8** %7, align 8
  %66 = call i32 @strcpy(i32 %64, i8* %65)
  %67 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %68 = getelementptr inbounds %struct.bfa_fcs_vport_s, %struct.bfa_fcs_vport_s* %67, i32 0, i32 0
  %69 = call i32 @BFA_FCS_GET_NS_FROM_PORT(%struct.TYPE_10__* %68)
  %70 = call i32 @bfa_fcs_lport_ns_util_send_rspn_id(i32 %69, i32* null)
  br label %71

71:                                               ; preds = %58, %50
  %72 = load %struct.bfad_s*, %struct.bfad_s** %5, align 8
  %73 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %72, i32 0, i32 0
  %74 = load i64, i64* %10, align 8
  %75 = call i32 @spin_unlock_irqrestore(i32* %73, i64 %74)
  br label %76

76:                                               ; preds = %71, %49
  ret void
}

declare dso_local i32 @u64_to_wwn(i32, i32*) #1

declare dso_local i32 @fc_host_port_name(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @bfa_fcs_lport_ns_util_send_rspn_id(i32, i32*) #1

declare dso_local i32 @BFA_FCS_GET_NS_FROM_PORT(%struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
