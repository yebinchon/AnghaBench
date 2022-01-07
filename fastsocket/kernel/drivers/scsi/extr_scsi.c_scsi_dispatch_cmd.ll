; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_dispatch_cmd.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi.c_scsi_dispatch_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, i32*, i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, i64, i32, %struct.Scsi_Host*, i32 }
%struct.Scsi_Host = type { i64, i64, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (%struct.scsi_cmnd*, {}*)*, i32 }

@SDEV_DEL = common dso_local global i64 0, align 8
@DID_NO_CONNECT = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_DEVICE_BUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"queuecommand : device blocked \0A\00", align 1
@SCSI_2 = common dso_local global i64 0, align 8
@SCSI_UNKNOWN = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [67 x i8] c"queuecommand : command too long. cdb_size=%d host->max_cmd_len=%d\0A\00", align 1
@DID_ABORT = common dso_local global i32 0, align 4
@SHOST_DEL = common dso_local global i64 0, align 8
@SCSI_MLQUEUE_TARGET_BUSY = common dso_local global i32 0, align 4
@SCSI_MLQUEUE_HOST_BUSY = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [33 x i8] c"queuecommand : request rejected\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"leaving scsi_dispatch_cmnd()\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_dispatch_cmd(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32 (%struct.scsi_cmnd*)*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 3
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 3
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %3, align 8
  store i64 0, i64* %4, align 8
  store i32 0, i32* %5, align 4
  %12 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %13 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %12, i32 0, i32 3
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 4
  %16 = call i32 @atomic_inc(i32* %15)
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %18 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %17, i32 0, i32 3
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SDEV_DEL, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %1
  %28 = load i32, i32* @DID_NO_CONNECT, align 4
  %29 = shl i32 %28, 16
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %31 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %33 = call i32 @scsi_done(%struct.scsi_cmnd* %32)
  br label %195

34:                                               ; preds = %1
  %35 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %36 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %35, i32 0, i32 3
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = call i32 @scsi_device_blocked(%struct.TYPE_4__* %37)
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %43 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  %44 = call i32 @scsi_queue_insert(%struct.scsi_cmnd* %42, i32 %43)
  %45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %46 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %45)
  br label %195

47:                                               ; preds = %34
  %48 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %49 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %48, i32 0, i32 3
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SCSI_2, align 8
  %54 = icmp sle i64 %52, %53
  br i1 %54, label %55, label %82

55:                                               ; preds = %47
  %56 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %57 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %56, i32 0, i32 3
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SCSI_UNKNOWN, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %82

63:                                               ; preds = %55
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %65 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %68, 31
  %70 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %71 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %70, i32 0, i32 3
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = shl i32 %74, 5
  %76 = and i32 %75, 224
  %77 = or i32 %69, %76
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %79 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %78, i32 0, i32 1
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 %77, i32* %81, align 4
  br label %82

82:                                               ; preds = %63, %55, %47
  %83 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %84 = call i32 @scsi_log_send(%struct.scsi_cmnd* %83)
  %85 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %86 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %85, i32 0, i32 2
  %87 = load i64, i64* %86, align 8
  %88 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %89 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 3
  %92 = load %struct.Scsi_Host*, %struct.Scsi_Host** %91, align 8
  %93 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp sgt i64 %87, %94
  br i1 %95, label %96, label %115

96:                                               ; preds = %82
  %97 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %98 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %101 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %100, i32 0, i32 3
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load %struct.Scsi_Host*, %struct.Scsi_Host** %103, align 8
  %105 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.1, i64 0, i64 0), i64 %99, i64 %106)
  %108 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %107)
  %109 = load i32, i32* @DID_ABORT, align 4
  %110 = shl i32 %109, 16
  %111 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %112 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %111, i32 0, i32 0
  store i32 %110, i32* %112, align 8
  %113 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %114 = call i32 @scsi_done(%struct.scsi_cmnd* %113)
  br label %195

115:                                              ; preds = %82
  %116 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %117 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %116, i32 0, i32 3
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %131, label %122

122:                                              ; preds = %115
  %123 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %124 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %123, i32 0, i32 2
  %125 = load i32, i32* %124, align 8
  %126 = load i64, i64* %4, align 8
  %127 = call i32 @spin_lock_irqsave(i32 %125, i64 %126)
  %128 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %129 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %130 = call i32 @scsi_cmd_get_serial(%struct.Scsi_Host* %128, %struct.scsi_cmnd* %129)
  br label %131

131:                                              ; preds = %122, %115
  %132 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %133 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load i64, i64* @SHOST_DEL, align 8
  %136 = icmp eq i64 %134, %135
  %137 = zext i1 %136 to i32
  %138 = call i64 @unlikely(i32 %137)
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %147

140:                                              ; preds = %131
  %141 = load i32, i32* @DID_NO_CONNECT, align 4
  %142 = shl i32 %141, 16
  %143 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %144 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %143, i32 0, i32 0
  store i32 %142, i32* %144, align 8
  %145 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %146 = call i32 @scsi_done(%struct.scsi_cmnd* %145)
  br label %159

147:                                              ; preds = %131
  %148 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %149 = call i32 @trace_scsi_dispatch_cmd_start(%struct.scsi_cmnd* %148)
  %150 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %151 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %150, i32 0, i32 3
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32 (%struct.scsi_cmnd*, {}*)*, i32 (%struct.scsi_cmnd*, {}*)** %153, align 8
  %155 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  store i32 (%struct.scsi_cmnd*)* @scsi_done, i32 (%struct.scsi_cmnd*)** %6, align 8
  %156 = load i32 (%struct.scsi_cmnd*)*, i32 (%struct.scsi_cmnd*)** %6, align 8
  %157 = bitcast i32 (%struct.scsi_cmnd*)* %156 to {}*
  %158 = call i32 %154(%struct.scsi_cmnd* %155, {}* %157)
  store i32 %158, i32* %5, align 4
  br label %159

159:                                              ; preds = %147, %140
  %160 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %161 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %160, i32 0, i32 3
  %162 = load %struct.TYPE_3__*, %struct.TYPE_3__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %172, label %166

166:                                              ; preds = %159
  %167 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %168 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 8
  %170 = load i64, i64* %4, align 8
  %171 = call i32 @spin_unlock_irqrestore(i32 %169, i64 %170)
  br label %172

172:                                              ; preds = %166, %159
  %173 = load i32, i32* %5, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %194

175:                                              ; preds = %172
  %176 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %177 = load i32, i32* %5, align 4
  %178 = call i32 @trace_scsi_dispatch_cmd_error(%struct.scsi_cmnd* %176, i32 %177)
  %179 = load i32, i32* %5, align 4
  %180 = load i32, i32* @SCSI_MLQUEUE_DEVICE_BUSY, align 4
  %181 = icmp ne i32 %179, %180
  br i1 %181, label %182, label %188

182:                                              ; preds = %175
  %183 = load i32, i32* %5, align 4
  %184 = load i32, i32* @SCSI_MLQUEUE_TARGET_BUSY, align 4
  %185 = icmp ne i32 %183, %184
  br i1 %185, label %186, label %188

186:                                              ; preds = %182
  %187 = load i32, i32* @SCSI_MLQUEUE_HOST_BUSY, align 4
  store i32 %187, i32* %5, align 4
  br label %188

188:                                              ; preds = %186, %182, %175
  %189 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %190 = load i32, i32* %5, align 4
  %191 = call i32 @scsi_queue_insert(%struct.scsi_cmnd* %189, i32 %190)
  %192 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0))
  %193 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %192)
  br label %194

194:                                              ; preds = %188, %172
  br label %195

195:                                              ; preds = %194, %96, %41, %27
  %196 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %197 = call i32 @SCSI_LOG_MLQUEUE(i32 3, i32 %196)
  %198 = load i32, i32* %5, align 4
  ret i32 %198
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @scsi_done(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_device_blocked(%struct.TYPE_4__*) #1

declare dso_local i32 @scsi_queue_insert(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @SCSI_LOG_MLQUEUE(i32, i32) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i32 @scsi_log_send(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @scsi_cmd_get_serial(%struct.Scsi_Host*, %struct.scsi_cmnd*) #1

declare dso_local i32 @trace_scsi_dispatch_cmd_start(%struct.scsi_cmnd*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @trace_scsi_dispatch_cmd_error(%struct.scsi_cmnd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
