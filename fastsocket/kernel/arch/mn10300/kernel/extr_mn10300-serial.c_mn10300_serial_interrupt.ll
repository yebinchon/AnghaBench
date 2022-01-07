; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mn10300/kernel/extr_mn10300-serial.c_mn10300_serial_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mn10300_serial_port = type { i64, i32*, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"INT %s: %x\00", align 1
@MNSCx_RX_AVAIL = common dso_local global i32 0, align 4
@MNSCx_TX_SPACE = common dso_local global i32 0, align 4
@MNSCx_TX_EMPTY = common dso_local global i32 0, align 4
@PORT_MN10300_CTS = common dso_local global i64 0, align 8
@SC2STR_CTS = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @mn10300_serial_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mn10300_serial_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.mn10300_serial_port*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.mn10300_serial_port*
  store %struct.mn10300_serial_port* %8, %struct.mn10300_serial_port** %5, align 8
  %9 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %10 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = call i32 @spin_lock(i32* %11)
  %13 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %14 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %13, i32 0, i32 4
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %2
  %18 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %19 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %18, i32 0, i32 5
  %20 = load i32, i32* %19, align 8
  %21 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %22 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @_debug(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %20, i64 %23)
  %25 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %26 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %25, i32 0, i32 4
  %27 = load i32, i32* @MNSCx_RX_AVAIL, align 4
  %28 = call i64 @mask_test_and_clear(i64* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %17
  %31 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %32 = call i32 @mn10300_serial_receive_interrupt(%struct.mn10300_serial_port* %31)
  br label %33

33:                                               ; preds = %30, %17
  %34 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %35 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %34, i32 0, i32 4
  %36 = load i32, i32* @MNSCx_TX_SPACE, align 4
  %37 = load i32, i32* @MNSCx_TX_EMPTY, align 4
  %38 = or i32 %36, %37
  %39 = call i64 @mask_test_and_clear(i64* %35, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33
  %42 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %43 = call i32 @mn10300_serial_transmit_interrupt(%struct.mn10300_serial_port* %42)
  br label %44

44:                                               ; preds = %41, %33
  br label %45

45:                                               ; preds = %44, %2
  %46 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %47 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PORT_MN10300_CTS, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %45
  %52 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %53 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %52, i32 0, i32 1
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %54, align 4
  store i32 %55, i32* %6, align 4
  %56 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %57 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = xor i32 %58, %59
  %61 = load i32, i32* @SC2STR_CTS, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %51
  %65 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %66 = load i32, i32* %6, align 4
  %67 = call i32 @mn10300_serial_cts_changed(%struct.mn10300_serial_port* %65, i32 %66)
  br label %68

68:                                               ; preds = %64, %51
  br label %69

69:                                               ; preds = %68, %45
  %70 = load %struct.mn10300_serial_port*, %struct.mn10300_serial_port** %5, align 8
  %71 = getelementptr inbounds %struct.mn10300_serial_port, %struct.mn10300_serial_port* %70, i32 0, i32 3
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = call i32 @spin_unlock(i32* %72)
  %74 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %74
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @_debug(i8*, i32, i64) #1

declare dso_local i64 @mask_test_and_clear(i64*, i32) #1

declare dso_local i32 @mn10300_serial_receive_interrupt(%struct.mn10300_serial_port*) #1

declare dso_local i32 @mn10300_serial_transmit_interrupt(%struct.mn10300_serial_port*) #1

declare dso_local i32 @mn10300_serial_cts_changed(%struct.mn10300_serial_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
