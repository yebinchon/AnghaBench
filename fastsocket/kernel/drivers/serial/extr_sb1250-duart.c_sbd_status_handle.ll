; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_status_handle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sb1250-duart.c_sbd_status_handle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sbd_port = type { %struct.uart_port }
%struct.uart_port = type { i32, %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@M_DUART_IN_PIN0_VAL = common dso_local global i32 0, align 4
@S_DUART_IN_PIN_CHNG = common dso_local global i32 0, align 4
@M_DUART_IN_PIN2_VAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sbd_port*)* @sbd_status_handle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sbd_status_handle(%struct.sbd_port* %0) #0 {
  %2 = alloca %struct.sbd_port*, align 8
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  store %struct.sbd_port* %0, %struct.sbd_port** %2, align 8
  %5 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %6 = getelementptr inbounds %struct.sbd_port, %struct.sbd_port* %5, i32 0, i32 0
  store %struct.uart_port* %6, %struct.uart_port** %3, align 8
  %7 = load %struct.sbd_port*, %struct.sbd_port** %2, align 8
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = srem i32 %10, 2
  %12 = call i32 @R_DUART_INCHREG(i32 %11)
  %13 = call i32 @read_sbdshr(%struct.sbd_port* %7, i32 %12)
  store i32 %13, i32* %4, align 4
  %14 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = srem i32 %16, 2
  %18 = load i32, i32* %4, align 4
  %19 = lshr i32 %18, %17
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @M_DUART_IN_PIN0_VAL, align 4
  %22 = load i32, i32* @S_DUART_IN_PIN_CHNG, align 4
  %23 = shl i32 %21, %22
  %24 = and i32 %20, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %35

26:                                               ; preds = %1
  %27 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @M_DUART_IN_PIN0_VAL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i32 @uart_handle_cts_change(%struct.uart_port* %27, i32 %33)
  br label %35

35:                                               ; preds = %26, %1
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @M_DUART_IN_PIN2_VAL, align 4
  %38 = load i32, i32* @S_DUART_IN_PIN_CHNG, align 4
  %39 = shl i32 %37, %38
  %40 = and i32 %36, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %35
  %43 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %44 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %42, %35
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @M_DUART_IN_PIN2_VAL, align 4
  %51 = load i32, i32* @M_DUART_IN_PIN0_VAL, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @S_DUART_IN_PIN_CHNG, align 4
  %54 = shl i32 %52, %53
  %55 = and i32 %49, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %48
  %58 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %58, i32 0, i32 1
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 0
  %63 = call i32 @wake_up_interruptible(i32* %62)
  br label %64

64:                                               ; preds = %57, %48
  ret void
}

declare dso_local i32 @read_sbdshr(%struct.sbd_port*, i32) #1

declare dso_local i32 @R_DUART_INCHREG(i32) #1

declare dso_local i32 @uart_handle_cts_change(%struct.uart_port*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
