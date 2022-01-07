; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_send_sas_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/fusion/extr_mptsas.c_mptsas_send_sas_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_event_work = type { i64, i32* }
%struct.mptsas_hotplug_event = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32 }

@MPI_SAS_DEVICE_INFO_SSP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_STP_TARGET = common dso_local global i32 0, align 4
@MPI_SAS_DEVICE_INFO_SATA_DEVICE = common dso_local global i32 0, align 4
@MPI_SAS_OP_CLEAR_NOT_PRESENT = common dso_local global i32 0, align 4
@MPTSAS_ADD_DEVICE = common dso_local global i32 0, align 4
@MPTSAS_DEL_DEVICE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fw_event_work*)* @mptsas_send_sas_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mptsas_send_sas_event(%struct.fw_event_work* %0) #0 {
  %2 = alloca %struct.fw_event_work*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca %struct.mptsas_hotplug_event, align 4
  %5 = alloca %struct.TYPE_2__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.fw_event_work* %0, %struct.fw_event_work** %2, align 8
  %8 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %9 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %8, i32 0, i32 1
  %10 = load i32*, i32** %9, align 8
  store i32* %10, i32** %3, align 8
  %11 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %12 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %14, %struct.TYPE_2__** %5, align 8
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 6
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @le32_to_cpu(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @MPI_SAS_DEVICE_INFO_SSP_TARGET, align 4
  %21 = load i32, i32* @MPI_SAS_DEVICE_INFO_STP_TARGET, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @MPI_SAS_DEVICE_INFO_SATA_DEVICE, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %19, %24
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %31

27:                                               ; preds = %1
  %28 = load i32*, i32** %3, align 8
  %29 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %30 = call i32 @mptsas_free_fw_event(i32* %28, %struct.fw_event_work* %29)
  br label %101

31:                                               ; preds = %1
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp eq i32 %34, 129
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i32*, i32** %3, align 8
  %38 = load i32, i32* @MPI_SAS_OP_CLEAR_NOT_PRESENT, align 4
  %39 = call i32 @mptbase_sas_persist_operation(i32* %37, i32 %38)
  %40 = load i32*, i32** %3, align 8
  %41 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %42 = call i32 @mptsas_free_fw_event(i32* %40, %struct.fw_event_work* %41)
  br label %101

43:                                               ; preds = %31
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  switch i32 %46, label %97 [
    i32 130, label %47
    i32 132, label %47
    i32 129, label %89
    i32 128, label %96
    i32 131, label %96
  ]

47:                                               ; preds = %43, %43
  %48 = call i32 @memset(%struct.mptsas_hotplug_event* %4, i32 0, i32 28)
  %49 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 5
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @le16_to_cpu(i32 %51)
  %53 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 6
  store i32 %52, i32* %53, align 4
  %54 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 5
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 4
  store i32 %60, i32* %61, align 4
  %62 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 3
  store i32 %64, i32* %65, align 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = call i32 @memcpy(i32* %7, i32* %67, i32 4)
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @le64_to_cpu(i32 %69)
  %71 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 2
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* %6, align 4
  %73 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 0
  store i32 %72, i32* %73, align 4
  %74 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = and i32 %76, 132
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %47
  %80 = load i32, i32* @MPTSAS_ADD_DEVICE, align 4
  %81 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 1
  store i32 %80, i32* %81, align 4
  br label %85

82:                                               ; preds = %47
  %83 = load i32, i32* @MPTSAS_DEL_DEVICE, align 4
  %84 = getelementptr inbounds %struct.mptsas_hotplug_event, %struct.mptsas_hotplug_event* %4, i32 0, i32 1
  store i32 %83, i32* %84, align 4
  br label %85

85:                                               ; preds = %82, %79
  %86 = load i32*, i32** %3, align 8
  %87 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %88 = call i32 @mptsas_hotplug_work(i32* %86, %struct.fw_event_work* %87, %struct.mptsas_hotplug_event* %4)
  br label %101

89:                                               ; preds = %43
  %90 = load i32*, i32** %3, align 8
  %91 = load i32, i32* @MPI_SAS_OP_CLEAR_NOT_PRESENT, align 4
  %92 = call i32 @mptbase_sas_persist_operation(i32* %90, i32 %91)
  %93 = load i32*, i32** %3, align 8
  %94 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %95 = call i32 @mptsas_free_fw_event(i32* %93, %struct.fw_event_work* %94)
  br label %101

96:                                               ; preds = %43, %43
  br label %97

97:                                               ; preds = %43, %96
  %98 = load i32*, i32** %3, align 8
  %99 = load %struct.fw_event_work*, %struct.fw_event_work** %2, align 8
  %100 = call i32 @mptsas_free_fw_event(i32* %98, %struct.fw_event_work* %99)
  br label %101

101:                                              ; preds = %27, %36, %97, %89, %85
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @mptsas_free_fw_event(i32*, %struct.fw_event_work*) #1

declare dso_local i32 @mptbase_sas_persist_operation(i32*, i32) #1

declare dso_local i32 @memset(%struct.mptsas_hotplug_event*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @mptsas_hotplug_work(i32*, %struct.fw_event_work*, %struct.mptsas_hotplug_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
