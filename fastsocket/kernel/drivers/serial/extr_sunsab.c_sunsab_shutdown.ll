; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_shutdown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsab_port = type { i32, i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@SAB82532_DAFO_XBRK = common dso_local global i32 0, align 4
@SAB82532_MODE_RAC = common dso_local global i32 0, align 4
@SAB82532_CCR0_PU = common dso_local global i32 0, align 4
@tmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sunsab_shutdown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_shutdown(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_sunsab_port*, align 8
  %4 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = bitcast %struct.uart_port* %5 to %struct.uart_sunsab_port*
  store %struct.uart_sunsab_port* %6, %struct.uart_sunsab_port** %3, align 8
  %7 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %8 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %7, i32 0, i32 4
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %13 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %12, i32 0, i32 0
  store i32 255, i32* %13, align 8
  %14 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %15 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %17, i32 0, i32 5
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 1
  %22 = call i32 @writeb(i32 %16, i32* %21)
  %23 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %24 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %23, i32 0, i32 1
  store i32 255, i32* %24, align 4
  %25 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %26 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %29 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %28, i32 0, i32 5
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = call i32 @writeb(i32 %27, i32* %32)
  %34 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %35 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %34, i32 0, i32 5
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  %39 = call i8* @readb(i32* %38)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %42 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %41, i32 0, i32 2
  store i32 %40, i32* %42, align 8
  %43 = load i32, i32* @SAB82532_DAFO_XBRK, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %46 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 8
  %49 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %50 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %53 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %52, i32 0, i32 5
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 2
  %57 = call i32 @writeb(i32 %51, i32* %56)
  %58 = load i32, i32* @SAB82532_MODE_RAC, align 4
  %59 = xor i32 %58, -1
  %60 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %61 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %60, i32 0, i32 3
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %68 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %67, i32 0, i32 5
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  %72 = call i32 @writeb(i32 %66, i32* %71)
  %73 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %74 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %74, i32 0, i32 1
  %76 = load i64, i64* %4, align 8
  %77 = call i32 @spin_unlock_irqrestore(i32* %75, i64 %76)
  %78 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %79 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %83 = call i32 @free_irq(i32 %81, %struct.uart_sunsab_port* %82)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i8* @readb(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @free_irq(i32, %struct.uart_sunsab_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
