; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_irq.c_sdio_irq_thread.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mmc/core/extr_sdio_irq.c_sdio_irq_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sched_param = type { i32 }
%struct.mmc_host = type { i32, %struct.TYPE_2__*, i32, i32 }
%struct.TYPE_2__ = type { i32 (%struct.mmc_host*, i32)* }

@__const.sdio_irq_thread.param = private unnamed_addr constant %struct.sched_param { i32 1 }, align 4
@current = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@MMC_CAP_SDIO_IRQ = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [52 x i8] c"%s: IRQ thread started (poll period = %lu jiffies)\0A\00", align 1
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@HZ = common dso_local global i64 0, align 8
@TASK_RUNNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"%s: IRQ thread exiting with code %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @sdio_irq_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sdio_irq_thread(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mmc_host*, align 8
  %4 = alloca %struct.sched_param, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %8 = load i8*, i8** %2, align 8
  %9 = bitcast i8* %8 to %struct.mmc_host*
  store %struct.mmc_host* %9, %struct.mmc_host** %3, align 8
  %10 = bitcast %struct.sched_param* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %10, i8* align 4 bitcast (%struct.sched_param* @__const.sdio_irq_thread.param to i8*), i64 4, i1 false)
  %11 = load i32, i32* @current, align 4
  %12 = load i32, i32* @SCHED_FIFO, align 4
  %13 = call i32 @sched_setscheduler(i32 %11, i32 %12, %struct.sched_param* %4)
  %14 = call i64 @msecs_to_jiffies(i32 10)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %16 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %1
  %22 = load i64, i64* @MAX_SCHEDULE_TIMEOUT, align 8
  br label %25

23:                                               ; preds = %1
  %24 = load i64, i64* %6, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %5, align 8
  %27 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %28 = call i32 @mmc_hostname(%struct.mmc_host* %27)
  %29 = load i64, i64* %5, align 8
  %30 = trunc i64 %29 to i32
  %31 = call i32 @pr_debug(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %30)
  br label %32

32:                                               ; preds = %109, %25
  %33 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %34 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %35 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %34, i32 0, i32 3
  %36 = call i32 @__mmc_claim_host(%struct.mmc_host* %33, i32* %35)
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %113

40:                                               ; preds = %32
  %41 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %42 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @process_sdio_pending_irqs(i32 %43)
  store i32 %44, i32* %7, align 4
  %45 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %46 = call i32 @mmc_release_host(%struct.mmc_host* %45)
  %47 = load i32, i32* %7, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %60

49:                                               ; preds = %40
  %50 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %51 = call i32 @set_current_state(i32 %50)
  %52 = call i32 (...) @kthread_should_stop()
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %57, label %54

54:                                               ; preds = %49
  %55 = load i64, i64* @HZ, align 8
  %56 = call i32 @schedule_timeout(i64 %55)
  br label %57

57:                                               ; preds = %54, %49
  %58 = load i32, i32* @TASK_RUNNING, align 4
  %59 = call i32 @set_current_state(i32 %58)
  br label %60

60:                                               ; preds = %57, %40
  %61 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %62 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %83, label %67

67:                                               ; preds = %60
  %68 = load i32, i32* %7, align 4
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i64, i64* %5, align 8
  %72 = udiv i64 %71, 2
  store i64 %72, i64* %5, align 8
  br label %82

73:                                               ; preds = %67
  %74 = load i64, i64* %5, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %5, align 8
  %76 = load i64, i64* %5, align 8
  %77 = load i64, i64* %6, align 8
  %78 = icmp ugt i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %73
  %80 = load i64, i64* %6, align 8
  store i64 %80, i64* %5, align 8
  br label %81

81:                                               ; preds = %79, %73
  br label %82

82:                                               ; preds = %81, %70
  br label %83

83:                                               ; preds = %82, %60
  %84 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %85 = call i32 @set_current_state(i32 %84)
  %86 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %87 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %100

92:                                               ; preds = %83
  %93 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %94 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %93, i32 0, i32 1
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i32 0, i32 0
  %97 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %96, align 8
  %98 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %99 = call i32 %97(%struct.mmc_host* %98, i32 1)
  br label %100

100:                                              ; preds = %92, %83
  %101 = call i32 (...) @kthread_should_stop()
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %100
  %104 = load i64, i64* %5, align 8
  %105 = call i32 @schedule_timeout(i64 %104)
  br label %106

106:                                              ; preds = %103, %100
  %107 = load i32, i32* @TASK_RUNNING, align 4
  %108 = call i32 @set_current_state(i32 %107)
  br label %109

109:                                              ; preds = %106
  %110 = call i32 (...) @kthread_should_stop()
  %111 = icmp ne i32 %110, 0
  %112 = xor i1 %111, true
  br i1 %112, label %32, label %113

113:                                              ; preds = %109, %39
  %114 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %115 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = load i32, i32* @MMC_CAP_SDIO_IRQ, align 4
  %118 = and i32 %116, %117
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %128

120:                                              ; preds = %113
  %121 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %122 = getelementptr inbounds %struct.mmc_host, %struct.mmc_host* %121, i32 0, i32 1
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 0
  %125 = load i32 (%struct.mmc_host*, i32)*, i32 (%struct.mmc_host*, i32)** %124, align 8
  %126 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %127 = call i32 %125(%struct.mmc_host* %126, i32 0)
  br label %128

128:                                              ; preds = %120, %113
  %129 = load %struct.mmc_host*, %struct.mmc_host** %3, align 8
  %130 = call i32 @mmc_hostname(%struct.mmc_host* %129)
  %131 = load i32, i32* %7, align 4
  %132 = call i32 @pr_debug(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %130, i32 %131)
  %133 = load i32, i32* %7, align 4
  ret i32 %133
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i64 @msecs_to_jiffies(i32) #2

declare dso_local i32 @pr_debug(i8*, i32, i32) #2

declare dso_local i32 @mmc_hostname(%struct.mmc_host*) #2

declare dso_local i32 @__mmc_claim_host(%struct.mmc_host*, i32*) #2

declare dso_local i32 @process_sdio_pending_irqs(i32) #2

declare dso_local i32 @mmc_release_host(%struct.mmc_host*) #2

declare dso_local i32 @set_current_state(i32) #2

declare dso_local i32 @kthread_should_stop(...) #2

declare dso_local i32 @schedule_timeout(i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
