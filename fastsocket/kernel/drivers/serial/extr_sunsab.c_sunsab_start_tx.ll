; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_start_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_sunsab.c_sunsab_start_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_sunsab_port = type { i32, %struct.TYPE_10__*, %struct.TYPE_8__, i32 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32*, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.circ_buf }
%struct.circ_buf = type { i32*, i64 }

@SAB82532_IMR1_ALLS = common dso_local global i32 0, align 4
@SAB82532_IMR1_XPR = common dso_local global i32 0, align 4
@SAB82532_XPR = common dso_local global i32 0, align 4
@SAB82532_ALLS = common dso_local global i32 0, align 4
@UART_XMIT_SIZE = common dso_local global i32 0, align 4
@SAB82532_CMDR_XF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @sunsab_start_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sunsab_start_tx(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_sunsab_port*, align 8
  %4 = alloca %struct.circ_buf*, align 8
  %5 = alloca i32, align 4
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %6 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %7 = bitcast %struct.uart_port* %6 to %struct.uart_sunsab_port*
  store %struct.uart_sunsab_port* %7, %struct.uart_sunsab_port** %3, align 8
  %8 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %9 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 2
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  store %struct.circ_buf* %12, %struct.circ_buf** %4, align 8
  %13 = load i32, i32* @SAB82532_IMR1_ALLS, align 4
  %14 = load i32, i32* @SAB82532_IMR1_XPR, align 4
  %15 = or i32 %13, %14
  %16 = xor i32 %15, -1
  %17 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = and i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %22 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %25 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %24, i32 0, i32 1
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 2
  %29 = call i32 @writeb(i32 %23, i32* %28)
  %30 = load i32, i32* @SAB82532_XPR, align 4
  %31 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %32 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %31, i32 0, i32 3
  %33 = call i32 @test_bit(i32 %30, i32* %32)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %1
  br label %105

36:                                               ; preds = %1
  %37 = load i32, i32* @SAB82532_ALLS, align 4
  %38 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %39 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %38, i32 0, i32 3
  %40 = call i32 @clear_bit(i32 %37, i32* %39)
  %41 = load i32, i32* @SAB82532_XPR, align 4
  %42 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %43 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %42, i32 0, i32 3
  %44 = call i32 @clear_bit(i32 %41, i32* %43)
  store i32 0, i32* %5, align 4
  br label %45

45:                                               ; preds = %92, %36
  %46 = load i32, i32* %5, align 4
  %47 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %48 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %46, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %45
  %53 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %54 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %57 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = getelementptr inbounds i32, i32* %55, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %62 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %61, i32 0, i32 1
  %63 = load %struct.TYPE_10__*, %struct.TYPE_10__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %5, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @writeb(i32 %60, i32* %69)
  %71 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %72 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add i64 %73, 1
  %75 = load i32, i32* @UART_XMIT_SIZE, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = and i64 %74, %77
  %79 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %80 = getelementptr inbounds %struct.circ_buf, %struct.circ_buf* %79, i32 0, i32 1
  store i64 %78, i64* %80, align 8
  %81 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %82 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %81, i32 0, i32 2
  %83 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.circ_buf*, %struct.circ_buf** %4, align 8
  %88 = call i64 @uart_circ_empty(%struct.circ_buf* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %52
  br label %95

91:                                               ; preds = %52
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %5, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %5, align 4
  br label %45

95:                                               ; preds = %90, %45
  %96 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %97 = call i32 @sunsab_cec_wait(%struct.uart_sunsab_port* %96)
  %98 = load i32, i32* @SAB82532_CMDR_XF, align 4
  %99 = load %struct.uart_sunsab_port*, %struct.uart_sunsab_port** %3, align 8
  %100 = getelementptr inbounds %struct.uart_sunsab_port, %struct.uart_sunsab_port* %99, i32 0, i32 1
  %101 = load %struct.TYPE_10__*, %struct.TYPE_10__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %102, i32 0, i32 0
  %104 = call i32 @writeb(i32 %98, i32* %103)
  br label %105

105:                                              ; preds = %95, %35
  ret void
}

declare dso_local i32 @writeb(i32, i32*) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @uart_circ_empty(%struct.circ_buf*) #1

declare dso_local i32 @sunsab_cec_wait(%struct.uart_sunsab_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
