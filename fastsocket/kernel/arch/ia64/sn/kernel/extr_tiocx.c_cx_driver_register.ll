; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_cx_driver_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/kernel/extr_tiocx.c_cx_driver_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx_drv = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32*, i32 }

@tiocx_bus_type = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx_driver_register(%struct.cx_drv* %0) #0 {
  %2 = alloca %struct.cx_drv*, align 8
  store %struct.cx_drv* %0, %struct.cx_drv** %2, align 8
  %3 = load %struct.cx_drv*, %struct.cx_drv** %2, align 8
  %4 = getelementptr inbounds %struct.cx_drv, %struct.cx_drv* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.cx_drv*, %struct.cx_drv** %2, align 8
  %7 = getelementptr inbounds %struct.cx_drv, %struct.cx_drv* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  store i32 %5, i32* %8, align 8
  %9 = load %struct.cx_drv*, %struct.cx_drv** %2, align 8
  %10 = getelementptr inbounds %struct.cx_drv, %struct.cx_drv* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  store i32* @tiocx_bus_type, i32** %11, align 8
  %12 = load %struct.cx_drv*, %struct.cx_drv** %2, align 8
  %13 = getelementptr inbounds %struct.cx_drv, %struct.cx_drv* %12, i32 0, i32 0
  %14 = call i32 @driver_register(%struct.TYPE_2__* %13)
  ret i32 %14
}

declare dso_local i32 @driver_register(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
