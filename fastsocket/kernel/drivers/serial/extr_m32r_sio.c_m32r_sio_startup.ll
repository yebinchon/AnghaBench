; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_startup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sio_port = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@UART_IER_MSI = common dso_local global i32 0, align 4
@UART_IER_RLSI = common dso_local global i32 0, align 4
@UART_IER_RDI = common dso_local global i32 0, align 4
@SIOTRCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_port*)* @m32r_sio_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m32r_sio_startup(%struct.uart_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca %struct.uart_sio_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  %7 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %8 = bitcast %struct.uart_port* %7 to %struct.uart_sio_port*
  store %struct.uart_sio_port* %8, %struct.uart_sio_port** %4, align 8
  %9 = call i32 (...) @sio_init()
  %10 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %11 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @is_real_interrupt(i32 %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %42, label %16

16:                                               ; preds = %1
  %17 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ugt i32 %21, 6
  br i1 %22, label %23, label %27

23:                                               ; preds = %16
  %24 = load i32, i32* %6, align 4
  %25 = udiv i32 %24, 2
  %26 = sub i32 %25, 2
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %23
  %29 = phi i32 [ %26, %23 ], [ 1, %27 ]
  store i32 %29, i32* %6, align 4
  %30 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %31 = ptrtoint %struct.uart_sio_port* %30 to i64
  %32 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %33 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  store i64 %31, i64* %34, align 8
  %35 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %36 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %35, i32 0, i32 1
  %37 = load i64, i64* @jiffies, align 8
  %38 = load i32, i32* %6, align 4
  %39 = zext i32 %38 to i64
  %40 = add nsw i64 %37, %39
  %41 = call i32 @mod_timer(%struct.TYPE_4__* %36, i64 %40)
  br label %50

42:                                               ; preds = %1
  %43 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %44 = call i32 @serial_link_irq_chain(%struct.uart_sio_port* %43)
  store i32 %44, i32* %5, align 4
  %45 = load i32, i32* %5, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %42
  %48 = load i32, i32* %5, align 4
  store i32 %48, i32* %2, align 4
  br label %65

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %28
  %51 = load i32, i32* @UART_IER_MSI, align 4
  %52 = load i32, i32* @UART_IER_RLSI, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @UART_IER_RDI, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %57 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %59 = load i32, i32* @SIOTRCR, align 4
  %60 = load %struct.uart_sio_port*, %struct.uart_sio_port** %4, align 8
  %61 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @sio_out(%struct.uart_sio_port* %58, i32 %59, i32 %62)
  %64 = call i32 (...) @sio_reset()
  store i32 0, i32* %2, align 4
  br label %65

65:                                               ; preds = %50, %47
  %66 = load i32, i32* %2, align 4
  ret i32 %66
}

declare dso_local i32 @sio_init(...) #1

declare dso_local i32 @is_real_interrupt(i32) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @serial_link_irq_chain(%struct.uart_sio_port*) #1

declare dso_local i32 @sio_out(%struct.uart_sio_port*, i32, i32) #1

declare dso_local i32 @sio_reset(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
