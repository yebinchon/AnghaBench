; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_transmit_chars.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/hp/sim/extr_simserial.c_transmit_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32 (%struct.TYPE_13__*, i8*, i32)* }
%struct.async_struct = type { i8, %struct.TYPE_12__, %struct.TYPE_11__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { i32, i32, i8* }
%struct.TYPE_11__ = type { i64, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 }

@console = common dso_local global %struct.TYPE_13__* null, align 8
@SERIAL_XMIT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.async_struct*, i32*)* @transmit_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @transmit_chars(%struct.async_struct* %0, i32* %1) #0 {
  %3 = alloca %struct.async_struct*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  store %struct.async_struct* %0, %struct.async_struct** %3, align 8
  store i32* %1, i32** %4, align 8
  %8 = load i64, i64* %6, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %11 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %10, i32 0, i32 0
  %12 = load i8, i8* %11, align 8
  %13 = icmp ne i8 %12, 0
  br i1 %13, label %14, label %32

14:                                               ; preds = %2
  %15 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %16 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %15, i32 0, i32 0
  %17 = load i8, i8* %16, align 8
  store i8 %17, i8* %7, align 1
  %18 = load %struct.TYPE_13__*, %struct.TYPE_13__** @console, align 8
  %19 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %18, i32 0, i32 0
  %20 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %19, align 8
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** @console, align 8
  %22 = call i32 %20(%struct.TYPE_13__* %21, i8* %7, i32 1)
  %23 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %24 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %23, i32 0, i32 3
  %25 = load %struct.TYPE_10__*, %struct.TYPE_10__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %27, align 4
  %30 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %31 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %30, i32 0, i32 0
  store i8 0, i8* %31, align 8
  br label %133

32:                                               ; preds = %2
  %33 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %34 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %38 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = icmp eq i32 %36, %40
  br i1 %41, label %56, label %42

42:                                               ; preds = %32
  %43 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %44 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %43, i32 0, i32 2
  %45 = load %struct.TYPE_11__*, %struct.TYPE_11__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %42
  %50 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %51 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %50, i32 0, i32 2
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %49, %42, %32
  br label %133

57:                                               ; preds = %49
  %58 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %59 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %63 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %67 = call i32 @CIRC_CNT(i32 %61, i32 %65, i32 %66)
  %68 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %69 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %70 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = sub nsw i32 %68, %72
  %74 = call i32 @min(i32 %67, i32 %73)
  store i32 %74, i32* %5, align 4
  %75 = load %struct.TYPE_13__*, %struct.TYPE_13__** @console, align 8
  %76 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %75, i32 0, i32 0
  %77 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %76, align 8
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** @console, align 8
  %79 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %80 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %84 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i8, i8* %82, i64 %87
  %89 = load i32, i32* %5, align 4
  %90 = call i32 %77(%struct.TYPE_13__* %78, i8* %88, i32 %89)
  %91 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %92 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %91, i32 0, i32 1
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %5, align 4
  %96 = add nsw i32 %94, %95
  %97 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %98 = sub nsw i32 %97, 1
  %99 = and i32 %96, %98
  %100 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %101 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %101, i32 0, i32 1
  store i32 %99, i32* %102, align 4
  %103 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %104 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %103, i32 0, i32 1
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %108 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = load i32, i32* @SERIAL_XMIT_SIZE, align 4
  %112 = call i32 @CIRC_CNT(i32 %106, i32 %110, i32 %111)
  store i32 %112, i32* %5, align 4
  %113 = load i32, i32* %5, align 4
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %132

115:                                              ; preds = %57
  %116 = load %struct.TYPE_13__*, %struct.TYPE_13__** @console, align 8
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = load i32 (%struct.TYPE_13__*, i8*, i32)*, i32 (%struct.TYPE_13__*, i8*, i32)** %117, align 8
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** @console, align 8
  %120 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %121 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 2
  %123 = load i8*, i8** %122, align 8
  %124 = load i32, i32* %5, align 4
  %125 = call i32 %118(%struct.TYPE_13__* %119, i8* %123, i32 %124)
  %126 = load i32, i32* %5, align 4
  %127 = load %struct.async_struct*, %struct.async_struct** %3, align 8
  %128 = getelementptr inbounds %struct.async_struct, %struct.async_struct* %127, i32 0, i32 1
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, %126
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %115, %57
  br label %133

133:                                              ; preds = %132, %56, %14
  %134 = load i64, i64* %6, align 8
  %135 = call i32 @local_irq_restore(i64 %134)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @CIRC_CNT(i32, i32, i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
