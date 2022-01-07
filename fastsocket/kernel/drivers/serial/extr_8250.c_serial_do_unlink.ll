; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial_do_unlink.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_8250.c_serial_do_unlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_info = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { %struct.TYPE_3__* }
%struct.uart_8250_port = type { %struct.TYPE_3__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.irq_info*, %struct.uart_8250_port*)* @serial_do_unlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @serial_do_unlink(%struct.irq_info* %0, %struct.uart_8250_port* %1) #0 {
  %3 = alloca %struct.irq_info*, align 8
  %4 = alloca %struct.uart_8250_port*, align 8
  store %struct.irq_info* %0, %struct.irq_info** %3, align 8
  store %struct.uart_8250_port* %1, %struct.uart_8250_port** %4, align 8
  %5 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %6 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %5, i32 0, i32 2
  %7 = call i32 @spin_lock_irq(i32* %6)
  %8 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %9 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %8, i32 0, i32 1
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = call i32 @list_empty(%struct.TYPE_3__* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %32, label %13

13:                                               ; preds = %2
  %14 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %15 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %18 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %17, i32 0, i32 0
  %19 = icmp eq %struct.TYPE_3__* %16, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %13
  %21 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %22 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %27 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %26, i32 0, i32 1
  store %struct.TYPE_3__* %25, %struct.TYPE_3__** %27, align 8
  br label %28

28:                                               ; preds = %20, %13
  %29 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %30 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %29, i32 0, i32 0
  %31 = call i32 @list_del(%struct.TYPE_3__* %30)
  br label %43

32:                                               ; preds = %2
  %33 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %34 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %33, i32 0, i32 1
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = load %struct.uart_8250_port*, %struct.uart_8250_port** %4, align 8
  %37 = getelementptr inbounds %struct.uart_8250_port, %struct.uart_8250_port* %36, i32 0, i32 0
  %38 = icmp ne %struct.TYPE_3__* %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %42 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %41, i32 0, i32 1
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %42, align 8
  br label %43

43:                                               ; preds = %32, %28
  %44 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %45 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %44, i32 0, i32 2
  %46 = call i32 @spin_unlock_irq(i32* %45)
  %47 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %48 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = icmp eq %struct.TYPE_3__* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %43
  %52 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %53 = getelementptr inbounds %struct.irq_info, %struct.irq_info* %52, i32 0, i32 0
  %54 = call i32 @hlist_del(i32* %53)
  %55 = load %struct.irq_info*, %struct.irq_info** %3, align 8
  %56 = call i32 @kfree(%struct.irq_info* %55)
  br label %57

57:                                               ; preds = %51, %43
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @list_empty(%struct.TYPE_3__*) #1

declare dso_local i32 @list_del(%struct.TYPE_3__*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @hlist_del(i32*) #1

declare dso_local i32 @kfree(%struct.irq_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
