; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_aic7xxx_old.c_aic7xxx_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64 }
%struct.aic7xxx_scb = type { %struct.scsi_cmnd* }
%struct.aic7xxx_host = type { i32, i32, %struct.TYPE_8__*, i64, i64, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_6__ = type { i64, %struct.aic7xxx_scb** }
%struct.aic_dev_data = type { i32 }

@aic7xxx_panic_on_abort = common dso_local global i64 0, align 8
@INTSTAT = common dso_local global i32 0, align 4
@INT_PEND = common dso_local global i32 0, align 4
@AHC_IN_ISR = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@SUCCESS = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@AHC_TWIN = common dso_local global i32 0, align 4
@SIMODE1 = common dso_local global i32 0, align 4
@ENREQINIT = common dso_local global i32 0, align 4
@ENBUSFREE = common dso_local global i32 0, align 4
@AHC_HANDLING_REQINITS = common dso_local global i32 0, align 4
@MSG_TYPE_NONE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*)* @aic7xxx_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @aic7xxx_reset(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_cmnd*, align 8
  %4 = alloca %struct.aic7xxx_scb*, align 8
  %5 = alloca %struct.aic7xxx_host*, align 8
  %6 = alloca %struct.aic_dev_data*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %3, align 8
  %7 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %8 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %7, i32 0, i32 0
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.aic7xxx_host*
  store %struct.aic7xxx_host* %14, %struct.aic7xxx_host** %5, align 8
  %15 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %16 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %15, i32 0, i32 2
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @spin_lock_irq(i32 %19)
  %21 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %22 = call %struct.aic_dev_data* @AIC_DEV(%struct.scsi_cmnd* %21)
  store %struct.aic_dev_data* %22, %struct.aic_dev_data** %6, align 8
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %24 = call i64 @aic7xxx_position(%struct.scsi_cmnd* %23)
  %25 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %26 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %25, i32 0, i32 6
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ult i64 %24, %29
  br i1 %30, label %31, label %48

31:                                               ; preds = %1
  %32 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %33 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %32, i32 0, i32 6
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  %36 = load %struct.aic7xxx_scb**, %struct.aic7xxx_scb*** %35, align 8
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %38 = call i64 @aic7xxx_position(%struct.scsi_cmnd* %37)
  %39 = getelementptr inbounds %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %36, i64 %38
  %40 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %39, align 8
  store %struct.aic7xxx_scb* %40, %struct.aic7xxx_scb** %4, align 8
  %41 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %42 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %41, i32 0, i32 0
  %43 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %42, align 8
  %44 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %45 = icmp ne %struct.scsi_cmnd* %43, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %31
  store %struct.aic7xxx_scb* null, %struct.aic7xxx_scb** %4, align 8
  br label %47

47:                                               ; preds = %46, %31
  br label %49

48:                                               ; preds = %1
  store %struct.aic7xxx_scb* null, %struct.aic7xxx_scb** %4, align 8
  br label %49

49:                                               ; preds = %48, %47
  %50 = load i64, i64* @aic7xxx_panic_on_abort, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %49
  %53 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %55 = call i32 @aic7xxx_panic_abort(%struct.aic7xxx_host* %53, %struct.scsi_cmnd* %54)
  br label %56

56:                                               ; preds = %52, %49
  %57 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %58 = call i32 @pause_sequencer(%struct.aic7xxx_host* %57)
  br label %59

59:                                               ; preds = %76, %56
  %60 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %61 = load i32, i32* @INTSTAT, align 4
  %62 = call i32 @aic_inb(%struct.aic7xxx_host* %60, i32 %61)
  %63 = load i32, i32* @INT_PEND, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %74

66:                                               ; preds = %59
  %67 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %68 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @AHC_IN_ISR, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  %73 = xor i1 %72, true
  br label %74

74:                                               ; preds = %66, %59
  %75 = phi i1 [ false, %59 ], [ %73, %66 ]
  br i1 %75, label %76, label %81

76:                                               ; preds = %74
  %77 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %78 = call i32 @aic7xxx_isr(%struct.aic7xxx_host* %77)
  %79 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %80 = call i32 @pause_sequencer(%struct.aic7xxx_host* %79)
  br label %59

81:                                               ; preds = %74
  %82 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %83 = call i32 @aic7xxx_done_cmds_complete(%struct.aic7xxx_host* %82)
  %84 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %85 = icmp ne %struct.aic7xxx_scb* %84, null
  br i1 %85, label %86, label %102

86:                                               ; preds = %81
  %87 = load %struct.aic7xxx_scb*, %struct.aic7xxx_scb** %4, align 8
  %88 = getelementptr inbounds %struct.aic7xxx_scb, %struct.aic7xxx_scb* %87, i32 0, i32 0
  %89 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %88, align 8
  %90 = icmp eq %struct.scsi_cmnd* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %86
  %92 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %93 = load i32, i32* @FALSE, align 4
  %94 = call i32 @unpause_sequencer(%struct.aic7xxx_host* %92, i32 %93)
  %95 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %96 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %95, i32 0, i32 2
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @spin_unlock_irq(i32 %99)
  %101 = load i32, i32* @SUCCESS, align 4
  store i32 %101, i32* %2, align 4
  br label %170

102:                                              ; preds = %86, %81
  %103 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %104 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %105 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %104, i32 0, i32 0
  %106 = load %struct.TYPE_7__*, %struct.TYPE_7__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load i32, i32* @TRUE, align 4
  %110 = call i32 @aic7xxx_reset_channel(%struct.aic7xxx_host* %103, i32 %108, i32 %109)
  %111 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %112 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* @AHC_TWIN, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %129

117:                                              ; preds = %102
  %118 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %119 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %3, align 8
  %120 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %119, i32 0, i32 0
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %120, align 8
  %122 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = xor i32 %123, 1
  %125 = load i32, i32* @TRUE, align 4
  %126 = call i32 @aic7xxx_reset_channel(%struct.aic7xxx_host* %118, i32 %124, i32 %125)
  %127 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %128 = call i32 @restart_sequencer(%struct.aic7xxx_host* %127)
  br label %129

129:                                              ; preds = %117, %102
  %130 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %131 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %132 = load i32, i32* @SIMODE1, align 4
  %133 = call i32 @aic_inb(%struct.aic7xxx_host* %131, i32 %132)
  %134 = load i32, i32* @ENREQINIT, align 4
  %135 = load i32, i32* @ENBUSFREE, align 4
  %136 = or i32 %134, %135
  %137 = xor i32 %136, -1
  %138 = and i32 %133, %137
  %139 = load i32, i32* @SIMODE1, align 4
  %140 = call i32 @aic_outb(%struct.aic7xxx_host* %130, i32 %138, i32 %139)
  %141 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %142 = call i32 @aic7xxx_clear_intstat(%struct.aic7xxx_host* %141)
  %143 = load i32, i32* @AHC_HANDLING_REQINITS, align 4
  %144 = xor i32 %143, -1
  %145 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %146 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = and i32 %147, %144
  store i32 %148, i32* %146, align 8
  %149 = load i32, i32* @MSG_TYPE_NONE, align 4
  %150 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %151 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %150, i32 0, i32 5
  store i32 %149, i32* %151, align 8
  %152 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %153 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %152, i32 0, i32 4
  store i64 0, i64* %153, align 8
  %154 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %155 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %154, i32 0, i32 3
  store i64 0, i64* %155, align 8
  %156 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %157 = load i32, i32* @TRUE, align 4
  %158 = call i32 @aic7xxx_run_done_queue(%struct.aic7xxx_host* %156, i32 %157)
  %159 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %160 = load i32, i32* @FALSE, align 4
  %161 = call i32 @unpause_sequencer(%struct.aic7xxx_host* %159, i32 %160)
  %162 = load %struct.aic7xxx_host*, %struct.aic7xxx_host** %5, align 8
  %163 = getelementptr inbounds %struct.aic7xxx_host, %struct.aic7xxx_host* %162, i32 0, i32 2
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = call i32 @spin_unlock_irq(i32 %166)
  %168 = call i32 @ssleep(i32 2)
  %169 = load i32, i32* @SUCCESS, align 4
  store i32 %169, i32* %2, align 4
  br label %170

170:                                              ; preds = %129, %91
  %171 = load i32, i32* %2, align 4
  ret i32 %171
}

declare dso_local i32 @spin_lock_irq(i32) #1

declare dso_local %struct.aic_dev_data* @AIC_DEV(%struct.scsi_cmnd*) #1

declare dso_local i64 @aic7xxx_position(%struct.scsi_cmnd*) #1

declare dso_local i32 @aic7xxx_panic_abort(%struct.aic7xxx_host*, %struct.scsi_cmnd*) #1

declare dso_local i32 @pause_sequencer(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic_inb(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @aic7xxx_isr(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic7xxx_done_cmds_complete(%struct.aic7xxx_host*) #1

declare dso_local i32 @unpause_sequencer(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @spin_unlock_irq(i32) #1

declare dso_local i32 @aic7xxx_reset_channel(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @restart_sequencer(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic_outb(%struct.aic7xxx_host*, i32, i32) #1

declare dso_local i32 @aic7xxx_clear_intstat(%struct.aic7xxx_host*) #1

declare dso_local i32 @aic7xxx_run_done_queue(%struct.aic7xxx_host*, i32) #1

declare dso_local i32 @ssleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
