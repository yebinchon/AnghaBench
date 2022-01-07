; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_complete.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_libata-core.c_ata_qc_complete.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_queued_cmd = type { i32, i32, %struct.TYPE_6__, i32, %struct.ata_device*, %struct.ata_port* }
%struct.TYPE_6__ = type { i32, i32 }
%struct.ata_device = type { i64, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.ata_eh_info }
%struct.ata_eh_info = type { i32* }
%struct.ata_port = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@ATA_QCFLAG_FAILED = common dso_local global i32 0, align 4
@ATA_PFLAG_FROZEN = common dso_local global i32 0, align 4
@ATA_QCFLAG_RESULT_TF = common dso_local global i32 0, align 4
@SETFEATURES_WC_ON = common dso_local global i32 0, align 4
@SETFEATURES_WC_OFF = common dso_local global i32 0, align 4
@ATA_EH_REVALIDATE = common dso_local global i32 0, align 4
@ATA_DFLAG_SLEEPING = common dso_local global i32 0, align 4
@ATA_DFLAG_DUBIOUS_XFER = common dso_local global i32 0, align 4
@ATA_QCFLAG_EH_SCHEDULED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ata_qc_complete(%struct.ata_queued_cmd* %0) #0 {
  %2 = alloca %struct.ata_queued_cmd*, align 8
  %3 = alloca %struct.ata_port*, align 8
  %4 = alloca %struct.ata_device*, align 8
  %5 = alloca %struct.ata_eh_info*, align 8
  store %struct.ata_queued_cmd* %0, %struct.ata_queued_cmd** %2, align 8
  %6 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %6, i32 0, i32 5
  %8 = load %struct.ata_port*, %struct.ata_port** %7, align 8
  store %struct.ata_port* %8, %struct.ata_port** %3, align 8
  %9 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %10 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %9, i32 0, i32 1
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %127

15:                                               ; preds = %1
  %16 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %16, i32 0, i32 4
  %18 = load %struct.ata_device*, %struct.ata_device** %17, align 8
  store %struct.ata_device* %18, %struct.ata_device** %4, align 8
  %19 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %20 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %19, i32 0, i32 2
  %21 = load %struct.TYPE_5__*, %struct.TYPE_5__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.ata_eh_info* %22, %struct.ata_eh_info** %5, align 8
  %23 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %24 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %15
  %29 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %30 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %31 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %29
  store i32 %33, i32* %31, align 4
  br label %34

34:                                               ; preds = %28, %15
  %35 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %36 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ATA_QCFLAG_FAILED, align 4
  %39 = and i32 %37, %38
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %57

42:                                               ; preds = %34
  %43 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %44 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %43)
  %45 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %46 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ata_tag_internal(i32 %47)
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %53, label %50

50:                                               ; preds = %42
  %51 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %52 = call i32 @ata_qc_schedule_eh(%struct.ata_queued_cmd* %51)
  br label %56

53:                                               ; preds = %42
  %54 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %55 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %54)
  br label %56

56:                                               ; preds = %53, %50
  br label %153

57:                                               ; preds = %34
  %58 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %59 = getelementptr inbounds %struct.ata_port, %struct.ata_port* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @ATA_PFLAG_FROZEN, align 4
  %62 = and i32 %60, %61
  %63 = call i32 @WARN_ON_ONCE(i32 %62)
  %64 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %65 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %57
  %71 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %72 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %71)
  br label %73

73:                                               ; preds = %70, %57
  %74 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %75 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  switch i32 %77, label %113 [
    i32 130, label %78
    i32 131, label %94
    i32 129, label %94
    i32 128, label %107
  ]

78:                                               ; preds = %73
  %79 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %80 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SETFEATURES_WC_ON, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %93

85:                                               ; preds = %78
  %86 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %87 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @SETFEATURES_WC_OFF, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %92, label %93

92:                                               ; preds = %85
  br label %113

93:                                               ; preds = %85, %78
  br label %94

94:                                               ; preds = %73, %73, %93
  %95 = load i32, i32* @ATA_EH_REVALIDATE, align 4
  %96 = load %struct.ata_eh_info*, %struct.ata_eh_info** %5, align 8
  %97 = getelementptr inbounds %struct.ata_eh_info, %struct.ata_eh_info* %96, i32 0, i32 0
  %98 = load i32*, i32** %97, align 8
  %99 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %100 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds i32, i32* %98, i64 %101
  %103 = load i32, i32* %102, align 4
  %104 = or i32 %103, %95
  store i32 %104, i32* %102, align 4
  %105 = load %struct.ata_port*, %struct.ata_port** %3, align 8
  %106 = call i32 @ata_port_schedule_eh(%struct.ata_port* %105)
  br label %113

107:                                              ; preds = %73
  %108 = load i32, i32* @ATA_DFLAG_SLEEPING, align 4
  %109 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %110 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = or i32 %111, %108
  store i32 %112, i32* %110, align 8
  br label %113

113:                                              ; preds = %73, %107, %94, %92
  %114 = load %struct.ata_device*, %struct.ata_device** %4, align 8
  %115 = getelementptr inbounds %struct.ata_device, %struct.ata_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @ATA_DFLAG_DUBIOUS_XFER, align 4
  %118 = and i32 %116, %117
  %119 = call i64 @unlikely(i32 %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %113
  %122 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %123 = call i32 @ata_verify_xfer(%struct.ata_queued_cmd* %122)
  br label %124

124:                                              ; preds = %121, %113
  %125 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %126 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %125)
  br label %153

127:                                              ; preds = %1
  %128 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %129 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @ATA_QCFLAG_EH_SCHEDULED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127
  br label %153

135:                                              ; preds = %127
  %136 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %137 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 8
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %147, label %140

140:                                              ; preds = %135
  %141 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %142 = getelementptr inbounds %struct.ata_queued_cmd, %struct.ata_queued_cmd* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* @ATA_QCFLAG_RESULT_TF, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %150

147:                                              ; preds = %140, %135
  %148 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %149 = call i32 @fill_result_tf(%struct.ata_queued_cmd* %148)
  br label %150

150:                                              ; preds = %147, %140
  %151 = load %struct.ata_queued_cmd*, %struct.ata_queued_cmd** %2, align 8
  %152 = call i32 @__ata_qc_complete(%struct.ata_queued_cmd* %151)
  br label %153

153:                                              ; preds = %56, %134, %150, %124
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @fill_result_tf(%struct.ata_queued_cmd*) #1

declare dso_local i32 @ata_tag_internal(i32) #1

declare dso_local i32 @ata_qc_schedule_eh(%struct.ata_queued_cmd*) #1

declare dso_local i32 @__ata_qc_complete(%struct.ata_queued_cmd*) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @ata_port_schedule_eh(%struct.ata_port*) #1

declare dso_local i32 @ata_verify_xfer(%struct.ata_queued_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
