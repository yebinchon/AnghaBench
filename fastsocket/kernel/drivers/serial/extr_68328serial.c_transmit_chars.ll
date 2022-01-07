; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_68328serial.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64 }
%struct.m68k_serial = type { i64, i64, i32, i32, i64*, %struct.TYPE_8__, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@uart_addr = common dso_local global %struct.TYPE_11__* null, align 8
@USTCNT_TX_INTR_MASK = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.m68k_serial*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.m68k_serial* %0) #0 {
  %2 = alloca %struct.m68k_serial*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  store %struct.m68k_serial* %0, %struct.m68k_serial** %2, align 8
  %4 = load %struct.TYPE_11__*, %struct.TYPE_11__** @uart_addr, align 8
  %5 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %6 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %4, i64 %7
  store %struct.TYPE_11__* %8, %struct.TYPE_11__** %3, align 8
  %9 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %10 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %9, i32 0, i32 6
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %15 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  store i64 %16, i64* %20, align 8
  %21 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %22 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %21, i32 0, i32 6
  store i64 0, i64* %22, align 8
  br label %92

23:                                               ; preds = %1
  %24 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %25 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %23
  %29 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %30 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %29, i32 0, i32 5
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %28, %23
  %37 = load i32, i32* @USTCNT_TX_INTR_MASK, align 4
  %38 = xor i32 %37, -1
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = and i32 %41, %38
  store i32 %42, i32* %40, align 8
  br label %92

43:                                               ; preds = %28
  %44 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %45 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %44, i32 0, i32 4
  %46 = load i64*, i64** %45, align 8
  %47 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %48 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %48, align 8
  %51 = sext i32 %49 to i64
  %52 = getelementptr inbounds i64, i64* %46, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %55 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %54, i32 0, i32 1
  %56 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  %58 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %59 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %62 = sub nsw i32 %61, 1
  %63 = and i32 %60, %62
  %64 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %65 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %64, i32 0, i32 2
  store i32 %63, i32* %65, align 8
  %66 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %67 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %66, i32 0, i32 1
  %68 = load i64, i64* %67, align 8
  %69 = add nsw i64 %68, -1
  store i64 %69, i64* %67, align 8
  %70 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %71 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @WAKEUP_CHARS, align 8
  %74 = icmp slt i64 %72, %73
  br i1 %74, label %75, label %79

75:                                               ; preds = %43
  %76 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %77 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %76, i32 0, i32 3
  %78 = call i32 @schedule_work(i32* %77)
  br label %79

79:                                               ; preds = %75, %43
  %80 = load %struct.m68k_serial*, %struct.m68k_serial** %2, align 8
  %81 = getelementptr inbounds %struct.m68k_serial, %struct.m68k_serial* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp sle i64 %82, 0
  br i1 %83, label %84, label %91

84:                                               ; preds = %79
  %85 = load i32, i32* @USTCNT_TX_INTR_MASK, align 4
  %86 = xor i32 %85, -1
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = and i32 %89, %86
  store i32 %90, i32* %88, align 8
  br label %92

91:                                               ; preds = %79
  br label %92

92:                                               ; preds = %91, %84, %36, %13
  ret void
}

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
