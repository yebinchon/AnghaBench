; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_fd_mcs.c_fd_mcs_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }

@in_command = common dso_local global i32 0, align 4
@FAILED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@aborted = common dso_local global i32 0, align 4
@current_SC = common dso_local global %struct.TYPE_10__* null, align 8
@DID_ABORT = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*)* @fd_mcs_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fd_mcs_abort(%struct.TYPE_9__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.Scsi_Host*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  %6 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  store %struct.Scsi_Host* %10, %struct.Scsi_Host** %4, align 8
  %11 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %12 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i64, i64* %5, align 8
  %15 = call i32 @spin_lock_irqsave(i32 %13, i64 %14)
  %16 = load i32, i32* @in_command, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %25, label %18

18:                                               ; preds = %1
  %19 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %20 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i64, i64* %5, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32 %21, i64 %22)
  %24 = load i32, i32* @FAILED, align 4
  store i32 %24, i32* %2, align 4
  br label %50

25:                                               ; preds = %1
  %26 = call i32 @printk(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25
  %28 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %29 = call i32 @fd_mcs_make_bus_idle(%struct.Scsi_Host* %28)
  %30 = load i32, i32* @aborted, align 4
  %31 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_SC, align 8
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = or i32 %34, %30
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* @DID_ABORT, align 4
  %37 = shl i32 %36, 16
  %38 = load %struct.TYPE_10__*, %struct.TYPE_10__** @current_SC, align 8
  %39 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 4
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %41 = load i32, i32* @DID_ABORT, align 4
  %42 = shl i32 %41, 16
  %43 = call i32 @my_done(%struct.Scsi_Host* %40, i32 %42)
  %44 = load %struct.Scsi_Host*, %struct.Scsi_Host** %4, align 8
  %45 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @spin_unlock_irqrestore(i32 %46, i64 %47)
  %49 = load i32, i32* @SUCCESS, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %27, %18
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @fd_mcs_make_bus_idle(%struct.Scsi_Host*) #1

declare dso_local i32 @my_done(%struct.Scsi_Host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
