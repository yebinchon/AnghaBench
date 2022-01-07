; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_program_hw.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclink.c_mgsl_program_hw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgsl_struct = type { i32, %struct.TYPE_8__, i64, i64, i64, i64, i64, %struct.TYPE_5__, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@MGSL_MODE_RAW = common dso_local global i64 0, align 8
@SICR_CTS = common dso_local global i64 0, align 8
@SICR_DSR = common dso_local global i64 0, align 8
@SICR_DCD = common dso_local global i64 0, align 8
@SICR_RI = common dso_local global i64 0, align 8
@IO_PIN = common dso_local global i32 0, align 4
@CREAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mgsl_struct*)* @mgsl_program_hw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgsl_program_hw(%struct.mgsl_struct* %0) #0 {
  %2 = alloca %struct.mgsl_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.mgsl_struct* %0, %struct.mgsl_struct** %2, align 8
  %4 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %5 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %4, i32 0, i32 0
  %6 = load i64, i64* %3, align 8
  %7 = call i32 @spin_lock_irqsave(i32* %5, i64 %6)
  %8 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %9 = call i32 @usc_stop_receiver(%struct.mgsl_struct* %8)
  %10 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %11 = call i32 @usc_stop_transmitter(%struct.mgsl_struct* %10)
  %12 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %13 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %12, i32 0, i32 8
  store i64 0, i64* %13, align 8
  %14 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %15 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %14, i32 0, i32 9
  store i64 0, i64* %15, align 8
  %16 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %17 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %16, i32 0, i32 10
  store i64 0, i64* %17, align 8
  %18 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %19 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %18, i32 0, i32 7
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %1
  %25 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %26 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %25, i32 0, i32 7
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MGSL_MODE_RAW, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %36, label %31

31:                                               ; preds = %24
  %32 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %33 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %32, i32 0, i32 2
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %31, %24, %1
  %37 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %38 = call i32 @usc_set_sync_mode(%struct.mgsl_struct* %37)
  br label %42

39:                                               ; preds = %31
  %40 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %41 = call i32 @usc_set_async_mode(%struct.mgsl_struct* %40)
  br label %42

42:                                               ; preds = %39, %36
  %43 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %44 = call i32 @usc_set_serial_signals(%struct.mgsl_struct* %43)
  %45 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %46 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %45, i32 0, i32 6
  store i64 0, i64* %46, align 8
  %47 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %48 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %47, i32 0, i32 5
  store i64 0, i64* %48, align 8
  %49 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %50 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %49, i32 0, i32 4
  store i64 0, i64* %50, align 8
  %51 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %52 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %51, i32 0, i32 3
  store i64 0, i64* %52, align 8
  %53 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %54 = load i64, i64* @SICR_CTS, align 8
  %55 = load i64, i64* @SICR_DSR, align 8
  %56 = add nsw i64 %54, %55
  %57 = load i64, i64* @SICR_DCD, align 8
  %58 = add nsw i64 %56, %57
  %59 = load i64, i64* @SICR_RI, align 8
  %60 = add nsw i64 %58, %59
  %61 = call i32 @usc_EnableStatusIrqs(%struct.mgsl_struct* %53, i64 %60)
  %62 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %63 = load i32, i32* @IO_PIN, align 4
  %64 = call i32 @usc_EnableInterrupts(%struct.mgsl_struct* %62, i32 %63)
  %65 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %66 = call i32 @usc_get_serial_signals(%struct.mgsl_struct* %65)
  %67 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %68 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %83, label %71

71:                                               ; preds = %42
  %72 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %73 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load %struct.TYPE_7__*, %struct.TYPE_7__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %76, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @CREAD, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71, %42
  %84 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %85 = call i32 @usc_start_receiver(%struct.mgsl_struct* %84)
  br label %86

86:                                               ; preds = %83, %71
  %87 = load %struct.mgsl_struct*, %struct.mgsl_struct** %2, align 8
  %88 = getelementptr inbounds %struct.mgsl_struct, %struct.mgsl_struct* %87, i32 0, i32 0
  %89 = load i64, i64* %3, align 8
  %90 = call i32 @spin_unlock_irqrestore(i32* %88, i64 %89)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @usc_stop_receiver(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_stop_transmitter(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_sync_mode(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_async_mode(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_set_serial_signals(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_EnableStatusIrqs(%struct.mgsl_struct*, i64) #1

declare dso_local i32 @usc_EnableInterrupts(%struct.mgsl_struct*, i32) #1

declare dso_local i32 @usc_get_serial_signals(%struct.mgsl_struct*) #1

declare dso_local i32 @usc_start_receiver(%struct.mgsl_struct*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
