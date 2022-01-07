; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_error_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_scsi_error.c_scsi_error_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i64, i64, i64, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.Scsi_Host*)* }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"scsi_eh_%d: sleeping\0A\00", align 1
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"scsi_eh_%d: waking up %d/%d/%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [34 x i8] c"Error handler scsi_eh_%d exiting\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @scsi_error_handler(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.Scsi_Host*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.Scsi_Host*
  store %struct.Scsi_Host* %5, %struct.Scsi_Host** %3, align 8
  br label %6

6:                                                ; preds = %71, %30, %1
  %7 = call i32 (...) @kthread_should_stop()
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  br i1 %9, label %10, label %74

10:                                               ; preds = %6
  %11 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %12 = call i32 @set_current_state(i32 %11)
  %13 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %14 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %10
  %18 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %19 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %30, label %22

22:                                               ; preds = %17, %10
  %23 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %24 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %27 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %22, %17
  %31 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %32 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %31, i32 0, i32 4
  %33 = load i32, i32* %32, align 8
  %34 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %33)
  %35 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %34)
  %36 = call i32 (...) @schedule()
  br label %6

37:                                               ; preds = %22
  %38 = load i32, i32* @TASK_RUNNING, align 4
  %39 = call i32 @__set_current_state(i32 %38)
  %40 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %41 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %44 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %47 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %50 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %42, i64 %45, i64 %48, i64 %51)
  %53 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %52)
  %54 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %55 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %54, i32 0, i32 5
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %57, align 8
  %59 = icmp ne i32 (%struct.Scsi_Host*)* %58, null
  br i1 %59, label %60, label %68

60:                                               ; preds = %37
  %61 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %62 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %61, i32 0, i32 5
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.Scsi_Host*)*, i32 (%struct.Scsi_Host*)** %64, align 8
  %66 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %67 = call i32 %65(%struct.Scsi_Host* %66)
  br label %71

68:                                               ; preds = %37
  %69 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %70 = call i32 @scsi_unjam_host(%struct.Scsi_Host* %69)
  br label %71

71:                                               ; preds = %68, %60
  %72 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %73 = call i32 @scsi_restart_operations(%struct.Scsi_Host* %72)
  br label %6

74:                                               ; preds = %6
  %75 = load i32, i32* @TASK_RUNNING, align 4
  %76 = call i32 @__set_current_state(i32 %75)
  %77 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %78 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 8
  %80 = call i32 (i8*, i32, ...) @printk(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %79)
  %81 = call i32 @SCSI_LOG_ERROR_RECOVERY(i32 1, i32 %80)
  %82 = load %struct.Scsi_Host*, %struct.Scsi_Host** %3, align 8
  %83 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %82, i32 0, i32 3
  store i32* null, i32** %83, align 8
  ret i32 0
}

declare dso_local i32 @kthread_should_stop(...) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @SCSI_LOG_ERROR_RECOVERY(i32, i32) #1

declare dso_local i32 @printk(i8*, i32, ...) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @scsi_unjam_host(%struct.Scsi_Host*) #1

declare dso_local i32 @scsi_restart_operations(%struct.Scsi_Host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
