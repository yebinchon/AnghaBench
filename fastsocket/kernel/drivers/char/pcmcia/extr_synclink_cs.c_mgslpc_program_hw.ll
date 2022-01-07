; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_program_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_mgslpc_program_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { i32, i64, i64, i64, i64, i64, %struct.TYPE_14__, i64, i64, i64 }
%struct.TYPE_14__ = type { i64 }
%struct.tty_struct = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32 }

@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@CHB = common dso_local global i32 0, align 4
@IRQ_DCD = common dso_local global i32 0, align 4
@IRQ_CTS = common dso_local global i32 0, align 4
@PVR_DSR = common dso_local global i64 0, align 8
@PVR_RI = common dso_local global i8 0, align 1
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.tty_struct*)* @mgslpc_program_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgslpc_program_hw(%struct.TYPE_16__* %0, %struct.tty_struct* %1) #0 {
  %3 = alloca %struct.TYPE_16__*, align 8
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca i64, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %3, align 8
  store %struct.tty_struct* %1, %struct.tty_struct** %4, align 8
  %6 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %11 = call i32 @rx_stop(%struct.TYPE_16__* %10)
  %12 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %13 = call i32 @tx_stop(%struct.TYPE_16__* %12)
  %14 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %15 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %14, i32 0, i32 7
  store i64 0, i64* %15, align 8
  %16 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %16, i32 0, i32 8
  store i64 0, i64* %17, align 8
  %18 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %19 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %18, i32 0, i32 9
  store i64 0, i64* %19, align 8
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %20, i32 0, i32 6
  %22 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %31, label %26

26:                                               ; preds = %2
  %27 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %28 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %26, %2
  %32 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %33 = call i32 @hdlc_mode(%struct.TYPE_16__* %32)
  br label %37

34:                                               ; preds = %26
  %35 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %36 = call i32 @async_mode(%struct.TYPE_16__* %35)
  br label %37

37:                                               ; preds = %34, %31
  %38 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %39 = call i32 @set_signals(%struct.TYPE_16__* %38)
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 5
  store i64 0, i64* %41, align 8
  %42 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %43 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %45 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %44, i32 0, i32 3
  store i64 0, i64* %45, align 8
  %46 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %47 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %46, i32 0, i32 2
  store i64 0, i64* %47, align 8
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %49 = load i32, i32* @CHB, align 4
  %50 = load i32, i32* @IRQ_DCD, align 4
  %51 = load i32, i32* @IRQ_CTS, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @irq_enable(%struct.TYPE_16__* %48, i32 %49, i32 %52)
  %54 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %55 = load i64, i64* @PVR_DSR, align 8
  %56 = trunc i64 %55 to i8
  %57 = zext i8 %56 to i32
  %58 = load i8, i8* @PVR_RI, align 1
  %59 = zext i8 %58 to i32
  %60 = or i32 %57, %59
  %61 = trunc i32 %60 to i8
  %62 = call i32 @port_irq_enable(%struct.TYPE_16__* %54, i8 zeroext %61)
  %63 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %64 = call i32 @get_signals(%struct.TYPE_16__* %63)
  %65 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %66 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %81, label %69

69:                                               ; preds = %37
  %70 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %71 = icmp ne %struct.tty_struct* %70, null
  br i1 %71, label %72, label %84

72:                                               ; preds = %69
  %73 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %74 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %73, i32 0, i32 0
  %75 = load %struct.TYPE_15__*, %struct.TYPE_15__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @CREAD, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %84

81:                                               ; preds = %72, %37
  %82 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %83 = call i32 @rx_start(%struct.TYPE_16__* %82)
  br label %84

84:                                               ; preds = %81, %72, %69
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i64, i64* %5, align 8
  %88 = call i32 @spin_unlock_irqrestore(i32* %86, i64 %87)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @rx_stop(%struct.TYPE_16__*) #1

declare dso_local i32 @tx_stop(%struct.TYPE_16__*) #1

declare dso_local i32 @hdlc_mode(%struct.TYPE_16__*) #1

declare dso_local i32 @async_mode(%struct.TYPE_16__*) #1

declare dso_local i32 @set_signals(%struct.TYPE_16__*) #1

declare dso_local i32 @irq_enable(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @port_irq_enable(%struct.TYPE_16__*, i8 zeroext) #1

declare dso_local i32 @get_signals(%struct.TYPE_16__*) #1

declare dso_local i32 @rx_start(%struct.TYPE_16__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
