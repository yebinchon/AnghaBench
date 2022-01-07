; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_arcofi.c_send_arcofi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_arcofi.c_send_arcofi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { %struct.TYPE_6__, i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32*, i32, i32, i64, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ISAC_MOCR = common dso_local global i32 0, align 4
@ISAC_MOSR = common dso_local global i32 0, align 4
@ISAC_MOX1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @send_arcofi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @send_arcofi(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = call i32 @add_arcofi_timer(%struct.IsdnCardState* %4)
  %6 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %7 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 3
  store i64 0, i64* %9, align 8
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 5
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 4
  store i32 %16, i32* %20, align 8
  %21 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %22 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %27 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 5
  %30 = load %struct.TYPE_4__*, %struct.TYPE_4__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @memcpy(i32* %25, i32 %32, i32 %37)
  %39 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %40 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  switch i32 %43, label %54 [
    i32 0, label %44
    i32 1, label %45
  ]

44:                                               ; preds = %1
  br label %55

45:                                               ; preds = %1
  %46 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %47 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  %52 = load i32, i32* %51, align 4
  %53 = or i32 %52, 64
  store i32 %53, i32* %51, align 4
  br label %55

54:                                               ; preds = %1
  br label %55

55:                                               ; preds = %54, %45, %44
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 15
  store i32 %61, i32* %59, align 4
  %62 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %63 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, 160
  store i32 %67, i32* %65, align 4
  %68 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %69 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %68, i32 0, i32 1
  %70 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %69, align 8
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = load i32, i32* @ISAC_MOCR, align 4
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %74 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = call i32 %70(%struct.IsdnCardState* %71, i32 %72, i32 %77)
  %79 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %80 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %79, i32 0, i32 2
  %81 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %80, align 8
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %83 = load i32, i32* @ISAC_MOSR, align 4
  %84 = call i32 %81(%struct.IsdnCardState* %82, i32 %83)
  store i32 %84, i32* %3, align 4
  %85 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %86 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %85, i32 0, i32 1
  %87 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %86, align 8
  %88 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %89 = load i32, i32* @ISAC_MOX1, align 4
  %90 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %91 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 0
  %94 = load i32*, i32** %93, align 8
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 3
  %99 = load i64, i64* %98, align 8
  %100 = add nsw i64 %99, 1
  store i64 %100, i64* %98, align 8
  %101 = getelementptr inbounds i32, i32* %94, i64 %99
  %102 = load i32, i32* %101, align 4
  %103 = call i32 %87(%struct.IsdnCardState* %88, i32 %89, i32 %102)
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %105 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 2
  %108 = load i32, i32* %107, align 4
  %109 = or i32 %108, 16
  store i32 %109, i32* %107, align 4
  %110 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %111 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %110, i32 0, i32 1
  %112 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %111, align 8
  %113 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %114 = load i32, i32* @ISAC_MOCR, align 4
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %116 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = call i32 %112(%struct.IsdnCardState* %113, i32 %114, i32 %119)
  ret void
}

declare dso_local i32 @add_arcofi_timer(%struct.IsdnCardState*) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
