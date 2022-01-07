; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_collect_events.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mv643xx_eth.c_mv643xx_eth_collect_events.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mv643xx_eth_private = type { i32, i32, i32, i32, i32 }

@INT_CAUSE = common dso_local global i32 0, align 4
@INT_EXT = common dso_local global i32 0, align 4
@INT_CAUSE_EXT = common dso_local global i32 0, align 4
@INT_TX_END = common dso_local global i32 0, align 4
@TXQ_COMMAND = common dso_local global i32 0, align 4
@INT_RX = common dso_local global i32 0, align 4
@INT_EXT_LINK_PHY = common dso_local global i32 0, align 4
@INT_EXT_TX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mv643xx_eth_private*)* @mv643xx_eth_collect_events to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mv643xx_eth_collect_events(%struct.mv643xx_eth_private* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mv643xx_eth_private*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.mv643xx_eth_private* %0, %struct.mv643xx_eth_private** %3, align 8
  %6 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %7 = load i32, i32* @INT_CAUSE, align 4
  %8 = call i32 @rdlp(%struct.mv643xx_eth_private* %6, i32 %7)
  %9 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %10 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %8, %11
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %90

16:                                               ; preds = %1
  store i32 0, i32* %5, align 4
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @INT_EXT, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %16
  %22 = load i32, i32* @INT_EXT, align 4
  %23 = xor i32 %22, -1
  %24 = load i32, i32* %4, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %4, align 4
  %26 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %27 = load i32, i32* @INT_CAUSE_EXT, align 4
  %28 = call i32 @rdlp(%struct.mv643xx_eth_private* %26, i32 %27)
  store i32 %28, i32* %5, align 4
  br label %29

29:                                               ; preds = %21, %16
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %60

32:                                               ; preds = %29
  %33 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %34 = load i32, i32* @INT_CAUSE, align 4
  %35 = load i32, i32* %4, align 4
  %36 = xor i32 %35, -1
  %37 = call i32 @wrlp(%struct.mv643xx_eth_private* %33, i32 %34, i32 %36)
  %38 = load i32, i32* %4, align 4
  %39 = load i32, i32* @INT_TX_END, align 4
  %40 = and i32 %38, %39
  %41 = ashr i32 %40, 19
  %42 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %43 = load i32, i32* @TXQ_COMMAND, align 4
  %44 = call i32 @rdlp(%struct.mv643xx_eth_private* %42, i32 %43)
  %45 = and i32 %44, 255
  %46 = xor i32 %45, -1
  %47 = and i32 %41, %46
  %48 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %49 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 4
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @INT_RX, align 4
  %54 = and i32 %52, %53
  %55 = ashr i32 %54, 2
  %56 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %57 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %58, %55
  store i32 %59, i32* %57, align 4
  br label %60

60:                                               ; preds = %32, %29
  %61 = load i32, i32* @INT_EXT_LINK_PHY, align 4
  %62 = load i32, i32* @INT_EXT_TX, align 4
  %63 = or i32 %61, %62
  %64 = load i32, i32* %5, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %5, align 4
  %66 = load i32, i32* %5, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %89

68:                                               ; preds = %60
  %69 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %70 = load i32, i32* @INT_CAUSE_EXT, align 4
  %71 = load i32, i32* %5, align 4
  %72 = xor i32 %71, -1
  %73 = call i32 @wrlp(%struct.mv643xx_eth_private* %69, i32 %70, i32 %72)
  %74 = load i32, i32* %5, align 4
  %75 = load i32, i32* @INT_EXT_LINK_PHY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %68
  %79 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %80 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %79, i32 0, i32 3
  store i32 1, i32* %80, align 4
  br label %81

81:                                               ; preds = %78, %68
  %82 = load i32, i32* %5, align 4
  %83 = load i32, i32* @INT_EXT_TX, align 4
  %84 = and i32 %82, %83
  %85 = load %struct.mv643xx_eth_private*, %struct.mv643xx_eth_private** %3, align 8
  %86 = getelementptr inbounds %struct.mv643xx_eth_private, %struct.mv643xx_eth_private* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, %84
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %81, %60
  store i32 1, i32* %2, align 4
  br label %90

90:                                               ; preds = %89, %15
  %91 = load i32, i32* %2, align 4
  ret i32 %91
}

declare dso_local i32 @rdlp(%struct.mv643xx_eth_private*, i32) #1

declare dso_local i32 @wrlp(%struct.mv643xx_eth_private*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
