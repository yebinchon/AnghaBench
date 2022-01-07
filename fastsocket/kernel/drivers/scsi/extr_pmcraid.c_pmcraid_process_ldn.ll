; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_process_ldn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_process_ldn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_9__*, %struct.pmcraid_instance* }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%struct.pmcraid_instance = type { i32, %struct.TYPE_14__*, %struct.TYPE_13__*, %struct.TYPE_12__, %struct.TYPE_11__ }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { i32*, i64 }
%struct.pmcraid_hcam_ldn = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }

@PMCRAID_IOASC_IOA_WAS_RESET = common dso_local global i64 0, align 8
@PMCRAID_IOASC_NR_IOA_RESET_REQUIRED = common dso_local global i64 0, align 8
@PMCRAID_IOASC_TIME_STAMP_OUT_OF_SYNC = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [41 x i8] c"Host RCB(LDN) failed with IOASC: 0x%08X\0A\00", align 1
@pmcraid_disable_aen = common dso_local global i32 0, align 4
@PMCRAID_HCAM_CODE_LOG_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_process_ldn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_process_ldn(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca %struct.pmcraid_hcam_ldn*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %8 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %9 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %8, i32 0, i32 1
  %10 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %9, align 8
  store %struct.pmcraid_instance* %10, %struct.pmcraid_instance** %3, align 8
  %11 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %12 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %11, i32 0, i32 4
  %13 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.pmcraid_hcam_ldn*
  store %struct.pmcraid_hcam_ldn* %15, %struct.pmcraid_hcam_ldn** %4, align 8
  %16 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %17 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %16, i32 0, i32 0
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i64 @le32_to_cpu(i32 %21)
  store i64 %22, i64* %5, align 8
  %23 = load %struct.pmcraid_hcam_ldn*, %struct.pmcraid_hcam_ldn** %4, align 8
  %24 = getelementptr inbounds %struct.pmcraid_hcam_ldn, %struct.pmcraid_hcam_ldn* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @le32_to_cpu(i32 %26)
  store i64 %27, i64* %6, align 8
  %28 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %29 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %28, i32 0, i32 4
  %30 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  %31 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %32 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %31)
  %33 = load i64, i64* %5, align 8
  %34 = load i64, i64* @PMCRAID_IOASC_IOA_WAS_RESET, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %1
  %37 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %38 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %37, i32 0, i32 3
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 0
  %40 = call i32 @atomic_read(i32* %39)
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %43

42:                                               ; preds = %36, %1
  br label %102

43:                                               ; preds = %36
  %44 = load i64, i64* %5, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %79, label %46

46:                                               ; preds = %43
  %47 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %48 = call i32 @pmcraid_handle_error_log(%struct.pmcraid_instance* %47)
  %49 = load i64, i64* %6, align 8
  %50 = load i64, i64* @PMCRAID_IOASC_NR_IOA_RESET_REQUIRED, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %69

52:                                               ; preds = %46
  %53 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %54 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %53, i32 0, i32 2
  %55 = load %struct.TYPE_13__*, %struct.TYPE_13__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load i64, i64* %7, align 8
  %59 = call i32 @spin_lock_irqsave(i32 %57, i64 %58)
  %60 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %61 = call i32 @pmcraid_initiate_reset(%struct.pmcraid_instance* %60)
  %62 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %63 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %62, i32 0, i32 2
  %64 = load %struct.TYPE_13__*, %struct.TYPE_13__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load i64, i64* %7, align 8
  %68 = call i32 @spin_unlock_irqrestore(i32 %66, i64 %67)
  br label %102

69:                                               ; preds = %46
  %70 = load i64, i64* %6, align 8
  %71 = load i64, i64* @PMCRAID_IOASC_TIME_STAMP_OUT_OF_SYNC, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %69
  %74 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %75 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  %76 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %77 = call i32 @pmcraid_set_timestamp(%struct.pmcraid_cmd* %76)
  br label %78

78:                                               ; preds = %73, %69
  br label %86

79:                                               ; preds = %43
  %80 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %81 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %80, i32 0, i32 1
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i64, i64* %5, align 8
  %85 = call i32 @dev_info(i32* %83, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i64 %84)
  br label %86

86:                                               ; preds = %79, %78
  br label %87

87:                                               ; preds = %86
  %88 = load i32, i32* @pmcraid_disable_aen, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %93, label %90

90:                                               ; preds = %87
  %91 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %92 = call i32 @pmcraid_notify_ldn(%struct.pmcraid_instance* %91)
  br label %93

93:                                               ; preds = %90, %87
  %94 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %95 = load i32, i32* @PMCRAID_HCAM_CODE_LOG_DATA, align 4
  %96 = call %struct.pmcraid_cmd* @pmcraid_init_hcam(%struct.pmcraid_instance* %94, i32 %95)
  store %struct.pmcraid_cmd* %96, %struct.pmcraid_cmd** %2, align 8
  %97 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %98 = icmp ne %struct.pmcraid_cmd* %97, null
  br i1 %98, label %99, label %102

99:                                               ; preds = %93
  %100 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %101 = call i32 @pmcraid_send_hcam_cmd(%struct.pmcraid_cmd* %100)
  br label %102

102:                                              ; preds = %42, %52, %99, %93
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @pmcraid_handle_error_log(%struct.pmcraid_instance*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_initiate_reset(%struct.pmcraid_instance*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pmcraid_set_timestamp(%struct.pmcraid_cmd*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @pmcraid_notify_ldn(%struct.pmcraid_instance*) #1

declare dso_local %struct.pmcraid_cmd* @pmcraid_init_hcam(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @pmcraid_send_hcam_cmd(%struct.pmcraid_cmd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
