; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rport_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_rport_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { i32 }
%struct.fc_rport = type { i32 }
%struct.fc_bsg_job = type { i32, i32, %struct.TYPE_10__*, %struct.TYPE_8__, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_10__ = type { i32, i64 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i32 }
%struct.fc_internal = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (%struct.fc_bsg_job*)* }

@EINVAL = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@FC_DISPATCH_UNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.Scsi_Host*, %struct.fc_rport*, %struct.fc_bsg_job*)* @fc_bsg_rport_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_rport_dispatch(%struct.request_queue* %0, %struct.Scsi_Host* %1, %struct.fc_rport* %2, %struct.fc_bsg_job* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.request_queue*, align 8
  %7 = alloca %struct.Scsi_Host*, align 8
  %8 = alloca %struct.fc_rport*, align 8
  %9 = alloca %struct.fc_bsg_job*, align 8
  %10 = alloca %struct.fc_internal*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %6, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %7, align 8
  store %struct.fc_rport* %2, %struct.fc_rport** %8, align 8
  store %struct.fc_bsg_job* %3, %struct.fc_bsg_job** %9, align 8
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %7, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.fc_internal* @to_fc_internal(i32 %15)
  store %struct.fc_internal* %16, %struct.fc_internal** %10, align 8
  store i32 4, i32* %11, align 4
  %17 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %18 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %17, i32 0, i32 5
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  switch i32 %21, label %48 [
    i32 128, label %22
    i32 129, label %27
  ]

22:                                               ; preds = %4
  %23 = load i32, i32* %11, align 4
  %24 = sext i32 %23 to i64
  %25 = add i64 %24, 4
  %26 = trunc i64 %25 to i32
  store i32 %26, i32* %11, align 4
  br label %32

27:                                               ; preds = %4
  %28 = load i32, i32* %11, align 4
  %29 = sext i32 %28 to i64
  %30 = add i64 %29, 4
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %11, align 4
  br label %32

32:                                               ; preds = %27, %22
  %33 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %34 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %33, i32 0, i32 4
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %32
  %39 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %40 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %38, %32
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %12, align 4
  br label %73

47:                                               ; preds = %38
  br label %51

48:                                               ; preds = %4
  %49 = load i32, i32* @EBADR, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %12, align 4
  br label %73

51:                                               ; preds = %47
  %52 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %53 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %60

57:                                               ; preds = %51
  %58 = load i32, i32* @ENOMSG, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %12, align 4
  br label %73

60:                                               ; preds = %51
  %61 = load %struct.fc_internal*, %struct.fc_internal** %10, align 8
  %62 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %61, i32 0, i32 0
  %63 = load %struct.TYPE_9__*, %struct.TYPE_9__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 0
  %65 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %64, align 8
  %66 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %67 = call i32 %65(%struct.fc_bsg_job* %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %60
  %71 = load i32, i32* @FC_DISPATCH_UNLOCKED, align 4
  store i32 %71, i32* %5, align 4
  br label %95

72:                                               ; preds = %60
  br label %73

73:                                               ; preds = %72, %57, %48, %44
  %74 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %75 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = icmp ult i64 %77, 4
  %79 = zext i1 %78 to i32
  %80 = call i32 @BUG_ON(i32 %79)
  %81 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %82 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %81, i32 0, i32 2
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %83, i32 0, i32 1
  store i64 0, i64* %84, align 8
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %87 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %86, i32 0, i32 2
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  store i32 %85, i32* %89, align 8
  %90 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %91 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %90, i32 0, i32 1
  store i32 4, i32* %91, align 4
  %92 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %9, align 8
  %93 = call i32 @fc_bsg_jobdone(%struct.fc_bsg_job* %92)
  %94 = load i32, i32* @FC_DISPATCH_UNLOCKED, align 4
  store i32 %94, i32* %5, align 4
  br label %95

95:                                               ; preds = %73, %70
  %96 = load i32, i32* %5, align 4
  ret i32 %96
}

declare dso_local %struct.fc_internal* @to_fc_internal(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @fc_bsg_jobdone(%struct.fc_bsg_job*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
