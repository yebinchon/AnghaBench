; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_timeout.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_imx.c_imx_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.imx_port = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i64 }

@jiffies = common dso_local global i64 0, align 8
@MCTRL_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @imx_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @imx_timeout(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.imx_port*, align 8
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = inttoptr i64 %5 to %struct.imx_port*
  store %struct.imx_port* %6, %struct.imx_port** %3, align 8
  %7 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %8 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %31

12:                                               ; preds = %1
  %13 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %14 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %4, align 8
  %17 = call i32 @spin_lock_irqsave(i32* %15, i64 %16)
  %18 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %19 = call i32 @imx_mctrl_check(%struct.imx_port* %18)
  %20 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %21 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %4, align 8
  %24 = call i32 @spin_unlock_irqrestore(i32* %22, i64 %23)
  %25 = load %struct.imx_port*, %struct.imx_port** %3, align 8
  %26 = getelementptr inbounds %struct.imx_port, %struct.imx_port* %25, i32 0, i32 0
  %27 = load i64, i64* @jiffies, align 8
  %28 = load i64, i64* @MCTRL_TIMEOUT, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @mod_timer(i32* %26, i64 %29)
  br label %31

31:                                               ; preds = %12, %1
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @imx_mctrl_check(%struct.imx_port*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
