; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_serial_link_irq_chain.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_serial_link_irq_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i32, i32* }
%struct.uart_sio_port = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@irq_lists = common dso_local global %struct.irq_info* null, align 8
@m32r_sio_interrupt = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"SIO0-RX\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"SIO0-TX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.uart_sio_port*)* @serial_link_irq_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @serial_link_irq_chain(%struct.uart_sio_port* %0) #0 {
  %2 = alloca %struct.uart_sio_port*, align 8
  %3 = alloca %struct.irq_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.uart_sio_port* %0, %struct.uart_sio_port** %2, align 8
  %6 = load %struct.irq_info*, %struct.irq_info** @irq_lists, align 8
  %7 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %8 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %6, i64 %11
  store %struct.irq_info* %12, %struct.irq_info** %3, align 8
  store i32 0, i32* %5, align 4
  %13 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %14 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %13, i32 0, i32 0
  %15 = call i32 @spin_lock_irq(i32* %14)
  %16 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %17 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %30

20:                                               ; preds = %1
  %21 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %22 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %21, i32 0, i32 1
  %23 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %24 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = call i32 @list_add(i32* %22, i32* %25)
  %27 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %28 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %27, i32 0, i32 0
  %29 = call i32 @spin_unlock_irq(i32* %28)
  store i32 0, i32* %4, align 4
  br label %67

30:                                               ; preds = %1
  %31 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %32 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %31, i32 0, i32 1
  %33 = call i32 @INIT_LIST_HEAD(i32* %32)
  %34 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %35 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %34, i32 0, i32 1
  %36 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %37 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %36, i32 0, i32 1
  store i32* %35, i32** %37, align 8
  %38 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %39 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %38, i32 0, i32 0
  %40 = call i32 @spin_unlock_irq(i32* %39)
  %41 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @m32r_sio_interrupt, align 4
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %48 = call i32 @request_irq(i32 %44, i32 %45, i32 %46, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.irq_info* %47)
  store i32 %48, i32* %4, align 4
  %49 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %50 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = add nsw i32 %52, 1
  %54 = load i32, i32* @m32r_sio_interrupt, align 4
  %55 = load i32, i32* %5, align 4
  %56 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %57 = call i32 @request_irq(i32 %53, i32 %54, i32 %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), %struct.irq_info* %56)
  %58 = load i32, i32* %4, align 4
  %59 = or i32 %58, %57
  store i32 %59, i32* %4, align 4
  %60 = load i32, i32* %4, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %30
  %63 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %64 = load %struct.uart_sio_port*, %struct.uart_sio_port** %2, align 8
  %65 = call i32 @serial_do_unlink(%struct.irq_info* %63, %struct.uart_sio_port* %64)
  br label %66

66:                                               ; preds = %62, %30
  br label %67

67:                                               ; preds = %66, %20
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, %struct.irq_info*) #1

declare dso_local i32 @serial_do_unlink(%struct.irq_info*, %struct.uart_sio_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
