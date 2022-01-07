; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_host_dispatch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_transport_fc.c_fc_bsg_host_dispatch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.request_queue = type { i32 }
%struct.Scsi_Host = type { %struct.TYPE_14__*, i32 }
%struct.TYPE_14__ = type { i64 }
%struct.fc_bsg_job = type { i32, i32, %struct.TYPE_16__*, %struct.TYPE_13__*, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_16__ = type { i32, i64 }
%struct.TYPE_13__ = type { i32, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i64 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.fc_internal = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 (%struct.fc_bsg_job*)* }

@EINVAL = common dso_local global i32 0, align 4
@ESRCH = common dso_local global i32 0, align 4
@EBADR = common dso_local global i32 0, align 4
@ENOMSG = common dso_local global i32 0, align 4
@FC_DISPATCH_UNLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.request_queue*, %struct.Scsi_Host*, %struct.fc_bsg_job*)* @fc_bsg_host_dispatch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fc_bsg_host_dispatch(%struct.request_queue* %0, %struct.Scsi_Host* %1, %struct.fc_bsg_job* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.request_queue*, align 8
  %6 = alloca %struct.Scsi_Host*, align 8
  %7 = alloca %struct.fc_bsg_job*, align 8
  %8 = alloca %struct.fc_internal*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.request_queue* %0, %struct.request_queue** %5, align 8
  store %struct.Scsi_Host* %1, %struct.Scsi_Host** %6, align 8
  store %struct.fc_bsg_job* %2, %struct.fc_bsg_job** %7, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call %struct.fc_internal* @to_fc_internal(i32 %13)
  store %struct.fc_internal* %14, %struct.fc_internal** %8, align 8
  store i32 4, i32* %9, align 4
  %15 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %16 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %15, i32 0, i32 3
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  switch i32 %19, label %99 [
    i32 132, label %20
    i32 130, label %25
    i32 129, label %30
    i32 131, label %50
    i32 128, label %70
  ]

20:                                               ; preds = %3
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = add i64 %22, 4
  %24 = trunc i64 %23 to i32
  store i32 %24, i32* %9, align 4
  br label %102

25:                                               ; preds = %3
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = add i64 %27, 4
  %29 = trunc i64 %28 to i32
  store i32 %29, i32* %9, align 4
  br label %102

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add i64 %32, 4
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %9, align 4
  %35 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %36 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %35, i32 0, i32 5
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %30
  %41 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %42 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %40, %30
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %10, align 4
  br label %124

49:                                               ; preds = %40
  br label %102

50:                                               ; preds = %3
  %51 = load i32, i32* %9, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 %52, 4
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %9, align 4
  %55 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %56 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %50
  %61 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %62 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %61, i32 0, i32 4
  %63 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %69, label %66

66:                                               ; preds = %60, %50
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %10, align 4
  br label %124

69:                                               ; preds = %60
  br label %102

70:                                               ; preds = %3
  %71 = load i32, i32* %9, align 4
  %72 = sext i32 %71 to i64
  %73 = add i64 %72, 4
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %9, align 4
  %75 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %76 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %75, i32 0, i32 0
  %77 = load %struct.TYPE_14__*, %struct.TYPE_14__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %95, label %81

81:                                               ; preds = %70
  %82 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %83 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %82, i32 0, i32 3
  %84 = load %struct.TYPE_13__*, %struct.TYPE_13__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %90 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %89, i32 0, i32 0
  %91 = load %struct.TYPE_14__*, %struct.TYPE_14__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %88, %93
  br i1 %94, label %95, label %98

95:                                               ; preds = %81, %70
  %96 = load i32, i32* @ESRCH, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %10, align 4
  br label %124

98:                                               ; preds = %81
  br label %102

99:                                               ; preds = %3
  %100 = load i32, i32* @EBADR, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %10, align 4
  br label %124

102:                                              ; preds = %98, %69, %49, %25, %20
  %103 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %104 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %9, align 4
  %107 = icmp slt i32 %105, %106
  br i1 %107, label %108, label %111

108:                                              ; preds = %102
  %109 = load i32, i32* @ENOMSG, align 4
  %110 = sub nsw i32 0, %109
  store i32 %110, i32* %10, align 4
  br label %124

111:                                              ; preds = %102
  %112 = load %struct.fc_internal*, %struct.fc_internal** %8, align 8
  %113 = getelementptr inbounds %struct.fc_internal, %struct.fc_internal* %112, i32 0, i32 0
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 0
  %116 = load i32 (%struct.fc_bsg_job*)*, i32 (%struct.fc_bsg_job*)** %115, align 8
  %117 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %118 = call i32 %116(%struct.fc_bsg_job* %117)
  store i32 %118, i32* %10, align 4
  %119 = load i32, i32* %10, align 4
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %123, label %121

121:                                              ; preds = %111
  %122 = load i32, i32* @FC_DISPATCH_UNLOCKED, align 4
  store i32 %122, i32* %4, align 4
  br label %146

123:                                              ; preds = %111
  br label %124

124:                                              ; preds = %123, %108, %99, %95, %66, %46
  %125 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %126 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %125, i32 0, i32 1
  %127 = load i32, i32* %126, align 4
  %128 = sext i32 %127 to i64
  %129 = icmp ult i64 %128, 4
  %130 = zext i1 %129 to i32
  %131 = call i32 @BUG_ON(i32 %130)
  %132 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %133 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %132, i32 0, i32 2
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 1
  store i64 0, i64* %135, align 8
  %136 = load i32, i32* %10, align 4
  %137 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %138 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %137, i32 0, i32 2
  %139 = load %struct.TYPE_16__*, %struct.TYPE_16__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %139, i32 0, i32 0
  store i32 %136, i32* %140, align 8
  %141 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %142 = getelementptr inbounds %struct.fc_bsg_job, %struct.fc_bsg_job* %141, i32 0, i32 1
  store i32 4, i32* %142, align 4
  %143 = load %struct.fc_bsg_job*, %struct.fc_bsg_job** %7, align 8
  %144 = call i32 @fc_bsg_jobdone(%struct.fc_bsg_job* %143)
  %145 = load i32, i32* @FC_DISPATCH_UNLOCKED, align 4
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %124, %121
  %147 = load i32, i32* %4, align 4
  ret i32 %147
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
