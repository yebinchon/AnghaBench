; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_m32r_sio.c_m32r_sio_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sio_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@SIOSTS = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @m32r_sio_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @m32r_sio_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.uart_sio_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %6 = load i64, i64* %2, align 8
  %7 = inttoptr i64 %6 to %struct.uart_sio_port*
  store %struct.uart_sio_port* %7, %struct.uart_sio_port** %3, align 8
  %8 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %9 = load i32, i32* @SIOSTS, align 4
  %10 = call i32 @sio_in(%struct.uart_sio_port* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = and i32 %11, 5
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %26

14:                                               ; preds = %1
  %15 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  %18 = call i32 @spin_lock(i32* %17)
  %19 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @m32r_sio_handle_port(%struct.uart_sio_port* %19, i32 %20)
  %22 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %23 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = call i32 @spin_unlock(i32* %24)
  br label %26

26:                                               ; preds = %14, %1
  %27 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %28 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load i32, i32* %4, align 4
  %32 = icmp ugt i32 %31, 6
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load i32, i32* %4, align 4
  %35 = udiv i32 %34, 2
  %36 = sub i32 %35, 2
  br label %38

37:                                               ; preds = %26
  br label %38

38:                                               ; preds = %37, %33
  %39 = phi i32 [ %36, %33 ], [ 1, %37 ]
  store i32 %39, i32* %4, align 4
  %40 = load %struct.uart_sio_port*, %struct.uart_sio_port** %3, align 8
  %41 = getelementptr inbounds %struct.uart_sio_port, %struct.uart_sio_port* %40, i32 0, i32 0
  %42 = load i64, i64* @jiffies, align 8
  %43 = load i32, i32* %4, align 4
  %44 = zext i32 %43 to i64
  %45 = add nsw i64 %42, %44
  %46 = call i32 @mod_timer(i32* %41, i64 %45)
  ret void
}

declare dso_local i32 @sio_in(%struct.uart_sio_port*, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @m32r_sio_handle_port(%struct.uart_sio_port*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
