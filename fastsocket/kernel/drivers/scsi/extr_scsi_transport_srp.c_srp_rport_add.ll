; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_add.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_srp.c_srp_rport_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srp_rport = type { i64, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.Scsi_Host = type { i32, i32, %struct.device }
%struct.device = type { i32 }
%struct.srp_rport_identifiers = type { i64, i32 }
%struct.TYPE_12__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@srp_rport_release = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"port-%d:%d\00", align 1
@MODE_TARGET = common dso_local global i32 0, align 4
@SRP_RPORT_ROLE_INITIATOR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.srp_rport* @srp_rport_add(%struct.Scsi_Host* %0, %struct.srp_rport_identifiers* %1) #0 {
  %3 = alloca %struct.srp_rport*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca %struct.srp_rport_identifiers*, align 8
  %6 = alloca %struct.srp_rport*, align 8
  %7 = alloca %struct.device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %4, align 8
  store %struct.srp_rport_identifiers* %1, %struct.srp_rport_identifiers** %5, align 8
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %11 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %10, i32 0, i32 2
  store %struct.device* %11, %struct.device** %7, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call %struct.srp_rport* @kzalloc(i32 24, i32 %12)
  store %struct.srp_rport* %13, %struct.srp_rport** %6, align 8
  %14 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %15 = icmp ne %struct.srp_rport* %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  %19 = call %struct.srp_rport* @ERR_PTR(i32 %18)
  store %struct.srp_rport* %19, %struct.srp_rport** %3, align 8
  br label %117

20:                                               ; preds = %2
  %21 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %22 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %21, i32 0, i32 1
  %23 = call i32 @device_initialize(%struct.TYPE_11__* %22)
  %24 = load %struct.device*, %struct.device** %7, align 8
  %25 = call i32 @get_device(%struct.device* %24)
  %26 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %27 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 1
  store i32 %25, i32* %28, align 4
  %29 = load i32, i32* @srp_rport_release, align 4
  %30 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %31 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  %33 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %34 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.srp_rport_identifiers*, %struct.srp_rport_identifiers** %5, align 8
  %37 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @memcpy(i32 %35, i32 %38, i32 4)
  %40 = load %struct.srp_rport_identifiers*, %struct.srp_rport_identifiers** %5, align 8
  %41 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %44 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %43, i32 0, i32 0
  store i64 %42, i64* %44, align 8
  %45 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %46 = call %struct.TYPE_12__* @to_srp_host_attrs(%struct.Scsi_Host* %45)
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %46, i32 0, i32 0
  %48 = call i32 @atomic_inc_return(i32* %47)
  store i32 %48, i32* %8, align 4
  %49 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %50 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %49, i32 0, i32 1
  %51 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %52 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @dev_set_name(%struct.TYPE_11__* %50, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %53, i32 %54)
  %56 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %57 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %56, i32 0, i32 1
  %58 = call i32 @transport_setup_device(%struct.TYPE_11__* %57)
  %59 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %60 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %59, i32 0, i32 1
  %61 = call i32 @device_add(%struct.TYPE_11__* %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %20
  %65 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %66 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %65, i32 0, i32 1
  %67 = call i32 @transport_destroy_device(%struct.TYPE_11__* %66)
  %68 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %69 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %68, i32 0, i32 1
  %70 = call i32 @put_device(%struct.TYPE_11__* %69)
  %71 = load i32, i32* %9, align 4
  %72 = call %struct.srp_rport* @ERR_PTR(i32 %71)
  store %struct.srp_rport* %72, %struct.srp_rport** %3, align 8
  br label %117

73:                                               ; preds = %20
  %74 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %75 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @MODE_TARGET, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %109

80:                                               ; preds = %73
  %81 = load %struct.srp_rport_identifiers*, %struct.srp_rport_identifiers** %5, align 8
  %82 = getelementptr inbounds %struct.srp_rport_identifiers, %struct.srp_rport_identifiers* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SRP_RPORT_ROLE_INITIATOR, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %109

86:                                               ; preds = %80
  %87 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %88 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %89 = ptrtoint %struct.srp_rport* %88 to i64
  %90 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %91 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = call i32 @srp_tgt_it_nexus_create(%struct.Scsi_Host* %87, i64 %89, i32 %92)
  store i32 %93, i32* %9, align 4
  %94 = load i32, i32* %9, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %108

96:                                               ; preds = %86
  %97 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %98 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %97, i32 0, i32 1
  %99 = call i32 @device_del(%struct.TYPE_11__* %98)
  %100 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %101 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %100, i32 0, i32 1
  %102 = call i32 @transport_destroy_device(%struct.TYPE_11__* %101)
  %103 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %104 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %103, i32 0, i32 1
  %105 = call i32 @put_device(%struct.TYPE_11__* %104)
  %106 = load i32, i32* %9, align 4
  %107 = call %struct.srp_rport* @ERR_PTR(i32 %106)
  store %struct.srp_rport* %107, %struct.srp_rport** %3, align 8
  br label %117

108:                                              ; preds = %86
  br label %109

109:                                              ; preds = %108, %80, %73
  %110 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %111 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %110, i32 0, i32 1
  %112 = call i32 @transport_add_device(%struct.TYPE_11__* %111)
  %113 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  %114 = getelementptr inbounds %struct.srp_rport, %struct.srp_rport* %113, i32 0, i32 1
  %115 = call i32 @transport_configure_device(%struct.TYPE_11__* %114)
  %116 = load %struct.srp_rport*, %struct.srp_rport** %6, align 8
  store %struct.srp_rport* %116, %struct.srp_rport** %3, align 8
  br label %117

117:                                              ; preds = %109, %96, %64, %16
  %118 = load %struct.srp_rport*, %struct.srp_rport** %3, align 8
  ret %struct.srp_rport* %118
}

declare dso_local %struct.srp_rport* @kzalloc(i32, i32) #1

declare dso_local %struct.srp_rport* @ERR_PTR(i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_11__*) #1

declare dso_local i32 @get_device(%struct.device*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @atomic_inc_return(i32*) #1

declare dso_local %struct.TYPE_12__* @to_srp_host_attrs(%struct.Scsi_Host*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_11__*, i8*, i32, i32) #1

declare dso_local i32 @transport_setup_device(%struct.TYPE_11__*) #1

declare dso_local i32 @device_add(%struct.TYPE_11__*) #1

declare dso_local i32 @transport_destroy_device(%struct.TYPE_11__*) #1

declare dso_local i32 @put_device(%struct.TYPE_11__*) #1

declare dso_local i32 @srp_tgt_it_nexus_create(%struct.Scsi_Host*, i64, i32) #1

declare dso_local i32 @device_del(%struct.TYPE_11__*) #1

declare dso_local i32 @transport_add_device(%struct.TYPE_11__*) #1

declare dso_local i32 @transport_configure_device(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
