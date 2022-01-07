; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_ir_config_change_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_sas_ir_config_change_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.MPT3SAS_ADAPTER = type { i32, i64 }
%struct.fw_event_work = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32*, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }

@MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG = common dso_local global i32 0, align 4
@MPT_DEBUG_EVENT_WORK_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.MPT3SAS_ADAPTER*, %struct.fw_event_work*)* @_scsih_sas_ir_config_change_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_sas_ir_config_change_event(%struct.MPT3SAS_ADAPTER* %0, %struct.fw_event_work* %1) #0 {
  %3 = alloca %struct.MPT3SAS_ADAPTER*, align 8
  %4 = alloca %struct.fw_event_work*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_10__*, align 8
  store %struct.MPT3SAS_ADAPTER* %0, %struct.MPT3SAS_ADAPTER** %3, align 8
  store %struct.fw_event_work* %1, %struct.fw_event_work** %4, align 8
  %9 = load %struct.fw_event_work*, %struct.fw_event_work** %4, align 8
  %10 = getelementptr inbounds %struct.fw_event_work, %struct.fw_event_work* %9, i32 0, i32 0
  %11 = load %struct.TYPE_10__*, %struct.TYPE_10__** %10, align 8
  store %struct.TYPE_10__* %11, %struct.TYPE_10__** %8, align 8
  %12 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @le32_to_cpu(i32 %14)
  %16 = load i32, i32* @MPI2_EVENT_IR_CHANGE_FLAGS_FOREIGN_CONFIG, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  %19 = zext i1 %18 to i64
  %20 = select i1 %18, i32 1, i32 0
  store i32 %20, i32* %7, align 4
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 1
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = bitcast i32* %24 to %struct.TYPE_9__*
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %5, align 8
  %26 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %27 = getelementptr inbounds %struct.MPT3SAS_ADAPTER, %struct.MPT3SAS_ADAPTER* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %59

30:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %31

31:                                               ; preds = %53, %30
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %58

37:                                               ; preds = %31
  %38 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %40, 134
  br i1 %41, label %42, label %52

42:                                               ; preds = %37
  %43 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @le16_to_cpu(i32 %46)
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @_scsih_ir_fastpath(%struct.MPT3SAS_ADAPTER* %43, i32 %47, i32 %50)
  br label %52

52:                                               ; preds = %42, %37
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %6, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %6, align 4
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 1
  store %struct.TYPE_9__* %57, %struct.TYPE_9__** %5, align 8
  br label %31

58:                                               ; preds = %31
  br label %111

59:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %106, %59
  %61 = load i32, i32* %6, align 4
  %62 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp slt i32 %61, %64
  br i1 %65, label %66, label %111

66:                                               ; preds = %60
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %105 [
    i32 129, label %70
    i32 135, label %70
    i32 128, label %78
    i32 131, label %78
    i32 133, label %89
    i32 132, label %93
    i32 134, label %97
    i32 130, label %101
  ]

70:                                               ; preds = %66, %66
  %71 = load i32, i32* %7, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %77, label %73

73:                                               ; preds = %70
  %74 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %75 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %76 = call i32 @_scsih_sas_volume_add(%struct.MPT3SAS_ADAPTER* %74, %struct.TYPE_9__* %75)
  br label %77

77:                                               ; preds = %73, %70
  br label %105

78:                                               ; preds = %66, %66
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %88, label %81

81:                                               ; preds = %78
  %82 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @le16_to_cpu(i32 %85)
  %87 = call i32 @_scsih_sas_volume_delete(%struct.MPT3SAS_ADAPTER* %82, i32 %86)
  br label %88

88:                                               ; preds = %81, %78
  br label %105

89:                                               ; preds = %66
  %90 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = call i32 @_scsih_sas_pd_hide(%struct.MPT3SAS_ADAPTER* %90, %struct.TYPE_9__* %91)
  br label %105

93:                                               ; preds = %66
  %94 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %96 = call i32 @_scsih_sas_pd_expose(%struct.MPT3SAS_ADAPTER* %94, %struct.TYPE_9__* %95)
  br label %105

97:                                               ; preds = %66
  %98 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %100 = call i32 @_scsih_sas_pd_add(%struct.MPT3SAS_ADAPTER* %98, %struct.TYPE_9__* %99)
  br label %105

101:                                              ; preds = %66
  %102 = load %struct.MPT3SAS_ADAPTER*, %struct.MPT3SAS_ADAPTER** %3, align 8
  %103 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %104 = call i32 @_scsih_sas_pd_delete(%struct.MPT3SAS_ADAPTER* %102, %struct.TYPE_9__* %103)
  br label %105

105:                                              ; preds = %66, %101, %97, %93, %89, %88, %77
  br label %106

106:                                              ; preds = %105
  %107 = load i32, i32* %6, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %6, align 4
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 1
  store %struct.TYPE_9__* %110, %struct.TYPE_9__** %5, align 8
  br label %60

111:                                              ; preds = %58, %60
  ret void
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @_scsih_ir_fastpath(%struct.MPT3SAS_ADAPTER*, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @_scsih_sas_volume_add(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_9__*) #1

declare dso_local i32 @_scsih_sas_volume_delete(%struct.MPT3SAS_ADAPTER*, i32) #1

declare dso_local i32 @_scsih_sas_pd_hide(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_9__*) #1

declare dso_local i32 @_scsih_sas_pd_expose(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_9__*) #1

declare dso_local i32 @_scsih_sas_pd_add(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_9__*) #1

declare dso_local i32 @_scsih_sas_pd_delete(%struct.MPT3SAS_ADAPTER*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
