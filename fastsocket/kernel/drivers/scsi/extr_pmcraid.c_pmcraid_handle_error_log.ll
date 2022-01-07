; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_handle_error_log.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_handle_error_log.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_instance = type { i32, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64, i32, i32, i32, i32 }
%struct.pmcraid_hcam_ldn = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [56 x i8] c"LDN(%x): %x type: %x lost: %x flags: %x overlay id: %x\0A\00", align 1
@NOTIFICATION_TYPE_ERROR_LOG = common dso_local global i64 0, align 8
@HOSTRCB_NOTIFICATIONS_LOST = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"Error notifications lost\0A\00", align 1
@PMCRAID_IOASC_UA_BUS_WAS_RESET = common dso_local global i64 0, align 8
@PMCRAID_IOASC_UA_BUS_WAS_RESET_BY_OTHER = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [36 x i8] c"UnitAttention due to IOA Bus Reset\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_instance*)* @pmcraid_handle_error_log to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_handle_error_log(%struct.pmcraid_instance* %0) #0 {
  %2 = alloca %struct.pmcraid_instance*, align 8
  %3 = alloca %struct.pmcraid_hcam_ldn*, align 8
  %4 = alloca i64, align 8
  store %struct.pmcraid_instance* %0, %struct.pmcraid_instance** %2, align 8
  %5 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %6 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = bitcast %struct.TYPE_5__* %8 to %struct.pmcraid_hcam_ldn*
  store %struct.pmcraid_hcam_ldn* %9, %struct.pmcraid_hcam_ldn** %3, align 8
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %11 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %23 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %29 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %35 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %41 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %40, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @pmcraid_info(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i32 %15, i32 %21, i64 %27, i64 %33, i32 %39, i32 %45)
  %47 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %48 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @NOTIFICATION_TYPE_ERROR_LOG, align 8
  %54 = icmp ne i64 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %1
  br label %100

56:                                               ; preds = %1
  %57 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %58 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_5__*, %struct.TYPE_5__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HOSTRCB_NOTIFICATIONS_LOST, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %71

65:                                               ; preds = %56
  %66 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %67 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %66, i32 0, i32 1
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = call i32 @dev_info(i32* %69, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %71

71:                                               ; preds = %65, %56
  %72 = load %struct.pmcraid_hcam_ldn*, %struct.pmcraid_hcam_ldn** %3, align 8
  %73 = getelementptr inbounds %struct.pmcraid_hcam_ldn, %struct.pmcraid_hcam_ldn* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i64 @le32_to_cpu(i32 %75)
  store i64 %76, i64* %4, align 8
  %77 = load i64, i64* %4, align 8
  %78 = load i64, i64* @PMCRAID_IOASC_UA_BUS_WAS_RESET, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %84, label %80

80:                                               ; preds = %71
  %81 = load i64, i64* %4, align 8
  %82 = load i64, i64* @PMCRAID_IOASC_UA_BUS_WAS_RESET_BY_OTHER, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %99

84:                                               ; preds = %80, %71
  %85 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %86 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %85, i32 0, i32 1
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = call i32 @dev_info(i32* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  %90 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %2, align 8
  %91 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.pmcraid_hcam_ldn*, %struct.pmcraid_hcam_ldn** %3, align 8
  %94 = getelementptr inbounds %struct.pmcraid_hcam_ldn, %struct.pmcraid_hcam_ldn* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @RES_BUS(i32 %96)
  %98 = call i32 @scsi_report_bus_reset(i32 %92, i32 %97)
  br label %99

99:                                               ; preds = %84, %80
  br label %100

100:                                              ; preds = %99, %55
  ret void
}

declare dso_local i32 @pmcraid_info(i8*, i32, i32, i64, i64, i32, i32) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @scsi_report_bus_reset(i32, i32) #1

declare dso_local i32 @RES_BUS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
