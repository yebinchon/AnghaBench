; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_eh_wait_for_pending_commands.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_os.c_qla2x00_eh_wait_for_pending_commands.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, %struct.req_que*, %struct.qla_hw_data* }
%struct.req_que = type { i32, %struct.TYPE_11__** }
%struct.TYPE_11__ = type { i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64 }
%struct.qla_hw_data = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@SRB_SCSI_CMD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_eh_wait_for_pending_commands(%struct.TYPE_12__* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.qla_hw_data*, align 8
  %14 = alloca %struct.req_que*, align 8
  %15 = alloca %struct.TYPE_11__*, align 8
  %16 = alloca %struct.scsi_cmnd*, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %17 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %17, i32 0, i32 2
  %19 = load %struct.qla_hw_data*, %struct.qla_hw_data** %18, align 8
  store %struct.qla_hw_data* %19, %struct.qla_hw_data** %13, align 8
  %20 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %20, i32* %11, align 4
  %21 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %22 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %21, i32 0, i32 0
  %23 = load i64, i64* %12, align 8
  %24 = call i32 @spin_lock_irqsave(i32* %22, i64 %23)
  %25 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %25, i32 0, i32 1
  %27 = load %struct.req_que*, %struct.req_que** %26, align 8
  store %struct.req_que* %27, %struct.req_que** %14, align 8
  store i32 1, i32* %9, align 4
  br label %28

28:                                               ; preds = %119, %4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @QLA_SUCCESS, align 4
  %31 = icmp eq i32 %29, %30
  br i1 %31, label %32, label %38

32:                                               ; preds = %28
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.req_que*, %struct.req_que** %14, align 8
  %35 = getelementptr inbounds %struct.req_que, %struct.req_que* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br label %38

38:                                               ; preds = %32, %28
  %39 = phi i1 [ false, %28 ], [ %37, %32 ]
  br i1 %39, label %40, label %122

40:                                               ; preds = %38
  %41 = load %struct.req_que*, %struct.req_que** %14, align 8
  %42 = getelementptr inbounds %struct.req_que, %struct.req_que* %41, i32 0, i32 1
  %43 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %42, align 8
  %44 = load i32, i32* %9, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %43, i64 %45
  %47 = load %struct.TYPE_11__*, %struct.TYPE_11__** %46, align 8
  store %struct.TYPE_11__* %47, %struct.TYPE_11__** %15, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %49 = icmp ne %struct.TYPE_11__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %40
  br label %119

51:                                               ; preds = %40
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @SRB_SCSI_CMD, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %51
  br label %119

58:                                               ; preds = %51
  %59 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %63 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %61, %68
  br i1 %69, label %70, label %71

70:                                               ; preds = %58
  br label %119

71:                                               ; preds = %58
  store i32 0, i32* %10, align 4
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %15, align 8
  %73 = call %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_11__* %72)
  store %struct.scsi_cmnd* %73, %struct.scsi_cmnd** %16, align 8
  %74 = load i32, i32* %8, align 4
  switch i32 %74, label %104 [
    i32 130, label %75
    i32 128, label %76
    i32 129, label %85
  ]

75:                                               ; preds = %71
  store i32 1, i32* %10, align 4
  br label %104

76:                                               ; preds = %71
  %77 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %78 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %77, i32 0, i32 0
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* %6, align 4
  %83 = icmp eq i32 %81, %82
  %84 = zext i1 %83 to i32
  store i32 %84, i32* %10, align 4
  br label %104

85:                                               ; preds = %71
  %86 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %87 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %86, i32 0, i32 0
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* %6, align 4
  %92 = icmp eq i32 %90, %91
  br i1 %92, label %93, label %101

93:                                               ; preds = %85
  %94 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %95 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %94, i32 0, i32 0
  %96 = load %struct.TYPE_10__*, %struct.TYPE_10__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp eq i32 %98, %99
  br label %101

101:                                              ; preds = %93, %85
  %102 = phi i1 [ false, %85 ], [ %100, %93 ]
  %103 = zext i1 %102 to i32
  store i32 %103, i32* %10, align 4
  br label %104

104:                                              ; preds = %71, %101, %76, %75
  %105 = load i32, i32* %10, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %108, label %107

107:                                              ; preds = %104
  br label %119

108:                                              ; preds = %104
  %109 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %110 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %109, i32 0, i32 0
  %111 = load i64, i64* %12, align 8
  %112 = call i32 @spin_unlock_irqrestore(i32* %110, i64 %111)
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %16, align 8
  %114 = call i32 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd* %113)
  store i32 %114, i32* %11, align 4
  %115 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %116 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %115, i32 0, i32 0
  %117 = load i64, i64* %12, align 8
  %118 = call i32 @spin_lock_irqsave(i32* %116, i64 %117)
  br label %119

119:                                              ; preds = %108, %107, %70, %57, %50
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %28

122:                                              ; preds = %38
  %123 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  %124 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %123, i32 0, i32 0
  %125 = load i64, i64* %12, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load i32, i32* %11, align 4
  ret i32 %127
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.scsi_cmnd* @GET_CMD_SP(%struct.TYPE_11__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @qla2x00_eh_wait_on_command(%struct.scsi_cmnd*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
