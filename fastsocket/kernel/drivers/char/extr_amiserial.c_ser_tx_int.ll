; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_ser_tx_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_ser_tx_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.async_struct = type { i32, i32 }

@custom = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@SDR_TBE = common dso_local global i32 0, align 4
@IRQ_ports = common dso_local global %struct.async_struct* null, align 8
@IRQ_NONE = common dso_local global i32 0, align 4
@jiffies = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ser_tx_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ser_tx_int(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.async_struct*, align 8
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @custom, i32 0, i32 0), align 4
  %8 = load i32, i32* @SDR_TBE, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %28

11:                                               ; preds = %2
  %12 = load %struct.async_struct*, %struct.async_struct** @IRQ_ports, align 8
  store %struct.async_struct* %12, %struct.async_struct** %6, align 8
  %13 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %14 = icmp ne %struct.async_struct* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %11
  %16 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %17 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15, %11
  %21 = load i32, i32* @IRQ_NONE, align 4
  store i32 %21, i32* %3, align 4
  br label %30

22:                                               ; preds = %15
  %23 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %24 = call i32 @transmit_chars(%struct.async_struct* %23)
  %25 = load i32, i32* @jiffies, align 4
  %26 = load %struct.async_struct*, %struct.async_struct** %6, align 8
  %27 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %2
  %29 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %29, i32* %3, align 4
  br label %30

30:                                               ; preds = %28, %20
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

declare dso_local i32 @transmit_chars(%struct.async_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
