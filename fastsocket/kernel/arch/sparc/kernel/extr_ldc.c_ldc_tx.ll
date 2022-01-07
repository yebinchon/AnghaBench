; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_ldc.c_ldc_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ldc_channel = type { i64, i32, i32, %struct.TYPE_2__, i32, i32, i32 }
%struct.TYPE_2__ = type { i64 }

@TX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [56 x i8] c" TX state[0x%02lx:0x%02lx] head[0x%04lx] tail[0x%04lx]\0A\00", align 1
@LDC_MODE_RAW = common dso_local global i64 0, align 8
@LDC_CHANNEL_UP = common dso_local global i64 0, align 8
@LDC_HS_COMPLETE = common dso_local global i32 0, align 4
@LDC_STATE_CONNECTED = common dso_local global i32 0, align 4
@LDC_EVENT_UP = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ldc_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ldc_tx(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ldc_channel*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %10 = load i8*, i8** %4, align 8
  %11 = bitcast i8* %10 to %struct.ldc_channel*
  store %struct.ldc_channel* %11, %struct.ldc_channel** %5, align 8
  store i32 0, i32* %9, align 4
  %12 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %13 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %12, i32 0, i32 1
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @spin_lock_irqsave(i32* %13, i64 %14)
  %16 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %17 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %8, align 8
  %19 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %20 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %22, i32 0, i32 5
  %24 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %25 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %24, i32 0, i32 4
  %26 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %26, i32 0, i32 0
  %28 = call i64 @sun4v_ldc_tx_get_state(i32 %21, i32* %23, i32* %25, i64* %27)
  store i64 %28, i64* %7, align 8
  %29 = load i32, i32* @TX, align 4
  %30 = load i64, i64* %8, align 8
  %31 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %35 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %38 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %37, i32 0, i32 4
  %39 = load i32, i32* %38, align 8
  %40 = call i32 @ldcdbg(i32 %29, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str, i64 0, i64 0), i64 %30, i64 %33, i32 %36, i32 %39)
  %41 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %42 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %41, i32 0, i32 3
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LDC_MODE_RAW, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %63

47:                                               ; preds = %2
  %48 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %49 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @LDC_CHANNEL_UP, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %63

53:                                               ; preds = %47
  %54 = load i32, i32* @LDC_HS_COMPLETE, align 4
  %55 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %56 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 4
  %57 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %58 = load i32, i32* @LDC_STATE_CONNECTED, align 4
  %59 = call i32 @ldc_set_state(%struct.ldc_channel* %57, i32 %58)
  %60 = load i32, i32* @LDC_EVENT_UP, align 4
  %61 = load i32, i32* %9, align 4
  %62 = or i32 %61, %60
  store i32 %62, i32* %9, align 4
  br label %63

63:                                               ; preds = %53, %47, %2
  %64 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %65 = getelementptr inbounds %struct.ldc_channel, %struct.ldc_channel* %64, i32 0, i32 1
  %66 = load i64, i64* %6, align 8
  %67 = call i32 @spin_unlock_irqrestore(i32* %65, i64 %66)
  %68 = load %struct.ldc_channel*, %struct.ldc_channel** %5, align 8
  %69 = load i32, i32* %9, align 4
  %70 = call i32 @send_events(%struct.ldc_channel* %68, i32 %69)
  %71 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %71
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @sun4v_ldc_tx_get_state(i32, i32*, i32*, i64*) #1

declare dso_local i32 @ldcdbg(i32, i8*, i64, i64, i32, i32) #1

declare dso_local i32 @ldc_set_state(%struct.ldc_channel*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @send_events(%struct.ldc_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
