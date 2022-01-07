; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunbmac.c_bigmac_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sunbmac.c_bigmac_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bigmac = type { i64, i64 }

@.str = private unnamed_addr constant [19 x i8] c"bigmac_interrupt: \00", align 1
@CREG_STAT = common dso_local global i64 0, align 8
@GLOB_STAT = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"qec_status=%08x bmac_status=%08x\0A\00", align 1
@GLOB_STAT_ER = common dso_local global i32 0, align 4
@GLOB_STAT_BM = common dso_local global i32 0, align 4
@CREG_STAT_ERRORS = common dso_local global i32 0, align 4
@CREG_STAT_TXIRQ = common dso_local global i32 0, align 4
@CREG_STAT_RXIRQ = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @bigmac_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bigmac_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bigmac*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.bigmac*
  store %struct.bigmac* %9, %struct.bigmac** %5, align 8
  %10 = call i32 @DIRQ(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %12 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @CREG_STAT, align 8
  %15 = add nsw i64 %13, %14
  %16 = call i32 @sbus_readl(i64 %15)
  store i32 %16, i32* %7, align 4
  %17 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %18 = getelementptr inbounds %struct.bigmac, %struct.bigmac* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @GLOB_STAT, align 8
  %21 = add nsw i64 %19, %20
  %22 = call i32 @sbus_readl(i64 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load i32, i32* %7, align 4
  %25 = sext i32 %24 to i64
  %26 = inttoptr i64 %25 to i8*
  %27 = call i32 @DIRQ(i8* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @GLOB_STAT_ER, align 4
  %30 = load i32, i32* @GLOB_STAT_BM, align 4
  %31 = or i32 %29, %30
  %32 = and i32 %28, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %39, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @CREG_STAT_ERRORS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %34, %2
  %40 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @bigmac_is_medium_rare(%struct.bigmac* %40, i32 %41, i32 %42)
  br label %44

44:                                               ; preds = %39, %34
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @CREG_STAT_TXIRQ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %51 = call i32 @bigmac_tx(%struct.bigmac* %50)
  br label %52

52:                                               ; preds = %49, %44
  %53 = load i32, i32* %7, align 4
  %54 = load i32, i32* @CREG_STAT_RXIRQ, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %60

57:                                               ; preds = %52
  %58 = load %struct.bigmac*, %struct.bigmac** %5, align 8
  %59 = call i32 @bigmac_rx(%struct.bigmac* %58)
  br label %60

60:                                               ; preds = %57, %52
  %61 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %61
}

declare dso_local i32 @DIRQ(i8*) #1

declare dso_local i32 @sbus_readl(i64) #1

declare dso_local i32 @bigmac_is_medium_rare(%struct.bigmac*, i32, i32) #1

declare dso_local i32 @bigmac_tx(%struct.bigmac*) #1

declare dso_local i32 @bigmac_rx(%struct.bigmac*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
