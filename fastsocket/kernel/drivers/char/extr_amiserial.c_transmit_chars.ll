; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_amiserial.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32, i8*, i8* }
%struct.async_struct = type { i32, i32, %struct.TYPE_9__, %struct.TYPE_8__*, %struct.TYPE_6__* }
%struct.TYPE_9__ = type { i32, i32, i32* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { i64, i64 }

@IF_TBE = common dso_local global i8* null, align 8
@custom = common dso_local global %struct.TYPE_10__ zeroinitializer, align 8
@UART_IER_THRI = common dso_local global i32 0, align 4
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@WAKEUP_CHARS = common dso_local global i64 0, align 8
@RS_EVENT_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_struct*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.async_struct* %0) #0 {
  %2 = alloca %struct.async_struct*, align 8
  store %struct.async_struct* %0, %struct.async_struct** %2, align 8
  %3 = load i8*, i8** @IF_TBE, align 8
  store i8* %3, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 2), align 8
  %4 = call i32 (...) @mb()
  %5 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %6 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %24

9:                                                ; preds = %1
  %10 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %11 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = or i32 %12, 256
  store i32 %13, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 0), align 8
  %14 = call i32 (...) @mb()
  %15 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %16 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %15, i32 0, i32 3
  %17 = load %struct.TYPE_8__*, %struct.TYPE_8__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %19, align 4
  %22 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %23 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %22, i32 0, i32 0
  store i32 0, i32* %23, align 8
  br label %124

24:                                               ; preds = %1
  %25 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %26 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %30 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = icmp eq i32 %28, %32
  br i1 %33, label %48, label %34

34:                                               ; preds = %24
  %35 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %36 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %35, i32 0, i32 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %48, label %41

41:                                               ; preds = %34
  %42 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %43 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %42, i32 0, i32 4
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %41, %34, %24
  %49 = load i32, i32* @UART_IER_THRI, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %52 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %50
  store i32 %54, i32* %52, align 4
  %55 = load i8*, i8** @IF_TBE, align 8
  store i8* %55, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 1), align 8
  %56 = call i32 (...) @mb()
  br label %124

57:                                               ; preds = %41
  %58 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %59 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 2
  %61 = load i32*, i32** %60, align 8
  %62 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %63 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %64, align 4
  %67 = sext i32 %65 to i64
  %68 = getelementptr inbounds i32, i32* %61, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = or i32 %69, 256
  store i32 %70, i32* getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 0), align 8
  %71 = call i32 (...) @mb()
  %72 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %73 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %77 = sub nsw i32 %76, 1
  %78 = and i32 %75, %77
  %79 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %80 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %79, i32 0, i32 2
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  store i32 %78, i32* %81, align 4
  %82 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %83 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %82, i32 0, i32 3
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %86, align 4
  %89 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %90 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %89, i32 0, i32 2
  %91 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %94 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %98 = call i64 @CIRC_CNT(i32 %92, i32 %96, i32 %97)
  %99 = load i64, i64* @WAKEUP_CHARS, align 8
  %100 = icmp slt i64 %98, %99
  br i1 %100, label %101, label %105

101:                                              ; preds = %57
  %102 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %103 = load i32, i32* @RS_EVENT_WRITE_WAKEUP, align 4
  %104 = call i32 @rs_sched_event(%struct.async_struct* %102, i32 %103)
  br label %105

105:                                              ; preds = %101, %57
  %106 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %107 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %106, i32 0, i32 2
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %111 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %110, i32 0, i32 2
  %112 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = icmp eq i32 %109, %113
  br i1 %114, label %115, label %124

115:                                              ; preds = %105
  %116 = load i8*, i8** @IF_TBE, align 8
  store i8* %116, i8** getelementptr inbounds (%struct.TYPE_10__, %struct.TYPE_10__* @custom, i32 0, i32 1), align 8
  %117 = call i32 (...) @mb()
  %118 = load i32, i32* @UART_IER_THRI, align 4
  %119 = xor i32 %118, -1
  %120 = load %struct.async_struct*, %struct.async_struct** %2, align 8
  %121 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = and i32 %122, %119
  store i32 %123, i32* %121, align 4
  br label %124

124:                                              ; preds = %9, %48, %115, %105
  ret void
}

declare dso_local i32 @mb(...) #1

declare dso_local i64 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @rs_sched_event(%struct.async_struct*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
