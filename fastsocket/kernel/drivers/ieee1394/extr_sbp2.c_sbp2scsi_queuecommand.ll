; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_queuecommand.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ieee1394/extr_sbp2.c_sbp2scsi_queuecommand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64* }
%struct.sbp2_lu = type { i32, %struct.sbp2_fwhost_info* }
%struct.sbp2_fwhost_info = type { i32 }

@DID_NO_CONNECT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"sbp2_fwhost_info is NULL - this is bad!\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Bus reset in progress - rejecting command\00", align 1
@DID_BUS_BUSY = common dso_local global i32 0, align 4
@DMA_BIDIRECTIONAL = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [52 x i8] c"Cannot handle DMA_BIDIRECTIONAL - rejecting command\00", align 1
@DID_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [27 x i8] c"Error sending SCSI command\00", align 1
@SBP2_SCSI_STATUS_SELECTION_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @sbp2scsi_queuecommand to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sbp2scsi_queuecommand(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca %struct.sbp2_lu*, align 8
  %7 = alloca %struct.sbp2_fwhost_info*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 2
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.sbp2_lu*
  store %struct.sbp2_lu* %18, %struct.sbp2_lu** %6, align 8
  %19 = load i32, i32* @DID_NO_CONNECT, align 4
  %20 = shl i32 %19, 16
  store i32 %20, i32* %8, align 4
  %21 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %22 = call i32 @sbp2util_node_is_available(%struct.sbp2_lu* %21)
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @unlikely(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %2
  br label %91

29:                                               ; preds = %2
  %30 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %31 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %30, i32 0, i32 1
  %32 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %31, align 8
  store %struct.sbp2_fwhost_info* %32, %struct.sbp2_fwhost_info** %7, align 8
  %33 = load %struct.sbp2_fwhost_info*, %struct.sbp2_fwhost_info** %7, align 8
  %34 = icmp ne %struct.sbp2_fwhost_info* %33, null
  %35 = xor i1 %34, true
  %36 = zext i1 %35 to i32
  %37 = call i64 @unlikely(i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %91

41:                                               ; preds = %29
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %43 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %42, i32 0, i32 2
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %91

50:                                               ; preds = %41
  %51 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %52 = getelementptr inbounds %struct.sbp2_lu, %struct.sbp2_lu* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = call i32 @hpsb_node_entry_valid(i32 %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = call i64 @unlikely(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %50
  %61 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0))
  %62 = load i32, i32* @DID_BUS_BUSY, align 4
  %63 = shl i32 %62, 16
  store i32 %63, i32* %8, align 4
  br label %91

64:                                               ; preds = %50
  %65 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %66 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @DMA_BIDIRECTIONAL, align 8
  %69 = icmp eq i64 %67, %68
  %70 = zext i1 %69 to i32
  %71 = call i64 @unlikely(i32 %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %64
  %74 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %75 = load i32, i32* @DID_ERROR, align 4
  %76 = shl i32 %75, 16
  store i32 %76, i32* %8, align 4
  br label %91

77:                                               ; preds = %64
  %78 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %81 = call i64 @sbp2_send_command(%struct.sbp2_lu* %78, %struct.scsi_cmnd* %79, void (%struct.scsi_cmnd*)* %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = call i32 @SBP2_ERR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0))
  %85 = load %struct.sbp2_lu*, %struct.sbp2_lu** %6, align 8
  %86 = load i32, i32* @SBP2_SCSI_STATUS_SELECTION_TIMEOUT, align 4
  %87 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %88 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %89 = call i32 @sbp2scsi_complete_command(%struct.sbp2_lu* %85, i32 %86, %struct.scsi_cmnd* %87, void (%struct.scsi_cmnd*)* %88)
  br label %90

90:                                               ; preds = %83, %77
  store i32 0, i32* %3, align 4
  br label %97

91:                                               ; preds = %73, %60, %49, %39, %28
  %92 = load i32, i32* %8, align 4
  %93 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %94 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %93, i32 0, i32 1
  store i32 %92, i32* %94, align 8
  %95 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %96 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %95(%struct.scsi_cmnd* %96)
  store i32 0, i32* %3, align 4
  br label %97

97:                                               ; preds = %91, %90
  %98 = load i32, i32* %3, align 4
  ret i32 %98
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sbp2util_node_is_available(%struct.sbp2_lu*) #1

declare dso_local i32 @SBP2_ERR(i8*) #1

declare dso_local i32 @hpsb_node_entry_valid(i32) #1

declare dso_local i64 @sbp2_send_command(%struct.sbp2_lu*, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*) #1

declare dso_local i32 @sbp2scsi_complete_command(%struct.sbp2_lu*, i32, %struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
