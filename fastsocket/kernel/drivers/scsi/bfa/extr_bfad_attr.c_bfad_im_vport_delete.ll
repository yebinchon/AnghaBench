; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_delete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/bfa/extr_bfad_attr.c_bfad_im_vport_delete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_vport = type { i64 }
%struct.bfad_vport_s = type { %struct.completion*, %struct.TYPE_4__, i32, i32 }
%struct.completion = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.bfad_im_port_s = type { i32, %struct.bfad_port_s*, %struct.bfad_s* }
%struct.bfad_port_s = type { i32 }
%struct.bfad_s = type { i32, i32 }
%struct.bfa_fcs_vport_s = type { i32 }

@BFAD_PORT_DELETE = common dso_local global i32 0, align 4
@VPCERR_BAD_WWN = common dso_local global i32 0, align 4
@BFA_STATUS_PBC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fc_vport*)* @bfad_im_vport_delete to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bfad_im_vport_delete(%struct.fc_vport* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.fc_vport*, align 8
  %4 = alloca %struct.bfad_vport_s*, align 8
  %5 = alloca %struct.bfad_im_port_s*, align 8
  %6 = alloca %struct.bfad_s*, align 8
  %7 = alloca %struct.bfad_port_s*, align 8
  %8 = alloca %struct.bfa_fcs_vport_s*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.completion, align 4
  store %struct.fc_vport* %0, %struct.fc_vport** %3, align 8
  %14 = load %struct.fc_vport*, %struct.fc_vport** %3, align 8
  %15 = getelementptr inbounds %struct.fc_vport, %struct.fc_vport* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to %struct.bfad_vport_s*
  store %struct.bfad_vport_s* %17, %struct.bfad_vport_s** %4, align 8
  %18 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %19 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = bitcast %struct.TYPE_3__* %21 to %struct.bfad_im_port_s*
  store %struct.bfad_im_port_s* %22, %struct.bfad_im_port_s** %5, align 8
  %23 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %24 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %23, i32 0, i32 2
  %25 = load %struct.bfad_s*, %struct.bfad_s** %24, align 8
  store %struct.bfad_s* %25, %struct.bfad_s** %6, align 8
  %26 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %27 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %41

32:                                               ; preds = %1
  %33 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %34 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %35 = call i32 @bfad_scsi_host_free(%struct.bfad_s* %33, %struct.bfad_im_port_s* %34)
  %36 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %37 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %36, i32 0, i32 3
  %38 = call i32 @list_del(i32* %37)
  %39 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %40 = call i32 @kfree(%struct.bfad_vport_s* %39)
  store i32 0, i32* %2, align 4
  br label %117

41:                                               ; preds = %1
  %42 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %43 = getelementptr inbounds %struct.bfad_im_port_s, %struct.bfad_im_port_s* %42, i32 0, i32 1
  %44 = load %struct.bfad_port_s*, %struct.bfad_port_s** %43, align 8
  store %struct.bfad_port_s* %44, %struct.bfad_port_s** %7, align 8
  %45 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %46 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load %struct.Scsi_Host*, %struct.Scsi_Host** %49, align 8
  store %struct.Scsi_Host* %50, %struct.Scsi_Host** %9, align 8
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %52 = call i32 @fc_host_port_name(%struct.Scsi_Host* %51)
  %53 = call i32 @u64_to_wwn(i32 %52, i32* %10)
  %54 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %55 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %54, i32 0, i32 0
  %56 = load i64, i64* %12, align 8
  %57 = call i32 @spin_lock_irqsave(i32* %55, i64 %56)
  %58 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %59 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %58, i32 0, i32 1
  %60 = load i32, i32* %10, align 4
  %61 = call %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32* %59, i32 0, i32 %60)
  store %struct.bfa_fcs_vport_s* %61, %struct.bfa_fcs_vport_s** %8, align 8
  %62 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %63 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %62, i32 0, i32 0
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  %66 = load %struct.bfa_fcs_vport_s*, %struct.bfa_fcs_vport_s** %8, align 8
  %67 = icmp eq %struct.bfa_fcs_vport_s* %66, null
  br i1 %67, label %68, label %70

68:                                               ; preds = %41
  %69 = load i32, i32* @VPCERR_BAD_WWN, align 4
  store i32 %69, i32* %2, align 4
  br label %117

70:                                               ; preds = %41
  %71 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %72 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %73 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = or i32 %75, %71
  store i32 %76, i32* %74, align 8
  %77 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %78 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %77, i32 0, i32 0
  store %struct.completion* %13, %struct.completion** %78, align 8
  %79 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %80 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %79, i32 0, i32 0
  %81 = load %struct.completion*, %struct.completion** %80, align 8
  %82 = call i32 @init_completion(%struct.completion* %81)
  %83 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %84 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %83, i32 0, i32 0
  %85 = load i64, i64* %12, align 8
  %86 = call i32 @spin_lock_irqsave(i32* %84, i64 %85)
  %87 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %88 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %87, i32 0, i32 2
  %89 = call i32 @bfa_fcs_vport_delete(i32* %88)
  store i32 %89, i32* %11, align 4
  %90 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %91 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %90, i32 0, i32 0
  %92 = load i64, i64* %12, align 8
  %93 = call i32 @spin_unlock_irqrestore(i32* %91, i64 %92)
  %94 = load i32, i32* %11, align 4
  %95 = load i32, i32* @BFA_STATUS_PBC, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %107

97:                                               ; preds = %70
  %98 = load i32, i32* @BFAD_PORT_DELETE, align 4
  %99 = xor i32 %98, -1
  %100 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %101 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, %99
  store i32 %104, i32* %102, align 8
  %105 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %106 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %105, i32 0, i32 0
  store %struct.completion* null, %struct.completion** %106, align 8
  store i32 -1, i32* %2, align 4
  br label %117

107:                                              ; preds = %70
  %108 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %109 = getelementptr inbounds %struct.bfad_vport_s, %struct.bfad_vport_s* %108, i32 0, i32 0
  %110 = load %struct.completion*, %struct.completion** %109, align 8
  %111 = call i32 @wait_for_completion(%struct.completion* %110)
  %112 = load %struct.bfad_s*, %struct.bfad_s** %6, align 8
  %113 = load %struct.bfad_im_port_s*, %struct.bfad_im_port_s** %5, align 8
  %114 = call i32 @bfad_scsi_host_free(%struct.bfad_s* %112, %struct.bfad_im_port_s* %113)
  %115 = load %struct.bfad_vport_s*, %struct.bfad_vport_s** %4, align 8
  %116 = call i32 @kfree(%struct.bfad_vport_s* %115)
  store i32 0, i32* %2, align 4
  br label %117

117:                                              ; preds = %107, %97, %68, %32
  %118 = load i32, i32* %2, align 4
  ret i32 %118
}

declare dso_local i32 @bfad_scsi_host_free(%struct.bfad_s*, %struct.bfad_im_port_s*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.bfad_vport_s*) #1

declare dso_local i32 @u64_to_wwn(i32, i32*) #1

declare dso_local i32 @fc_host_port_name(%struct.Scsi_Host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.bfa_fcs_vport_s* @bfa_fcs_vport_lookup(i32*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_completion(%struct.completion*) #1

declare dso_local i32 @bfa_fcs_vport_delete(i32*) #1

declare dso_local i32 @wait_for_completion(%struct.completion*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
