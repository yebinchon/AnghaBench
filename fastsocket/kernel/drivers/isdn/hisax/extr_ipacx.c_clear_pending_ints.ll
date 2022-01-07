; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_clear_pending_ints.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_ipacx.c_clear_pending_ints.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)* }

@IPACX_MASK = common dso_local global i32 0, align 4
@IPACX_MASKD = common dso_local global i32 0, align 4
@IPACX_MASKB = common dso_local global i32 0, align 4
@IPACX_ISTA = common dso_local global i32 0, align 4
@IPACX_ISTAB = common dso_local global i32 0, align 4
@IPACX_CIR0 = common dso_local global i32 0, align 4
@IPACX_ISTAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @clear_pending_ints to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_pending_ints(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 3
  %6 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %5, align 8
  %7 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %8 = load i32, i32* @IPACX_MASK, align 4
  %9 = call i32 %6(%struct.IsdnCardState* %7, i32 %8, i32 255)
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 3
  %12 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %11, align 8
  %13 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %14 = load i32, i32* @IPACX_MASKD, align 4
  %15 = call i32 %12(%struct.IsdnCardState* %13, i32 %14, i32 255)
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 2
  %18 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %17, align 8
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %20 = load i32, i32* @IPACX_MASKB, align 4
  %21 = call i32 %18(%struct.IsdnCardState* %19, i32 0, i32 %20, i32 255)
  %22 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %23 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %22, i32 0, i32 2
  %24 = load i32 (%struct.IsdnCardState*, i32, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32, i32)** %23, align 8
  %25 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %26 = load i32, i32* @IPACX_MASKB, align 4
  %27 = call i32 %24(%struct.IsdnCardState* %25, i32 1, i32 %26, i32 255)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 0
  %30 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %29, align 8
  %31 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %32 = load i32, i32* @IPACX_ISTA, align 4
  %33 = call i32 %30(%struct.IsdnCardState* %31, i32 %32)
  store i32 %33, i32* %3, align 4
  %34 = load i32, i32* %3, align 4
  %35 = and i32 %34, 128
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %1
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 1
  %40 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %39, align 8
  %41 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %42 = load i32, i32* @IPACX_ISTAB, align 4
  %43 = call i32 %40(%struct.IsdnCardState* %41, i32 0, i32 %42)
  br label %44

44:                                               ; preds = %37, %1
  %45 = load i32, i32* %3, align 4
  %46 = and i32 %45, 64
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %55

48:                                               ; preds = %44
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 1
  %51 = load i32 (%struct.IsdnCardState*, i32, i32)*, i32 (%struct.IsdnCardState*, i32, i32)** %50, align 8
  %52 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %53 = load i32, i32* @IPACX_ISTAB, align 4
  %54 = call i32 %51(%struct.IsdnCardState* %52, i32 1, i32 %53)
  br label %55

55:                                               ; preds = %48, %44
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 16
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %66

59:                                               ; preds = %55
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %61 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %60, i32 0, i32 0
  %62 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %61, align 8
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %64 = load i32, i32* @IPACX_CIR0, align 4
  %65 = call i32 %62(%struct.IsdnCardState* %63, i32 %64)
  br label %66

66:                                               ; preds = %59, %55
  %67 = load i32, i32* %3, align 4
  %68 = and i32 %67, 1
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %77

70:                                               ; preds = %66
  %71 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %72 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %71, i32 0, i32 0
  %73 = load i32 (%struct.IsdnCardState*, i32)*, i32 (%struct.IsdnCardState*, i32)** %72, align 8
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %75 = load i32, i32* @IPACX_ISTAD, align 4
  %76 = call i32 %73(%struct.IsdnCardState* %74, i32 %75)
  br label %77

77:                                               ; preds = %70, %66
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
