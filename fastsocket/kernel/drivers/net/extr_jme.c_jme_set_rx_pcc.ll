; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_rx_pcc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_jme.c_jme_set_rx_pcc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jme_adapter = type { i32 }

@JME_PCCRX0 = common dso_local global i32 0, align 4
@PCC_OFF_TO = common dso_local global i32 0, align 4
@PCCRXTO_SHIFT = common dso_local global i32 0, align 4
@PCCRXTO_MASK = common dso_local global i32 0, align 4
@PCC_OFF_CNT = common dso_local global i32 0, align 4
@PCCRX_SHIFT = common dso_local global i32 0, align 4
@PCCRX_MASK = common dso_local global i32 0, align 4
@PCC_P1_TO = common dso_local global i32 0, align 4
@PCC_P1_CNT = common dso_local global i32 0, align 4
@PCC_P2_TO = common dso_local global i32 0, align 4
@PCC_P2_CNT = common dso_local global i32 0, align 4
@PCC_P3_TO = common dso_local global i32 0, align 4
@PCC_P3_CNT = common dso_local global i32 0, align 4
@JME_FLAG_POLL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"Switched to PCC_P%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.jme_adapter*, i32)* @jme_set_rx_pcc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @jme_set_rx_pcc(%struct.jme_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.jme_adapter*, align 8
  %4 = alloca i32, align 4
  store %struct.jme_adapter* %0, %struct.jme_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  switch i32 %5, label %66 [
    i32 131, label %6
    i32 130, label %21
    i32 129, label %36
    i32 128, label %51
  ]

6:                                                ; preds = %2
  %7 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %8 = load i32, i32* @JME_PCCRX0, align 4
  %9 = load i32, i32* @PCC_OFF_TO, align 4
  %10 = load i32, i32* @PCCRXTO_SHIFT, align 4
  %11 = shl i32 %9, %10
  %12 = load i32, i32* @PCCRXTO_MASK, align 4
  %13 = and i32 %11, %12
  %14 = load i32, i32* @PCC_OFF_CNT, align 4
  %15 = load i32, i32* @PCCRX_SHIFT, align 4
  %16 = shl i32 %14, %15
  %17 = load i32, i32* @PCCRX_MASK, align 4
  %18 = and i32 %16, %17
  %19 = or i32 %13, %18
  %20 = call i32 @jwrite32(%struct.jme_adapter* %7, i32 %8, i32 %19)
  br label %67

21:                                               ; preds = %2
  %22 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %23 = load i32, i32* @JME_PCCRX0, align 4
  %24 = load i32, i32* @PCC_P1_TO, align 4
  %25 = load i32, i32* @PCCRXTO_SHIFT, align 4
  %26 = shl i32 %24, %25
  %27 = load i32, i32* @PCCRXTO_MASK, align 4
  %28 = and i32 %26, %27
  %29 = load i32, i32* @PCC_P1_CNT, align 4
  %30 = load i32, i32* @PCCRX_SHIFT, align 4
  %31 = shl i32 %29, %30
  %32 = load i32, i32* @PCCRX_MASK, align 4
  %33 = and i32 %31, %32
  %34 = or i32 %28, %33
  %35 = call i32 @jwrite32(%struct.jme_adapter* %22, i32 %23, i32 %34)
  br label %67

36:                                               ; preds = %2
  %37 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %38 = load i32, i32* @JME_PCCRX0, align 4
  %39 = load i32, i32* @PCC_P2_TO, align 4
  %40 = load i32, i32* @PCCRXTO_SHIFT, align 4
  %41 = shl i32 %39, %40
  %42 = load i32, i32* @PCCRXTO_MASK, align 4
  %43 = and i32 %41, %42
  %44 = load i32, i32* @PCC_P2_CNT, align 4
  %45 = load i32, i32* @PCCRX_SHIFT, align 4
  %46 = shl i32 %44, %45
  %47 = load i32, i32* @PCCRX_MASK, align 4
  %48 = and i32 %46, %47
  %49 = or i32 %43, %48
  %50 = call i32 @jwrite32(%struct.jme_adapter* %37, i32 %38, i32 %49)
  br label %67

51:                                               ; preds = %2
  %52 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %53 = load i32, i32* @JME_PCCRX0, align 4
  %54 = load i32, i32* @PCC_P3_TO, align 4
  %55 = load i32, i32* @PCCRXTO_SHIFT, align 4
  %56 = shl i32 %54, %55
  %57 = load i32, i32* @PCCRXTO_MASK, align 4
  %58 = and i32 %56, %57
  %59 = load i32, i32* @PCC_P3_CNT, align 4
  %60 = load i32, i32* @PCCRX_SHIFT, align 4
  %61 = shl i32 %59, %60
  %62 = load i32, i32* @PCCRX_MASK, align 4
  %63 = and i32 %61, %62
  %64 = or i32 %58, %63
  %65 = call i32 @jwrite32(%struct.jme_adapter* %52, i32 %53, i32 %64)
  br label %67

66:                                               ; preds = %2
  br label %67

67:                                               ; preds = %66, %51, %36, %21, %6
  %68 = call i32 (...) @wmb()
  %69 = load i32, i32* @JME_FLAG_POLL, align 4
  %70 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %71 = getelementptr inbounds %struct.jme_adapter, %struct.jme_adapter* %70, i32 0, i32 0
  %72 = call i32 @test_bit(i32 %69, i32* %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %67
  %75 = load %struct.jme_adapter*, %struct.jme_adapter** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @msg_rx_status(%struct.jme_adapter* %75, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %76)
  br label %78

78:                                               ; preds = %74, %67
  ret void
}

declare dso_local i32 @jwrite32(%struct.jme_adapter*, i32, i32) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @msg_rx_status(%struct.jme_adapter*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
