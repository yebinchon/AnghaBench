; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_MsgIn_QTag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_tmscsim.c_dc390_MsgIn_QTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dc390_srb = type { i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.dc390_acb = type { %struct.dc390_srb* }
%struct.dc390_dcb = type { i32, %struct.dc390_srb*, %struct.dc390_srb* }
%struct.scsi_cmnd = type { i64 }

@ABORT_DEV_ = common dso_local global i32 0, align 4
@SRB_ABORT_SENT = common dso_local global i32 0, align 4
@SRB_DISCONNECT = common dso_local global i32 0, align 4
@SRB_DATA_XFER = common dso_local global i32 0, align 4
@SRB_UNEXPECT_RESEL = common dso_local global i32 0, align 4
@ABORT_TAG = common dso_local global i32 0, align 4
@DC390_ENABLE_MSGOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dc390_srb* (%struct.dc390_acb*, %struct.dc390_dcb*, i32)* @dc390_MsgIn_QTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dc390_srb* @dc390_MsgIn_QTag(%struct.dc390_acb* %0, %struct.dc390_dcb* %1, i32 %2) #0 {
  %4 = alloca %struct.dc390_acb*, align 8
  %5 = alloca %struct.dc390_dcb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.dc390_srb*, align 8
  %8 = alloca %struct.scsi_cmnd*, align 8
  store %struct.dc390_acb* %0, %struct.dc390_acb** %4, align 8
  store %struct.dc390_dcb* %1, %struct.dc390_dcb** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %10 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %9, i32 0, i32 2
  %11 = load %struct.dc390_srb*, %struct.dc390_srb** %10, align 8
  store %struct.dc390_srb* %11, %struct.dc390_srb** %7, align 8
  %12 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %13 = icmp ne %struct.dc390_srb* %12, null
  br i1 %13, label %14, label %54

14:                                               ; preds = %3
  %15 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %16 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %15, i32 0, i32 3
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call %struct.scsi_cmnd* @scsi_find_tag(i32 %19, i32 %20)
  store %struct.scsi_cmnd* %21, %struct.scsi_cmnd** %8, align 8
  %22 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %8, align 8
  %23 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to %struct.dc390_srb*
  store %struct.dc390_srb* %25, %struct.dc390_srb** %7, align 8
  %26 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %27 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load i32, i32* @ABORT_DEV_, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %14
  %33 = load i32, i32* @SRB_ABORT_SENT, align 4
  %34 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %35 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %37 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %38 = call i32 @dc390_EnableMsgOut_Abort(%struct.dc390_acb* %36, %struct.dc390_srb* %37)
  br label %39

39:                                               ; preds = %32, %14
  %40 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %41 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SRB_DISCONNECT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %47, label %46

46:                                               ; preds = %39
  br label %55

47:                                               ; preds = %39
  %48 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %49 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %50 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %49, i32 0, i32 1
  store %struct.dc390_srb* %48, %struct.dc390_srb** %50, align 8
  %51 = load i32, i32* @SRB_DATA_XFER, align 4
  %52 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %53 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  br label %73

54:                                               ; preds = %3
  br label %55

55:                                               ; preds = %54, %46
  %56 = load %struct.dc390_acb*, %struct.dc390_acb** %4, align 8
  %57 = getelementptr inbounds %struct.dc390_acb, %struct.dc390_acb* %56, i32 0, i32 0
  %58 = load %struct.dc390_srb*, %struct.dc390_srb** %57, align 8
  store %struct.dc390_srb* %58, %struct.dc390_srb** %7, align 8
  %59 = load i32, i32* @SRB_UNEXPECT_RESEL, align 4
  %60 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %61 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %60, i32 0, i32 0
  store i32 %59, i32* %61, align 8
  %62 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %63 = load %struct.dc390_dcb*, %struct.dc390_dcb** %5, align 8
  %64 = getelementptr inbounds %struct.dc390_dcb, %struct.dc390_dcb* %63, i32 0, i32 1
  store %struct.dc390_srb* %62, %struct.dc390_srb** %64, align 8
  %65 = load i32, i32* @ABORT_TAG, align 4
  %66 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %67 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %66, i32 0, i32 2
  %68 = load i32*, i32** %67, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 %65, i32* %69, align 4
  %70 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  %71 = getelementptr inbounds %struct.dc390_srb, %struct.dc390_srb* %70, i32 0, i32 1
  store i32 1, i32* %71, align 4
  %72 = load i32, i32* @DC390_ENABLE_MSGOUT, align 4
  br label %73

73:                                               ; preds = %55, %47
  %74 = load %struct.dc390_srb*, %struct.dc390_srb** %7, align 8
  ret %struct.dc390_srb* %74
}

declare dso_local %struct.scsi_cmnd* @scsi_find_tag(i32, i32) #1

declare dso_local i32 @dc390_EnableMsgOut_Abort(%struct.dc390_acb*, %struct.dc390_srb*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
