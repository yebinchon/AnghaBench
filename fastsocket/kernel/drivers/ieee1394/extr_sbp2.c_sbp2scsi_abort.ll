; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64* }
%struct.sbp2_lu = type { i32 }
%struct.sbp2_command_info = type { %struct.TYPE_6__*, i32 (%struct.TYPE_6__*)* }
%struct.TYPE_6__ = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"aborting sbp2 command\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @sbp2scsi_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2scsi_abort(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.sbp2_lu*, align 8
  %4 = alloca %struct.sbp2_command_info*, align 8
  %5 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %6 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %7 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %6, i32 0, i32 0
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = load i64*, i64** %11, align 8
  %13 = getelementptr inbounds i64, i64* %12, i64 0
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.sbp2_lu*
  store %struct.sbp2_lu* %15, %struct.sbp2_lu** %3, align 8
  %16 = call i32 @SBP2_INFO(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = call i32 @scsi_print_command(%struct.scsi_cmnd* %17)
  %19 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %20 = call i64 @sbp2util_node_is_available(%struct.sbp2_lu* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %65

22:                                               ; preds = %1
  %23 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %24 = call i32 @sbp2_agent_reset(%struct.sbp2_lu* %23, i32 1)
  %25 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %26 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %25, i32 0, i32 0
  %27 = load i64, i64* %5, align 8
  %28 = call i32 @spin_lock_irqsave(i32* %26, i64 %27)
  %29 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %31 = call %struct.sbp2_command_info* @sbp2util_find_command_for_SCpnt(%struct.sbp2_lu* %29, %struct.scsi_cmnd* %30)
  store %struct.sbp2_command_info* %31, %struct.sbp2_command_info** %4, align 8
  %32 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %33 = icmp ne %struct.sbp2_command_info* %32, null
  br i1 %33, label %34, label %57

34:                                               ; preds = %22
  %35 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %36 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %37 = call i32 @sbp2util_mark_command_completed(%struct.sbp2_lu* %35, %struct.sbp2_command_info* %36)
  %38 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %39 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %38, i32 0, i32 0
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp ne %struct.TYPE_6__* %40, null
  br i1 %41, label %42, label %56

42:                                               ; preds = %34
  %43 = load i32, i32* @DID_ABORT, align 4
  %44 = shl i32 %43, 16
  %45 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %46 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %45, i32 0, i32 0
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  store i32 %44, i32* %48, align 4
  %49 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %50 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_6__*)*, i32 (%struct.TYPE_6__*)** %50, align 8
  %52 = load %struct.sbp2_command_info*, %struct.sbp2_command_info** %4, align 8
  %53 = getelementptr inbounds %struct.sbp2_command_info, %struct.sbp2_command_info* %52, i32 0, i32 0
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = call i32 %51(%struct.TYPE_6__* %54)
  br label %56

56:                                               ; preds = %42, %34
  br label %57

57:                                               ; preds = %56, %22
  %58 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %59 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %58, i32 0, i32 0
  %60 = load i64, i64* %5, align 8
  %61 = call i32 @spin_unlock_irqrestore(i32* %59, i64 %60)
  %62 = load %struct.sbp2_lu*, %struct.sbp2_lu** %3, align 8
  %63 = load i32, i32* @DID_BUS_BUSY, align 4
  %64 = call i32 @sbp2scsi_complete_all_commands(%struct.sbp2_lu* %62, i32 %63)
  br label %65

65:                                               ; preds = %57, %1
  %66 = load i32, i32* @SUCCESS, align 4
  ret i32 %66
}

declare dso_local i32 @SBP2_INFO(i8*) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i64 @sbp2util_node_is_available(%struct.sbp2_lu*) #1

declare dso_local i32 @sbp2_agent_reset(%struct.sbp2_lu*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.sbp2_command_info* @sbp2util_find_command_for_SCpnt(%struct.sbp2_lu*, %struct.scsi_cmnd*) #1

declare dso_local i32 @sbp2util_mark_command_completed(%struct.sbp2_lu*, %struct.sbp2_command_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @sbp2scsi_complete_all_commands(%struct.sbp2_lu*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
