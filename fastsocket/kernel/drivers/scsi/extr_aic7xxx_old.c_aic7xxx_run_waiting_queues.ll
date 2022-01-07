; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_run_waiting_queues.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_run_waiting_queues.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aic7xxx_host = type { i64, i32, i64, i32, i32*, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32* }
%struct.aic7xxx_scb = type { %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.aic_dev_data* }
%struct.aic_dev_data = type { i32, i32, i32 }

@SCB_WAITINGQ = common dso_local global i32 0, align 4
@AHC_QUEUE_REGS = common dso_local global i32 0, align 4
@HNSCB_QOFF = common dso_local global i32 0, align 4
@KERNEL_QINPOS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aic7xxx_host*)* @aic7xxx_run_waiting_queues to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aic7xxx_run_waiting_queues(%struct.aic7xxx_host* %0) #0 {
  %2 = alloca %struct.aic7xxx_host*, align 8
  %3 = alloca %struct.aic7xxx_scb*, align 8
  %4 = alloca %struct.aic_dev_data*, align 8
  %5 = alloca i32, align 4
  store %struct.aic7xxx_host* %0, %struct.aic7xxx_host** %2, align 8
  %6 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %7 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %6, i32 0, i32 5
  %8 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  br label %131

12:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %86, %12
  %14 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %15 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %14, i32 0, i32 5
  %16 = call %struct.aic7xxx_scb* @scbq_remove_head(%struct.TYPE_8__* %15)
  store %struct.aic7xxx_scb* %16, %struct.aic7xxx_scb** %3, align 8
  %17 = icmp ne %struct.aic7xxx_scb* %16, null
  br i1 %17, label %18, label %87

18:                                               ; preds = %13
  %19 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %20 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %19, i32 0, i32 3
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load %struct.aic_dev_data*, %struct.aic_dev_data** %24, align 8
  store %struct.aic_dev_data* %25, %struct.aic_dev_data** %4, align 8
  %26 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %27 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %18
  %31 = load %struct.aic_dev_data*, %struct.aic_dev_data** %4, align 8
  %32 = getelementptr inbounds %struct.aic_dev_data, %struct.aic_dev_data* %31, i32 0, i32 0
  store i32 1, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %18
  %34 = load %struct.aic_dev_data*, %struct.aic_dev_data** %4, align 8
  %35 = getelementptr inbounds %struct.aic_dev_data, %struct.aic_dev_data* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.aic_dev_data*, %struct.aic_dev_data** %4, align 8
  %38 = getelementptr inbounds %struct.aic_dev_data, %struct.aic_dev_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp sge i32 %36, %39
  br i1 %40, label %41, label %46

41:                                               ; preds = %33
  %42 = load %struct.aic_dev_data*, %struct.aic_dev_data** %4, align 8
  %43 = getelementptr inbounds %struct.aic_dev_data, %struct.aic_dev_data* %42, i32 0, i32 2
  %44 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %45 = call i32 @scbq_insert_tail(i32* %43, %struct.aic7xxx_scb* %44)
  br label %86

46:                                               ; preds = %33
  %47 = load i32, i32* @SCB_WAITINGQ, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %50 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.aic_dev_data*, %struct.aic_dev_data** %4, align 8
  %54 = getelementptr inbounds %struct.aic_dev_data, %struct.aic_dev_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %58 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %58, align 8
  %61 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %62 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %69, label %65

65:                                               ; preds = %46
  %66 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %67 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %68 = call i32 @aic7xxx_busy_target(%struct.aic7xxx_host* %66, %struct.aic7xxx_scb* %67)
  br label %69

69:                                               ; preds = %65, %46
  %70 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %3, align 8
  %71 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %70, i32 0, i32 0
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %76 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %75, i32 0, i32 4
  %77 = load i32*, i32** %76, align 8
  %78 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %79 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 8
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %79, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr inbounds i32, i32* %77, i64 %82
  store i32 %74, i32* %83, align 4
  %84 = load i32, i32* %5, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %5, align 4
  br label %86

86:                                               ; preds = %69, %41
  br label %13

87:                                               ; preds = %13
  %88 = load i32, i32* %5, align 4
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %131

90:                                               ; preds = %87
  %91 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %92 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @AHC_QUEUE_REGS, align 4
  %95 = and i32 %93, %94
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %104

97:                                               ; preds = %90
  %98 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %99 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %100 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @HNSCB_QOFF, align 4
  %103 = call i32 @aic_outb(%struct.aic7xxx_host* %98, i32 %101, i32 %102)
  br label %116

104:                                              ; preds = %90
  %105 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %106 = call i32 @pause_sequencer(%struct.aic7xxx_host* %105)
  %107 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %108 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %109 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %108, i32 0, i32 3
  %110 = load i32, i32* %109, align 8
  %111 = load i32, i32* @KERNEL_QINPOS, align 4
  %112 = call i32 @aic_outb(%struct.aic7xxx_host* %107, i32 %110, i32 %111)
  %113 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %114 = load i32, i32* @FALSE, align 4
  %115 = call i32 @unpause_sequencer(%struct.aic7xxx_host* %113, i32 %114)
  br label %116

116:                                              ; preds = %104, %97
  %117 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %118 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %121 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %120, i32 0, i32 2
  %122 = load i64, i64* %121, align 8
  %123 = icmp sgt i64 %119, %122
  br i1 %123, label %124, label %130

124:                                              ; preds = %116
  %125 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %126 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %125, i32 0, i32 0
  %127 = load i64, i64* %126, align 8
  %128 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %2, align 8
  %129 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %128, i32 0, i32 2
  store i64 %127, i64* %129, align 8
  br label %130

130:                                              ; preds = %124, %116
  br label %131

131:                                              ; preds = %11, %130, %87
  ret void
}

declare dso_local %struct.aic7xxx_scb* @scbq_remove_head(%struct.TYPE_8__*) #1

declare dso_local i32 @scbq_insert_tail(i32*, %struct.aic7xxx_scb*) #1

declare dso_local i32 @aic7xxx_busy_target(%struct.aic7xxx_host*, %struct.aic7xxx_scb*) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @pause_sequencer(%struct.aic7xxx_host*) #1

declare dso_local i32 @unpause_sequencer(%struct.aic7xxx_host*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
