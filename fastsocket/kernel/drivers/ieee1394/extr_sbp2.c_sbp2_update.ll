; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_update.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.unit_directory = type { i32 }
%struct.sbp2_lu = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"Failed to reconnect to sbp2 device!\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@SBP2LU_STATE_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.unit_directory*)* @sbp2_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2_update(%struct.unit_directory* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.unit_directory*, align 8
  %4 = alloca %struct.sbp2_lu*, align 8
  store %struct.unit_directory* %0, %struct.unit_directory** %3, align 8
  %5 = load %struct.unit_directory*, %struct.unit_directory** %3, align 8
  %6 = getelementptr inbounds %struct.unit_directory, %struct.unit_directory* %5, i32 0, i32 0
  %7 = call %struct.sbp2_lu* @dev_get_drvdata(i32* %6)
  store %struct.sbp2_lu* %7, %struct.sbp2_lu** %4, align 8
  %8 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %9 = call i64 @sbp2_reconnect_device(%struct.sbp2_lu* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %1
  %12 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %13 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @hpsb_node_entry_valid(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %11
  store i32 0, i32* %2, align 4
  br label %61

18:                                               ; preds = %11
  %19 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %20 = call i32 @sbp2_logout_device(%struct.sbp2_lu* %19)
  %21 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %22 = call i64 @sbp2_login_device(%struct.sbp2_lu* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %26 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @hpsb_node_entry_valid(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %24
  store i32 0, i32* %2, align 4
  br label %61

31:                                               ; preds = %24
  %32 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %2, align 4
  br label %61

35:                                               ; preds = %18
  br label %36

36:                                               ; preds = %35, %1
  %37 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %38 = call i32 @sbp2_set_busy_timeout(%struct.sbp2_lu* %37)
  %39 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %40 = call i32 @sbp2_agent_reset(%struct.sbp2_lu* %39, i32 1)
  %41 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %42 = call i32 @sbp2_max_speed_and_size(%struct.sbp2_lu* %41)
  %43 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %44 = load i32, i32* @DID_BUS_BUSY, align 4
  %45 = call i32 @sbp2scsi_complete_all_commands(%struct.sbp2_lu* %43, i32 %44)
  %46 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %47 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @hpsb_node_entry_valid(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %60

51:                                               ; preds = %36
  %52 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %53 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %52, i32 0, i32 1
  %54 = load i32, i32* @SBP2LU_STATE_RUNNING, align 4
  %55 = call i32 @atomic_set(i32* %53, i32 %54)
  %56 = load %struct.sbp2_lu*, %struct.sbp2_lu** %4, align 8
  %57 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @scsi_unblock_requests(i32 %58)
  br label %60

60:                                               ; preds = %51, %36
  store i32 0, i32* %2, align 4
  br label %61

61:                                               ; preds = %60, %31, %30, %17
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local %struct.sbp2_lu* @dev_get_drvdata(i32*) #1

declare dso_local i64 @sbp2_reconnect_device(%struct.sbp2_lu*) #1

declare dso_local i64 @hpsb_node_entry_valid(i32) #1

declare dso_local i32 @sbp2_logout_device(%struct.sbp2_lu*) #1

declare dso_local i64 @sbp2_login_device(%struct.sbp2_lu*) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i32 @sbp2_set_busy_timeout(%struct.sbp2_lu*) #1

declare dso_local i32 @sbp2_agent_reset(%struct.sbp2_lu*, i32) #1

declare dso_local i32 @sbp2_max_speed_and_size(%struct.sbp2_lu*) #1

declare dso_local i32 @sbp2scsi_complete_all_commands(%struct.sbp2_lu*, i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @scsi_unblock_requests(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
