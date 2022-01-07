; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_interrupt_ipacx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_interrupt_ipacx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32)* }

@IPACX_ISTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @interrupt_ipacx(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  br label %4

4:                                                ; preds = %40, %1
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %6, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %9 = load i32, i32* @IPACX_ISTA, align 4
  %10 = call i32 %7(%struct.IsdnCardState* %8, i32 %9)
  store i32 %10, i32* %3, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %4
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 128
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %18 = call i32 @bch_int(%struct.IsdnCardState* %17, i32 0)
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, 64
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %25 = call i32 @bch_int(%struct.IsdnCardState* %24, i32 1)
  br label %26

26:                                               ; preds = %23, %19
  %27 = load i32, i32* %3, align 4
  %28 = and i32 %27, 1
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %26
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = call i32 @dch_int(%struct.IsdnCardState* %31)
  br label %33

33:                                               ; preds = %30, %26
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 16
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = call i32 @cic_int(%struct.IsdnCardState* %38)
  br label %40

40:                                               ; preds = %37, %33
  br label %4

41:                                               ; preds = %4
  ret void
}

declare dso_local i32 @bch_int(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @dch_int(%struct.IsdnCardState*) #1

declare dso_local i32 @cic_int(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
