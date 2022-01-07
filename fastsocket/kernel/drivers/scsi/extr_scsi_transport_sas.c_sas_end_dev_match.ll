; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_end_dev_match.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_sas.c_sas_end_dev_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.attribute_container = type { i32 }
%struct.device = type { %struct.TYPE_12__* }
%struct.TYPE_12__ = type { i32 }
%struct.Scsi_Host = type { %struct.TYPE_13__* }
%struct.TYPE_13__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.sas_internal = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.attribute_container }
%struct.sas_rphy = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }

@sas_host_class = common dso_local global %struct.TYPE_14__ zeroinitializer, align 4
@SAS_END_DEVICE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.attribute_container*, %struct.device*)* @sas_end_dev_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sas_end_dev_match(%struct.attribute_container* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.attribute_container*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.sas_internal*, align 8
  %8 = alloca %struct.sas_rphy*, align 8
  store %struct.attribute_container* %0, %struct.attribute_container** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %9 = load %struct.device*, %struct.device** %5, align 8
  %10 = call i32 @scsi_is_sas_rphy(%struct.device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %57

13:                                               ; preds = %2
  %14 = load %struct.device*, %struct.device** %5, align 8
  %15 = getelementptr inbounds %struct.device, %struct.device* %14, i32 0, i32 0
  %16 = load %struct.TYPE_12__*, %struct.TYPE_12__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.Scsi_Host* @dev_to_shost(i32 %18)
  store %struct.Scsi_Host* %19, %struct.Scsi_Host** %6, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.sas_rphy* @dev_to_rphy(%struct.device* %20)
  store %struct.sas_rphy* %21, %struct.sas_rphy** %8, align 8
  %22 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %23 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %22, i32 0, i32 0
  %24 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %25 = icmp ne %struct.TYPE_13__* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %13
  store i32 0, i32* %3, align 4
  br label %57

27:                                               ; preds = %13
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %29 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %28, i32 0, i32 0
  %30 = load %struct.TYPE_13__*, %struct.TYPE_13__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = icmp ne i32* %34, getelementptr inbounds (%struct.TYPE_14__, %struct.TYPE_14__* @sas_host_class, i32 0, i32 0)
  br i1 %35, label %36, label %37

36:                                               ; preds = %27
  store i32 0, i32* %3, align 4
  br label %57

37:                                               ; preds = %27
  %38 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %39 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %38, i32 0, i32 0
  %40 = load %struct.TYPE_13__*, %struct.TYPE_13__** %39, align 8
  %41 = call %struct.sas_internal* @to_sas_internal(%struct.TYPE_13__* %40)
  store %struct.sas_internal* %41, %struct.sas_internal** %7, align 8
  %42 = load %struct.sas_internal*, %struct.sas_internal** %7, align 8
  %43 = getelementptr inbounds %struct.sas_internal, %struct.sas_internal* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 0
  %45 = load %struct.attribute_container*, %struct.attribute_container** %4, align 8
  %46 = icmp eq %struct.attribute_container* %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %37
  %48 = load %struct.sas_rphy*, %struct.sas_rphy** %8, align 8
  %49 = getelementptr inbounds %struct.sas_rphy, %struct.sas_rphy* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @SAS_END_DEVICE, align 8
  %53 = icmp eq i64 %51, %52
  br label %54

54:                                               ; preds = %47, %37
  %55 = phi i1 [ false, %37 ], [ %53, %47 ]
  %56 = zext i1 %55 to i32
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %54, %36, %26, %12
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @scsi_is_sas_rphy(%struct.device*) #1

declare dso_local %struct.Scsi_Host* @dev_to_shost(i32) #1

declare dso_local %struct.sas_rphy* @dev_to_rphy(%struct.device*) #1

declare dso_local %struct.sas_internal* @to_sas_internal(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
