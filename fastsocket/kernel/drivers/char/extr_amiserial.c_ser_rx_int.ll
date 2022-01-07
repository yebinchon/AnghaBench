; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_ser_rx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_ser_rx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.async_struct = type { i32, i32 }

@IRQ_ports = common dso_local global %struct.async_struct* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ser_rx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ser_rx_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.async_struct*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load %struct.async_struct*, %struct.async_struct** @IRQ_ports, align 8
  store %struct.async_struct* %7, %struct.async_struct** %6, align 8
  %8 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %9 = icmp ne %struct.async_struct* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %2
  %11 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %12 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %10, %2
  %16 = load i32, i32* @IRQ_NONE, align 4
  store i32 %16, i32* %3, align 4
  br label %24

17:                                               ; preds = %10
  %18 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %19 = call i32 @receive_chars(%struct.async_struct* %18)
  %20 = load i32, i32* @jiffies, align 4
  %21 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %22 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  %23 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %17, %15
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local i32 @receive_chars(%struct.async_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
