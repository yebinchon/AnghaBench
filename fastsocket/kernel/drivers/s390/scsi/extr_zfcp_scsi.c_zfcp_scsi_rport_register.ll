; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_rport_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_scsi.c_zfcp_scsi_rport_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_port = type { i32, %struct.fc_rport*, i32, i32, i64, %struct.TYPE_4__*, i32, i32 }
%struct.fc_rport = type { i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.fc_rport_identifiers = type { i32, i32, i64, i32 }

@FC_RPORT_ROLE_FCP_TARGET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"Registering port 0x%016Lx failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_port*)* @zfcp_scsi_rport_register to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_scsi_rport_register(%struct.zfcp_port* %0) #0 {
  %2 = alloca %struct.zfcp_port*, align 8
  %3 = alloca %struct.fc_rport_identifiers, align 8
  %4 = alloca %struct.fc_rport*, align 8
  store %struct.zfcp_port* %0, %struct.zfcp_port** %2, align 8
  %5 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %6 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %5, i32 0, i32 1
  %7 = load %struct.fc_rport*, %struct.fc_rport** %6, align 8
  %8 = icmp ne %struct.fc_rport* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %65

10:                                               ; preds = %1
  %11 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %12 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %11, i32 0, i32 7
  %13 = load i32, i32* %12, align 4
  %14 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 3
  store i32 %13, i32* %14, align 8
  %15 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %16 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %15, i32 0, i32 4
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 2
  store i64 %17, i64* %18, align 8
  %19 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %20 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 1
  store i32 %21, i32* %22, align 4
  %23 = load i32, i32* @FC_RPORT_ROLE_FCP_TARGET, align 4
  %24 = getelementptr inbounds %struct.fc_rport_identifiers, %struct.fc_rport_identifiers* %3, i32 0, i32 0
  store i32 %23, i32* %24, align 8
  %25 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %26 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %25, i32 0, i32 5
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call %struct.fc_rport* @fc_remote_port_add(i32 %29, i32 0, %struct.fc_rport_identifiers* %3)
  store %struct.fc_rport* %30, %struct.fc_rport** %4, align 8
  %31 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %32 = icmp ne %struct.fc_rport* %31, null
  br i1 %32, label %44, label %33

33:                                               ; preds = %10
  %34 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %35 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %34, i32 0, i32 5
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %41 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %40, i32 0, i32 4
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i64 %42)
  br label %65

44:                                               ; preds = %10
  %45 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %46 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %49 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %51 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %54 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  %55 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %56 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %57 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %56, i32 0, i32 1
  store %struct.fc_rport* %55, %struct.fc_rport** %57, align 8
  %58 = load %struct.fc_rport*, %struct.fc_rport** %4, align 8
  %59 = getelementptr inbounds %struct.fc_rport, %struct.fc_rport* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %62 = getelementptr inbounds %struct.zfcp_port, %struct.zfcp_port* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.zfcp_port*, %struct.zfcp_port** %2, align 8
  %64 = call i32 @zfcp_scsi_queue_unit_register(%struct.zfcp_port* %63)
  br label %65

65:                                               ; preds = %44, %33, %9
  ret void
}

declare dso_local %struct.fc_rport* @fc_remote_port_add(i32, i32, %struct.fc_rport_identifiers*) #1

declare dso_local i32 @dev_err(i32*, i8*, i64) #1

declare dso_local i32 @zfcp_scsi_queue_unit_register(%struct.zfcp_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
