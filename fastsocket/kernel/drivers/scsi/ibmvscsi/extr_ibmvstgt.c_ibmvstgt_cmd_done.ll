; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_cmd_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/ibmvscsi/extr_ibmvstgt.c_ibmvstgt_cmd_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i64, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.iu_entry = type { i32, %struct.srp_target* }
%struct.srp_target = type { i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }

@.str = private unnamed_addr constant [13 x i8] c"%p %p %x %u\0A\00", align 1
@ibmvstgt_rdma = common dso_local global i32 0, align 4
@SAM_STAT_GOOD = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [27 x i8] c"operation failed %p %d %x\0A\00", align 1
@HARDWARE_ERROR = common dso_local global i32 0, align 4
@NO_SENSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @ibmvstgt_cmd_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ibmvstgt_cmd_done(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca void (%struct.scsi_cmnd*)*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.iu_entry*, align 8
  %7 = alloca %struct.srp_target*, align 8
  %8 = alloca i32, align 4
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %4, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = inttoptr i64 %12 to %struct.iu_entry*
  store %struct.iu_entry* %13, %struct.iu_entry** %6, align 8
  %14 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %15 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %14, i32 0, i32 1
  %16 = load %struct.srp_target*, %struct.srp_target** %15, align 8
  store %struct.srp_target* %16, %struct.srp_target** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %18 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %19 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %20 = call %struct.TYPE_7__* @vio_iu(%struct.iu_entry* %19)
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %28 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %27)
  %29 = call i32 @dprintk(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), %struct.iu_entry* %17, %struct.srp_target* %18, i32 %26, i64 %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %31 = call i64 @scsi_sg_count(%struct.scsi_cmnd* %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %41

33:                                               ; preds = %2
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %35 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %36 = call %struct.TYPE_7__* @vio_iu(%struct.iu_entry* %35)
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* @ibmvstgt_rdma, align 4
  %40 = call i32 @srp_transfer_data(%struct.scsi_cmnd* %34, %struct.TYPE_8__* %38, i32 %39, i32 1, i32 1)
  store i32 %40, i32* %8, align 4
  br label %41

41:                                               ; preds = %33, %2
  %42 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %43 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %42, i32 0, i32 0
  %44 = load i64, i64* %5, align 8
  %45 = call i32 @spin_lock_irqsave(i32* %43, i64 %44)
  %46 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %47 = getelementptr inbounds %struct.iu_entry, %struct.iu_entry* %46, i32 0, i32 0
  %48 = call i32 @list_del(i32* %47)
  %49 = load %struct.srp_target*, %struct.srp_target** %7, align 8
  %50 = getelementptr inbounds %struct.srp_target, %struct.srp_target* %49, i32 0, i32 0
  %51 = load i64, i64* %5, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load i32, i32* %8, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %61, label %55

55:                                               ; preds = %41
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SAM_STAT_GOOD, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %79

61:                                               ; preds = %55, %41
  %62 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %67 = call %struct.TYPE_7__* @vio_iu(%struct.iu_entry* %66)
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 0
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @eprintk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), %struct.iu_entry* %62, i64 %65, i32 %73)
  %75 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %76 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %77 = load i32, i32* @HARDWARE_ERROR, align 4
  %78 = call i32 @send_rsp(%struct.iu_entry* %75, %struct.scsi_cmnd* %76, i32 %77, i32 0)
  br label %84

79:                                               ; preds = %55
  %80 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %82 = load i32, i32* @NO_SENSE, align 4
  %83 = call i32 @send_rsp(%struct.iu_entry* %80, %struct.scsi_cmnd* %81, i32 %82, i32 0)
  br label %84

84:                                               ; preds = %79, %61
  %85 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %4, align 8
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  call void %85(%struct.scsi_cmnd* %86)
  %87 = load %struct.iu_entry*, %struct.iu_entry** %6, align 8
  %88 = call i32 @srp_iu_put(%struct.iu_entry* %87)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, %struct.iu_entry*, %struct.srp_target*, i32, i64) #1

declare dso_local %struct.TYPE_7__* @vio_iu(%struct.iu_entry*) #1

declare dso_local i64 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @srp_transfer_data(%struct.scsi_cmnd*, %struct.TYPE_8__*, i32, i32, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @eprintk(i8*, %struct.iu_entry*, i64, i32) #1

declare dso_local i32 @send_rsp(%struct.iu_entry*, %struct.scsi_cmnd*, i32, i32) #1

declare dso_local i32 @srp_iu_put(%struct.iu_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
