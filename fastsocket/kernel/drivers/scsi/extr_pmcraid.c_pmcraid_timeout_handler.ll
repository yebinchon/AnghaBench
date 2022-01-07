; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_timeout_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_timeout_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { i32, %struct.TYPE_8__*, %struct.pmcraid_instance* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.pmcraid_instance = type { i32, %struct.TYPE_10__*, i32, %struct.TYPE_9__, %struct.pmcraid_cmd*, i64, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [53 x i8] c"Adapter being reset due to cmd(CDB[0] = %x) timeout\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"no free cmnd block for timeout handler\0A\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"reset is already in progress\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"cmd is pending but reset in progress\0A\00", align 1
@pmcraid_ioa_reset = common dso_local global i32 0, align 4
@PMC_DEVICE_EVENT_RESET_START = common dso_local global i64 0, align 8
@PMC_DEVICE_EVENT_SHUTDOWN_START = common dso_local global i64 0, align 8
@IOA_STATE_IN_RESET_ALERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_timeout_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_timeout_handler(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %5 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %6 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %5, i32 0, i32 2
  %7 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %6, align 8
  store %struct.pmcraid_instance* %7, %struct.pmcraid_instance** %3, align 8
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %9 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %8, i32 0, i32 6
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 0
  %12 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %13 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @dev_info(i32* %11, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %22 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %21, i32 0, i32 1
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i64, i64* %4, align 8
  %27 = call i32 @spin_lock_irqsave(i32 %25, i64 %26)
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %29 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %1
  %33 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %34 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %33, i32 0, i32 5
  store i64 0, i64* %34, align 8
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %36 = call %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance* %35)
  store %struct.pmcraid_cmd* %36, %struct.pmcraid_cmd** %2, align 8
  %37 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %38 = icmp eq %struct.pmcraid_cmd* %37, null
  br i1 %38, label %39, label %48

39:                                               ; preds = %32
  %40 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %41 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i64, i64* %4, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32 %44, i64 %45)
  %47 = call i32 @pmcraid_err(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0))
  br label %109

48:                                               ; preds = %32
  %49 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %50 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %51 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %50, i32 0, i32 4
  store %struct.pmcraid_cmd* %49, %struct.pmcraid_cmd** %51, align 8
  %52 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %53 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  br label %74

54:                                               ; preds = %1
  %55 = call i32 @pmcraid_info(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0))
  %56 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %57 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %56, i32 0, i32 4
  %58 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %57, align 8
  %59 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %60 = icmp ne %struct.pmcraid_cmd* %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %54
  %62 = call i32 @pmcraid_err(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %61, %54
  %64 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %65 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %66 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %65, i32 0, i32 4
  %67 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %66, align 8
  %68 = icmp eq %struct.pmcraid_cmd* %64, %67
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load i32, i32* @pmcraid_ioa_reset, align 4
  %71 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %72 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 8
  br label %73

73:                                               ; preds = %69, %63
  br label %74

74:                                               ; preds = %73, %48
  %75 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %76 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i64, i64* @PMC_DEVICE_EVENT_RESET_START, align 8
  %80 = icmp ne i64 %78, %79
  br i1 %80, label %81, label %92

81:                                               ; preds = %74
  %82 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %83 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  %85 = load i64, i64* %84, align 8
  %86 = load i64, i64* @PMC_DEVICE_EVENT_SHUTDOWN_START, align 8
  %87 = icmp ne i64 %85, %86
  br i1 %87, label %88, label %92

88:                                               ; preds = %81
  %89 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %90 = load i64, i64* @PMC_DEVICE_EVENT_RESET_START, align 8
  %91 = call i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance* %89, i64 %90)
  br label %92

92:                                               ; preds = %88, %81, %74
  %93 = load i32, i32* @IOA_STATE_IN_RESET_ALERT, align 4
  %94 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %95 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %97 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %96, i32 0, i32 1
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %97, align 8
  %99 = call i32 @scsi_block_requests(%struct.TYPE_10__* %98)
  %100 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %101 = call i32 @pmcraid_reset_alert(%struct.pmcraid_cmd* %100)
  %102 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %103 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %102, i32 0, i32 1
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = load i64, i64* %4, align 8
  %108 = call i32 @spin_unlock_irqrestore(i32 %106, i64 %107)
  br label %109

109:                                              ; preds = %92, %39
  ret void
}

declare dso_local i32 @dev_info(i32*, i8*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_get_free_cmd(%struct.pmcraid_instance*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pmcraid_err(i8*) #1

declare dso_local i32 @pmcraid_info(i8*) #1

declare dso_local i32 @pmcraid_notify_ioastate(%struct.pmcraid_instance*, i64) #1

declare dso_local i32 @scsi_block_requests(%struct.TYPE_10__*) #1

declare dso_local i32 @pmcraid_reset_alert(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
