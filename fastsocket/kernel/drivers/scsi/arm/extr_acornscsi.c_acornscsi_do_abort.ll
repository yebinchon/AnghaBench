; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_do_abort.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/arm/extr_acornscsi.c_acornscsi_do_abort.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.scsi_cmnd*, %struct.scsi_cmnd*, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.scsi_cmnd = type { i32 }

@res_not_running = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"on issue queue \00", align 1
@res_success = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"on disconnected queue \00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"executing \00", align 1
@SBIC_CMND = common dso_local global i32 0, align 4
@CMND_DISCONNECT = common dso_local global i32 0, align 4
@res_success_clear = common dso_local global i32 0, align 4
@res_snooze = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"waiting for execution \00", align 1
@.str.4 = private unnamed_addr constant [9 x i8] c"unknown \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_9__*, %struct.scsi_cmnd*)* @acornscsi_do_abort to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @acornscsi_do_abort(%struct.TYPE_9__* %0, %struct.scsi_cmnd* %1) #0 {
  %3 = alloca %struct.TYPE_9__*, align 8
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %3, align 8
  store %struct.scsi_cmnd* %1, %struct.scsi_cmnd** %4, align 8
  %7 = load i32, i32* @res_not_running, align 4
  store i32 %7, i32* %5, align 4
  %8 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %8, i32 0, i32 3
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %12 = call i64 @queue_remove_cmd(i32* %10, %struct.scsi_cmnd* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = call i32 @printk(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @res_success, align 4
  store i32 %16, i32* %5, align 4
  br label %91

17:                                               ; preds = %2
  %18 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %22 = call i64 @queue_remove_cmd(i32* %20, %struct.scsi_cmnd* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %17
  %25 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %26 = load i32, i32* @res_success, align 4
  store i32 %26, i32* %5, align 4
  br label %90

27:                                               ; preds = %17
  %28 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 1
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %29, align 8
  %31 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %32 = icmp eq %struct.scsi_cmnd* %30, %31
  br i1 %32, label %33, label %75

33:                                               ; preds = %27
  %34 = call i32 @printk(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0))
  %35 = load i64, i64* %6, align 8
  %36 = call i32 @local_irq_save(i64 %35)
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %63 [
    i32 128, label %41
    i32 129, label %55
  ]

41:                                               ; preds = %33
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %41
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 2
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %52, align 8
  %53 = load i32, i32* @res_success, align 4
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %47, %41
  br label %72

55:                                               ; preds = %33
  %56 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %57 = load i32, i32* @SBIC_CMND, align 4
  %58 = load i32, i32* @CMND_DISCONNECT, align 4
  %59 = call i32 @sbic_arm_write(%struct.TYPE_9__* %56, i32 %57, i32 %58)
  %60 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 1
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %61, align 8
  %62 = load i32, i32* @res_success_clear, align 4
  store i32 %62, i32* %5, align 4
  br label %72

63:                                               ; preds = %33
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %66, align 8
  %68 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @acornscsi_abortcmd(%struct.TYPE_9__* %64, i32 %69)
  %71 = load i32, i32* @res_snooze, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %63, %55, %54
  %73 = load i64, i64* %6, align 8
  %74 = call i32 @local_irq_restore(i64 %73)
  br label %89

75:                                               ; preds = %27
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  %78 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %77, align 8
  %79 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %80 = icmp eq %struct.scsi_cmnd* %78, %79
  br i1 %80, label %81, label %86

81:                                               ; preds = %75
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %3, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 0
  store %struct.scsi_cmnd* null, %struct.scsi_cmnd** %83, align 8
  %84 = call i32 @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %85 = load i32, i32* @res_success_clear, align 4
  store i32 %85, i32* %5, align 4
  br label %88

86:                                               ; preds = %75
  %87 = call i32 @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.4, i64 0, i64 0))
  br label %88

88:                                               ; preds = %86, %81
  br label %89

89:                                               ; preds = %88, %72
  br label %90

90:                                               ; preds = %89, %24
  br label %91

91:                                               ; preds = %90, %14
  %92 = load i32, i32* %5, align 4
  ret i32 %92
}

declare dso_local i64 @queue_remove_cmd(i32*, %struct.scsi_cmnd*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @sbic_arm_write(%struct.TYPE_9__*, i32, i32) #1

declare dso_local i32 @acornscsi_abortcmd(%struct.TYPE_9__*, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
