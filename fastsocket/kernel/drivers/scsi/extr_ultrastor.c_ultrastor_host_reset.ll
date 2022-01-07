; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ultrastor.c_ultrastor_host_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_ultrastor.c_ultrastor_host_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i64, i64, %struct.TYPE_7__*, i64, i64, i64, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_8__*, i32 (%struct.TYPE_8__*)* }
%struct.TYPE_8__ = type { i32 }
%struct.scsi_cmnd = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@config = common dso_local global %struct.TYPE_9__ zeroinitializer, align 8
@FAILED = common dso_local global i32 0, align 4
@ULTRASTOR_MAX_CMDS = common dso_local global i32 0, align 4
@DID_RESET = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @ultrastor_host_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ultrastor_host_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  store %struct.Scsi_Host* %11, %struct.Scsi_Host** %6, align 8
  %12 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 6), align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* @FAILED, align 4
  store i32 %15, i32* %2, align 4
  br label %108

16:                                               ; preds = %1
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i64, i64* %4, align 8
  %21 = call i32 @spin_lock_irqsave(i32 %19, i64 %20)
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 7), align 8
  %23 = call i64 @LCL_DOORBELL_INTR(i32 %22)
  %24 = call i32 @outb(i32 192, i64 %23)
  %25 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 6), align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %16
  %28 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 5), align 8
  %29 = sub nsw i64 %28, 1
  %30 = call i32 @outb(i32 0, i64 %29)
  %31 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 4), align 8
  %32 = sub nsw i64 %31, 1
  %33 = call i32 @outb(i32 0, i64 %32)
  br label %34

34:                                               ; preds = %27, %16
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %95, %34
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @ULTRASTOR_MAX_CMDS, align 4
  %38 = icmp slt i32 %36, %37
  br i1 %38, label %39, label %98

39:                                               ; preds = %35
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0), align 8
  %41 = load i32, i32* %5, align 4
  %42 = shl i32 1, %41
  %43 = and i32 %40, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %89, label %45

45:                                               ; preds = %39
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 1
  %51 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %50, align 8
  %52 = icmp ne i32 (%struct.TYPE_8__*)* %51, null
  br i1 %52, label %53, label %89

53:                                               ; preds = %45
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %55 = load i32, i32* %5, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = icmp ne %struct.TYPE_8__* %59, null
  br i1 %60, label %61, label %89

61:                                               ; preds = %53
  %62 = load i32, i32* @DID_RESET, align 4
  %63 = shl i32 %62, 16
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %65 = load i32, i32* %5, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 0
  store i32 %63, i32* %70, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 1
  %76 = load i32 (%struct.TYPE_8__*)*, i32 (%struct.TYPE_8__*)** %75, align 8
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %78 = load i32, i32* %5, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 0
  %82 = load %struct.TYPE_8__*, %struct.TYPE_8__** %81, align 8
  %83 = call i32 %76(%struct.TYPE_8__* %82)
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %85 = load i32, i32* %5, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 1
  store i32 (%struct.TYPE_8__*)* null, i32 (%struct.TYPE_8__*)** %88, align 8
  br label %89

89:                                               ; preds = %61, %53, %45, %39
  %90 = load %struct.TYPE_7__*, %struct.TYPE_7__** getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 3), align 8
  %91 = load i32, i32* %5, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %94, align 8
  br label %95

95:                                               ; preds = %89
  %96 = load i32, i32* %5, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %5, align 4
  br label %35

98:                                               ; preds = %35
  %99 = load i64, i64* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 2), align 8
  %100 = inttoptr i64 %99 to i8*
  %101 = call i32 @memset(i8* %100, i32 0, i32 8)
  store i32 -1, i32* getelementptr inbounds (%struct.TYPE_9__, %struct.TYPE_9__* @config, i32 0, i32 0), align 8
  %102 = load %struct.Scsi_Host*, %struct.Scsi_Host** %6, align 8
  %103 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i64, i64* %4, align 8
  %106 = call i32 @spin_unlock_irqrestore(i32 %104, i64 %105)
  %107 = load i32, i32* @SUCCESS, align 4
  store i32 %107, i32* %2, align 4
  br label %108

108:                                              ; preds = %98, %14
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i64 @LCL_DOORBELL_INTR(i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
