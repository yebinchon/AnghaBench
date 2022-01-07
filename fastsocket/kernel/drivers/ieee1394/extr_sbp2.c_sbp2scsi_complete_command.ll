; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_complete_command.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_complete_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbp2_lu = type { i32 }
%struct.scsi_cmnd = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"SCpnt is NULL\00", align 1
@DID_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"SBP2_SCSI_STATUS_BUSY\00", align 1
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@CHECK_CONDITION = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"SBP2_SCSI_STATUS_SELECTION_TIMEOUT\00", align 1
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"Bad SCSI status = %x\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"Unsupported SCSI status = %x\00", align 1
@.str.5 = private unnamed_addr constant [41 x i8] c"Completing command with busy (bus reset)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbp2_lu*, i32, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @sbp2scsi_complete_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbp2scsi_complete_command(%struct.sbp2_lu* %0, i32 %1, %struct.scsi_cmnd* %2, void (%struct.scsi_cmnd*)* %3) #0 {
  %5 = alloca %struct.sbp2_lu*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_cmnd*, align 8
  %8 = alloca void (%struct.scsi_cmnd*)*, align 8
  store %struct.sbp2_lu* %0, %struct.sbp2_lu** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.scsi_cmnd* %2, %struct.scsi_cmnd** %7, align 8
  store void (%struct.scsi_cmnd*)* %3, void (%struct.scsi_cmnd*)** %8, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %10 = icmp ne %struct.scsi_cmnd* %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %4
  %12 = call i32 (i8*, ...) @SBP2_ERR(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  br label %76

13:                                               ; preds = %4
  %14 = load i32, i32* %6, align 4
  switch i32 %14, label %51 [
    i32 130, label %15
    i32 134, label %20
    i32 133, label %26
    i32 128, label %34
    i32 131, label %42
    i32 129, label %42
    i32 132, label %42
  ]

15:                                               ; preds = %13
  %16 = load i32, i32* @DID_OK, align 4
  %17 = shl i32 %16, 16
  %18 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %19 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  br label %58

20:                                               ; preds = %13
  %21 = call i32 (i8*, ...) @SBP2_ERR(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  %22 = load i32, i32* @DID_BUS_BUSY, align 4
  %23 = shl i32 %22, 16
  %24 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %25 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %24, i32 0, i32 0
  store i32 %23, i32* %25, align 4
  br label %58

26:                                               ; preds = %13
  %27 = load i32, i32* @CHECK_CONDITION, align 4
  %28 = shl i32 %27, 1
  %29 = load i32, i32* @DID_OK, align 4
  %30 = shl i32 %29, 16
  %31 = or i32 %28, %30
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %33 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  br label %58

34:                                               ; preds = %13
  %35 = call i32 (i8*, ...) @SBP2_ERR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0))
  %36 = load i32, i32* @DID_NO_CONNECT, align 4
  %37 = shl i32 %36, 16
  %38 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %39 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %41 = call i32 @scsi_print_command(%struct.scsi_cmnd* %40)
  br label %58

42:                                               ; preds = %13, %13, %13
  %43 = load i32, i32* %6, align 4
  %44 = call i32 (i8*, ...) @SBP2_ERR(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @DID_ERROR, align 4
  %46 = shl i32 %45, 16
  %47 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %48 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %50 = call i32 @scsi_print_command(%struct.scsi_cmnd* %49)
  br label %58

51:                                               ; preds = %13
  %52 = load i32, i32* %6, align 4
  %53 = call i32 (i8*, ...) @SBP2_ERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0), i32 %52)
  %54 = load i32, i32* @DID_ERROR, align 4
  %55 = shl i32 %54, 16
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 4
  br label %58

58:                                               ; preds = %51, %42, %34, %26, %20, %15
  %59 = load %struct.sbp2_lu*, %struct.sbp2_lu** %5, align 8
  %60 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @hpsb_node_entry_valid(i32 %61)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %73, label %64

64:                                               ; preds = %58
  %65 = load i32, i32* %6, align 4
  %66 = icmp ne i32 %65, 130
  br i1 %66, label %67, label %73

67:                                               ; preds = %64
  %68 = call i32 (i8*, ...) @SBP2_ERR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %69 = load i32, i32* @DID_BUS_BUSY, align 4
  %70 = shl i32 %69, 16
  %71 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  %72 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %71, i32 0, i32 0
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %64, %58
  %74 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %8, align 8
  %75 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %7, align 8
  call void %74(%struct.scsi_cmnd* %75)
  br label %76

76:                                               ; preds = %73, %11
  ret void
}

declare dso_local i32 @SBP2_ERR(i8*, ...) #1

declare dso_local i32 @scsi_print_command(%struct.scsi_cmnd*) #1

declare dso_local i32 @hpsb_node_entry_valid(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
