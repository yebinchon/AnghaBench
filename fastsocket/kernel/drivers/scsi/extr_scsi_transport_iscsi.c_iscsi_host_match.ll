; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_host_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_iscsi.c_iscsi_host_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.attribute_container = type { i32 }
%struct.device = type { i32 }
%struct.Scsi_Host = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.iscsi_internal = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.attribute_container }

@iscsi_host_class = common dso_local global %struct.TYPE_12__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @iscsi_host_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsi_host_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.iscsi_internal*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %8 = load %struct.device*, %struct.device** %5, align 8
  %9 = call i32 @scsi_is_host_device(%struct.device* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %41

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %5, align 8
  %14 = call %struct.Scsi_Host* @dev_to_shost(%struct.device* %13)
  store %struct.Scsi_Host* %14, %struct.Scsi_Host** %6, align 8
  %15 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %16 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %15, i32 0, i32 0
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = icmp ne %struct.TYPE_11__* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %12
  %20 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %21 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %20, i32 0, i32 0
  %22 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = icmp ne i32* %26, getelementptr inbounds (%struct.TYPE_12__, %struct.TYPE_12__* @iscsi_host_class, i32 0, i32 0)
  br i1 %27, label %28, label %29

28:                                               ; preds = %19, %12
  store i32 0, i32* %3, align 4
  br label %41

29:                                               ; preds = %19
  %30 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %31 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %30, i32 0, i32 0
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = call %struct.iscsi_internal* @to_iscsi_internal(%struct.TYPE_11__* %32)
  store %struct.iscsi_internal* %33, %struct.iscsi_internal** %7, align 8
  %34 = load %struct.iscsi_internal*, %struct.iscsi_internal** %7, align 8
  %35 = getelementptr inbounds %struct.iscsi_internal, %struct.iscsi_internal* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %39 = icmp eq %struct.attribute_container* %37, %38
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %29, %28, %11
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @scsi_is_host_device(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(%struct.device*) #1

declare dso_local %struct.iscsi_internal* @to_iscsi_internal(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
