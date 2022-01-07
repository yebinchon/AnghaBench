; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_tx_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_tx_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsab_port = type { i32, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@SAB82532_REGS_PENDING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsab_port*)* @sunsab_tx_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_tx_idle(%struct.uart_sunsab_port* %0) #0 {
  %2 = alloca %struct.uart_sunsab_port*, align 8
  %3 = alloca i32, align 4
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %2, align 8
  %4 = load i32, i32* @SAB82532_REGS_PENDING, align 4
  %5 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %6 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %5, i32 0, i32 5
  %7 = call i64 @test_bit(i32 %4, i32* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %73

9:                                                ; preds = %1
  %10 = load i32, i32* @SAB82532_REGS_PENDING, align 4
  %11 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %12 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %11, i32 0, i32 5
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %15 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %18 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %17, i32 0, i32 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = call i32 @writeb(i32 %16, i32* %21)
  %23 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %24 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %27 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %26, i32 0, i32 4
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i32 0, i32 1
  %31 = call i32 @writeb(i32 %25, i32* %30)
  %32 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %33 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %36 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 1
  %40 = call i32 @writeb(i32 %34, i32* %39)
  %41 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %42 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = and i32 %43, 255
  %45 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %46 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %45, i32 0, i32 4
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = call i32 @writeb(i32 %44, i32* %49)
  %51 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %52 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %51, i32 0, i32 4
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %54, i32 0, i32 0
  %56 = call i32 @readb(i32* %55)
  store i32 %56, i32* %3, align 4
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, -193
  store i32 %58, i32* %3, align 4
  %59 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %60 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %59, i32 0, i32 3
  %61 = load i32, i32* %60, align 4
  %62 = ashr i32 %61, 2
  %63 = and i32 %62, 192
  %64 = load i32, i32* %3, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %3, align 4
  %66 = load i32, i32* %3, align 4
  %67 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %2, align 8
  %68 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %67, i32 0, i32 4
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = call i32 @writeb(i32 %66, i32* %71)
  br label %73

73:                                               ; preds = %9, %1
  ret void
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @readb(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
