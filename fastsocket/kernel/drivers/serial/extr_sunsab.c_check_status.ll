; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_check_status.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_check_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_sunsab_port = type { i32, i32, %struct.TYPE_15__, %struct.TYPE_11__* }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_12__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_12__ = type { i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32, i32, i32 }
%union.sab82532_irq_status = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32 }

@SAB82532_ISR0_CDSC = common dso_local global i32 0, align 4
@SAB82532_VSTR_CD = common dso_local global i32 0, align 4
@SAB82532_ISR1_CSC = common dso_local global i32 0, align 4
@SAB82532_STAR_CTS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_sunsab_port*, %union.sab82532_irq_status*)* @check_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @check_status(%struct.uart_sunsab_port* %0, %union.sab82532_irq_status* %1) #0 {
  %3 = alloca %struct.uart_sunsab_port*, align 8
  %4 = alloca %union.sab82532_irq_status*, align 8
  store %struct.uart_sunsab_port* %0, %struct.uart_sunsab_port** %3, align 8
  store %union.sab82532_irq_status* %1, %union.sab82532_irq_status** %4, align 8
  %5 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %4, align 8
  %6 = bitcast %union.sab82532_irq_status* %5 to %struct.TYPE_9__*
  %7 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @SAB82532_ISR0_CDSC, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %14 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %13, i32 0, i32 2
  %15 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %16 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %15, i32 0, i32 3
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 2
  %20 = call i32 @readb(i32* %19)
  %21 = load i32, i32* @SAB82532_VSTR_CD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i32 @uart_handle_dcd_change(%struct.TYPE_15__* %14, i32 %25)
  br label %27

27:                                               ; preds = %12, %2
  %28 = load %union.sab82532_irq_status*, %union.sab82532_irq_status** %4, align 8
  %29 = bitcast %union.sab82532_irq_status* %28 to %struct.TYPE_9__*
  %30 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SAB82532_ISR1_CSC, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %47

35:                                               ; preds = %27
  %36 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %36, i32 0, i32 2
  %38 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %38, i32 0, i32 3
  %40 = load %struct.TYPE_11__*, %struct.TYPE_11__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %41, i32 0, i32 1
  %43 = call i32 @readb(i32* %42)
  %44 = load i32, i32* @SAB82532_STAR_CTS, align 4
  %45 = and i32 %43, %44
  %46 = call i32 @uart_handle_cts_change(%struct.TYPE_15__* %37, i32 %45)
  br label %47

47:                                               ; preds = %35, %27
  %48 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %49 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %48, i32 0, i32 3
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 0
  %53 = call i32 @readb(i32* %52)
  %54 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %55 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = and i32 %53, %56
  %58 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = xor i32 %57, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %85

63:                                               ; preds = %47
  %64 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %65 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %64, i32 0, i32 3
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = call i32 @readb(i32* %68)
  %70 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %71 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %69, %72
  %74 = icmp ne i32 %73, 0
  %75 = zext i1 %74 to i64
  %76 = select i1 %74, i32 0, i32 1
  %77 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %78 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %77, i32 0, i32 1
  store i32 %76, i32* %78, align 4
  %79 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %80 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = add nsw i32 %83, 1
  store i32 %84, i32* %82, align 8
  br label %85

85:                                               ; preds = %63, %47
  %86 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %87 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %86, i32 0, i32 2
  %88 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %87, i32 0, i32 0
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %90, i32 0, i32 0
  %92 = call i32 @wake_up_interruptible(i32* %91)
  ret void
}

declare dso_local i32 @uart_handle_dcd_change(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @readb(i32*) #1

declare dso_local i32 @uart_handle_cts_change(%struct.TYPE_15__*, i32) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
