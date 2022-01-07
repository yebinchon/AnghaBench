; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx.c_inithscxisac.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_hscx.c_inithscxisac.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)* }

@ISAC_MASK = common dso_local global i32 0, align 4
@HSCX_MASK = common dso_local global i32 0, align 4
@ISAC_CMDR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @inithscxisac(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, 1
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %17

8:                                                ; preds = %2
  %9 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %10 = call i32 @clear_pending_isac_ints(%struct.IsdnCardState* %9)
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %12 = call i32 @clear_pending_hscx_ints(%struct.IsdnCardState* %11)
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %14 = call i32 @initisac(%struct.IsdnCardState* %13)
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %16 = call i32 @inithscx(%struct.IsdnCardState* %15)
  br label %17

17:                                               ; preds = %8, %2
  %18 = load i32, i32* %4, align 4
  %19 = and i32 %18, 2
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %46

21:                                               ; preds = %17
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 0
  %24 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %23, align 8
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %26 = load i32, i32* @ISAC_MASK, align 4
  %27 = call i32 %24(%struct.IsdnCardState* %25, i32 %26, i32 0)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 1
  %30 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %29, align 8
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %32 = load i32, i32* @HSCX_MASK, align 4
  %33 = call i32 %30(%struct.IsdnCardState* %31, i32 0, i32 %32, i32 0)
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 1
  %36 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %35, align 8
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %38 = load i32, i32* @HSCX_MASK, align 4
  %39 = call i32 %36(%struct.IsdnCardState* %37, i32 1, i32 %38, i32 0)
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 0
  %42 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %41, align 8
  %43 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %44 = load i32, i32* @ISAC_CMDR, align 4
  %45 = call i32 %42(%struct.IsdnCardState* %43, i32 %44, i32 65)
  br label %46

46:                                               ; preds = %21, %17
  ret void
}

declare dso_local i32 @clear_pending_isac_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @clear_pending_hscx_ints(%struct.IsdnCardState*) #1

declare dso_local i32 @initisac(%struct.IsdnCardState*) #1

declare dso_local i32 @inithscx(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
