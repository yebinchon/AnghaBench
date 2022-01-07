; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_rcv_mbox.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_isar.c_rcv_mbox.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)* }
%struct.isar_reg = type { i32 }

@ISAR_RADR = common dso_local global i32 0, align 4
@ISAR_MBOX = common dso_local global i32 0, align 4
@ISAR_IIA = common dso_local global i32 0, align 4
@L1_DEB_HSCX_FIFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, %struct.isar_reg*, i32*)* @rcv_mbox to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rcv_mbox(%struct.IsdnCardState* %0, %struct.isar_reg* %1, i32* %2) #0 {
  %4 = alloca %struct.IsdnCardState*, align 8
  %5 = alloca %struct.isar_reg*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %4, align 8
  store %struct.isar_reg* %1, %struct.isar_reg** %5, align 8
  store i32* %2, i32** %6, align 8
  %8 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %9 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %8, i32 0, i32 1
  %10 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %9, align 8
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %12 = load i32, i32* @ISAR_RADR, align 4
  %13 = call i32 %10(%struct.IsdnCardState* %11, i32 1, i32 %12, i32 0)
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br i1 %15, label %16, label %51

16:                                               ; preds = %3
  %17 = load %struct.isar_reg*, %struct.isar_reg** %5, align 8
  %18 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %51

21:                                               ; preds = %16
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 2
  %24 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %23, align 8
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %26 = load i32, i32* @ISAR_MBOX, align 4
  %27 = call i32 %24(%struct.IsdnCardState* %25, i32 1, i32 %26)
  %28 = load i32*, i32** %6, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  store i32 1, i32* %7, align 4
  br label %30

30:                                               ; preds = %47, %21
  %31 = load i32, i32* %7, align 4
  %32 = load %struct.isar_reg*, %struct.isar_reg** %5, align 8
  %33 = getelementptr inbounds %struct.isar_reg, %struct.isar_reg* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %31, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %30
  %37 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %38 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %37, i32 0, i32 2
  %39 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %38, align 8
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %41 = load i32, i32* @ISAR_MBOX, align 4
  %42 = call i32 %39(%struct.IsdnCardState* %40, i32 2, i32 %41)
  %43 = load i32*, i32** %6, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %30

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50, %16, %3
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %53 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %52, i32 0, i32 1
  %54 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %53, align 8
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %4, align 8
  %56 = load i32, i32* @ISAR_IIA, align 4
  %57 = call i32 %54(%struct.IsdnCardState* %55, i32 1, i32 %56, i32 0)
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
