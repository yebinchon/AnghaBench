; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_process_ccn.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_pmcraid.c_pmcraid_process_ccn.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmcraid_cmd = type { %struct.TYPE_9__*, %struct.pmcraid_instance* }
%struct.TYPE_9__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.pmcraid_instance = type { %struct.TYPE_8__*, %struct.TYPE_7__*, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32, i32* }

@PMCRAID_IOASC_IOA_WAS_RESET = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [42 x i8] c"Host RCB (CCN) failed with IOASC: 0x%08X\0A\00", align 1
@PMCRAID_HCAM_CODE_CONFIG_CHANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pmcraid_cmd*)* @pmcraid_process_ccn to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmcraid_process_ccn(%struct.pmcraid_cmd* %0) #0 {
  %2 = alloca %struct.pmcraid_cmd*, align 8
  %3 = alloca %struct.pmcraid_instance*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.pmcraid_cmd* %0, %struct.pmcraid_cmd** %2, align 8
  %6 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %7 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %6, i32 0, i32 1
  %8 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %7, align 8
  store %struct.pmcraid_instance* %8, %struct.pmcraid_instance** %3, align 8
  %9 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %10 = getelementptr inbounds %struct.pmcraid_cmd, %struct.pmcraid_cmd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @le32_to_cpu(i32 %14)
  store i64 %15, i64* %4, align 8
  %16 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %17 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 1
  store i32* null, i32** %18, align 8
  %19 = load %struct.pmcraid_cmd*, %struct.pmcraid_cmd** %2, align 8
  %20 = call i32 @pmcraid_return_cmd(%struct.pmcraid_cmd* %19)
  %21 = load i64, i64* %4, align 8
  %22 = load i64, i64* @PMCRAID_IOASC_IOA_WAS_RESET, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %1
  %25 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %26 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = call i32 @atomic_read(i32* %27)
  %29 = icmp eq i32 %28, 1
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %1
  br label %62

31:                                               ; preds = %24
  %32 = load i64, i64* %4, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %58

34:                                               ; preds = %31
  %35 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %36 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %35, i32 0, i32 1
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i64, i64* %4, align 8
  %40 = call i32 @dev_info(i32* %38, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i64 %39)
  %41 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %42 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %41, i32 0, i32 0
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = load i64, i64* %5, align 8
  %47 = call i32 @spin_lock_irqsave(i32 %45, i64 %46)
  %48 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %49 = load i32, i32* @PMCRAID_HCAM_CODE_CONFIG_CHANGE, align 4
  %50 = call i32 @pmcraid_send_hcam(%struct.pmcraid_instance* %48, i32 %49)
  %51 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %52 = getelementptr inbounds %struct.pmcraid_instance, %struct.pmcraid_instance* %51, i32 0, i32 0
  %53 = load %struct.TYPE_8__*, %struct.TYPE_8__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i64, i64* %5, align 8
  %57 = call i32 @spin_unlock_irqrestore(i32 %55, i64 %56)
  br label %61

58:                                               ; preds = %31
  %59 = load %struct.pmcraid_instance*, %struct.pmcraid_instance** %3, align 8
  %60 = call i32 @pmcraid_handle_config_change(%struct.pmcraid_instance* %59)
  br label %61

61:                                               ; preds = %58, %34
  br label %62

62:                                               ; preds = %30, %61
  ret void
}

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @pmcraid_return_cmd(%struct.pmcraid_cmd*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @dev_info(i32*, i8*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @pmcraid_send_hcam(%struct.pmcraid_instance*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @pmcraid_handle_config_change(%struct.pmcraid_instance*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
