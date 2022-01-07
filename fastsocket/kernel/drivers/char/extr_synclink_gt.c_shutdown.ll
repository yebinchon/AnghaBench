; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink_gt.c_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { %struct.TYPE_6__, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@ASYNC_INITIALIZED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s shutdown\0A\00", align 1
@IRQ_ALL = common dso_local global i32 0, align 4
@IRQ_MASTER = common dso_local global i32 0, align 4
@HUPCL = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @shutdown(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i64, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %107

12:                                               ; preds = %1
  %13 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %14 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %13, i32 0, i32 9
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to i8*
  %18 = call i32 @DBGINFO(i8* %17)
  %19 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %20 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %19, i32 0, i32 8
  %21 = call i32 @wake_up_interruptible(i32* %20)
  %22 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %23 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %22, i32 0, i32 7
  %24 = call i32 @wake_up_interruptible(i32* %23)
  %25 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %26 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %25, i32 0, i32 6
  %27 = call i32 @del_timer_sync(i32* %26)
  %28 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %29 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %28, i32 0, i32 5
  %30 = call i32 @del_timer_sync(i32* %29)
  %31 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %32 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %31, i32 0, i32 4
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @kfree(i32* %33)
  %35 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 4
  store i32* null, i32** %36, align 8
  %37 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 1
  %39 = load i64, i64* %3, align 8
  %40 = call i32 @spin_lock_irqsave(i32* %38, i64 %39)
  %41 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %42 = call i32 @tx_stop(%struct.slgt_info* %41)
  %43 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %44 = call i32 @rx_stop(%struct.slgt_info* %43)
  %45 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %46 = load i32, i32* @IRQ_ALL, align 4
  %47 = load i32, i32* @IRQ_MASTER, align 4
  %48 = or i32 %46, %47
  %49 = call i32 @slgt_irq_off(%struct.slgt_info* %45, i32 %48)
  %50 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %51 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load %struct.TYPE_5__*, %struct.TYPE_5__** %52, align 8
  %54 = icmp ne %struct.TYPE_5__* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %12
  %56 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_4__*, %struct.TYPE_4__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @HUPCL, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %78

67:                                               ; preds = %55, %12
  %68 = load i32, i32* @SerialSignal_DTR, align 4
  %69 = load i32, i32* @SerialSignal_RTS, align 4
  %70 = add nsw i32 %68, %69
  %71 = xor i32 %70, -1
  %72 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %73 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %71
  store i32 %75, i32* %73, align 8
  %76 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %77 = call i32 @set_signals(%struct.slgt_info* %76)
  br label %78

78:                                               ; preds = %67, %55
  %79 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %80 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %79, i32 0, i32 2
  %81 = call i32 @flush_cond_wait(i32* %80)
  %82 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %83 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %82, i32 0, i32 1
  %84 = load i64, i64* %3, align 8
  %85 = call i32 @spin_unlock_irqrestore(i32* %83, i64 %84)
  %86 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %87 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %88, align 8
  %90 = icmp ne %struct.TYPE_5__* %89, null
  br i1 %90, label %91, label %99

91:                                               ; preds = %78
  %92 = load i32, i32* @TTY_IO_ERROR, align 4
  %93 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %94 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  %98 = call i32 @set_bit(i32 %92, i32* %97)
  br label %99

99:                                               ; preds = %91, %78
  %100 = load i32, i32* @ASYNC_INITIALIZED, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %103 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = and i32 %105, %101
  store i32 %106, i32* %104, align 8
  br label %107

107:                                              ; preds = %99, %11
  ret void
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @kfree(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @tx_stop(%struct.slgt_info*) #1

declare dso_local i32 @rx_stop(%struct.slgt_info*) #1

declare dso_local i32 @slgt_irq_off(%struct.slgt_info*, i32) #1

declare dso_local i32 @set_signals(%struct.slgt_info*) #1

declare dso_local i32 @flush_cond_wait(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
