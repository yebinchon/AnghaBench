; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_vport_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_vport_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.fc_vport = type { i32 }
%struct.Scsi_Host = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.fc_internal = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.attribute_container }

@fc_host_class = common dso_local global %struct.TYPE_10__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @fc_vport_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_vport_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.fc_vport*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.fc_internal*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @scsi_is_fc_vport(%struct.device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %43

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = call %struct.fc_vport* @dev_to_vport(%struct.device* %14)
  store %struct.fc_vport* %15, %struct.fc_vport** %6, align 8
  %16 = load %struct.fc_vport*, %struct.fc_vport** %6, align 8
  %17 = call %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport* %16)
  store %struct.Scsi_Host* %17, %struct.Scsi_Host** %7, align 8
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = icmp ne %struct.TYPE_9__* %20, null
  br i1 %21, label %22, label %31

22:                                               ; preds = %13
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = icmp ne i32* %29, getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @fc_host_class, i32 0, i32 0)
  br i1 %30, label %31, label %32

31:                                               ; preds = %22, %13
  store i32 0, i32* %3, align 4
  br label %43

32:                                               ; preds = %22
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = call %struct.fc_internal* @to_fc_internal(%struct.TYPE_9__* %35)
  store %struct.fc_internal* %36, %struct.fc_internal** %8, align 8
  %37 = load %struct.fc_internal*, %struct.fc_internal** %8, align 8
  %38 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %41 = icmp eq %struct.attribute_container* %39, %40
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %32, %31, %12
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local i32 @scsi_is_fc_vport(%struct.device*) #1

declare dso_local %struct.fc_vport* @dev_to_vport(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @vport_to_shost(%struct.fc_vport*) #1

declare dso_local %struct.fc_internal* @to_fc_internal(%struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
