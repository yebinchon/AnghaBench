; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_init_net.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_init_net.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { i32, i32, i32, i64, i64, i64, i32, i32, i32, i32, i64, i64 }

@KS8695_RDLB = common dso_local global i32 0, align 4
@KS8695_TDLB = common dso_local global i32 0, align 4
@ks8695_rx_irq = common dso_local global i32 0, align 4
@ks8695_tx_irq = common dso_local global i32 0, align 4
@ks8695_link_irq = common dso_local global i32 0, align 4
@KS8695_DTXC = common dso_local global i32 0, align 4
@DTXC_TE = common dso_local global i32 0, align 4
@KS8695_DRXC = common dso_local global i32 0, align 4
@DRXC_RE = common dso_local global i32 0, align 4
@KS8695_DRSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ks8695_priv*)* @ks8695_init_net to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ks8695_init_net(%struct.ks8695_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ks8695_priv*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %3, align 8
  %6 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %7 = call i32 @ks8695_refill_rxbuffers(%struct.ks8695_priv* %6)
  %8 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %9 = load i32, i32* @KS8695_RDLB, align 4
  %10 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %11 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %10, i32 0, i32 11
  %12 = load i64, i64* %11, align 8
  %13 = trunc i64 %12 to i32
  %14 = call i32 @ks8695_writereg(%struct.ks8695_priv* %8, i32 %9, i32 %13)
  %15 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %16 = load i32, i32* @KS8695_TDLB, align 4
  %17 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %18 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %17, i32 0, i32 10
  %19 = load i64, i64* %18, align 8
  %20 = trunc i64 %19 to i32
  %21 = call i32 @ks8695_writereg(%struct.ks8695_priv* %15, i32 %16, i32 %20)
  %22 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %23 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %26 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %25, i32 0, i32 9
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ks8695_rx_irq, align 4
  %29 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %30 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %29, i32 0, i32 6
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @ks8695_setup_irq(i32 %24, i32 %27, i32 %28, i32 %31)
  store i32 %32, i32* %4, align 4
  %33 = load i32, i32* %4, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %1
  %36 = load i32, i32* %4, align 4
  store i32 %36, i32* %2, align 4
  br label %103

37:                                               ; preds = %1
  %38 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %39 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %42 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %41, i32 0, i32 8
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @ks8695_tx_irq, align 4
  %45 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %46 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %45, i32 0, i32 6
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @ks8695_setup_irq(i32 %40, i32 %43, i32 %44, i32 %47)
  store i32 %48, i32* %4, align 4
  %49 = load i32, i32* %4, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %37
  %52 = load i32, i32* %4, align 4
  store i32 %52, i32* %2, align 4
  br label %103

53:                                               ; preds = %37
  %54 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %55 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, -1
  br i1 %57, label %58, label %75

58:                                               ; preds = %53
  %59 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %60 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %63 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %62, i32 0, i32 7
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* @ks8695_link_irq, align 4
  %66 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %67 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %66, i32 0, i32 6
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @ks8695_setup_irq(i32 %61, i32 %64, i32 %65, i32 %68)
  store i32 %69, i32* %4, align 4
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %4, align 4
  store i32 %73, i32* %2, align 4
  br label %103

74:                                               ; preds = %58
  br label %75

75:                                               ; preds = %74, %53
  %76 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %77 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %76, i32 0, i32 5
  store i64 0, i64* %77, align 8
  %78 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %79 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %78, i32 0, i32 4
  store i64 0, i64* %79, align 8
  %80 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %81 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %80, i32 0, i32 3
  store i64 0, i64* %81, align 8
  %82 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %83 = load i32, i32* @KS8695_DTXC, align 4
  %84 = call i32 @ks8695_readreg(%struct.ks8695_priv* %82, i32 %83)
  store i32 %84, i32* %5, align 4
  %85 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %86 = load i32, i32* @KS8695_DTXC, align 4
  %87 = load i32, i32* %5, align 4
  %88 = load i32, i32* @DTXC_TE, align 4
  %89 = or i32 %87, %88
  %90 = call i32 @ks8695_writereg(%struct.ks8695_priv* %85, i32 %86, i32 %89)
  %91 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %92 = load i32, i32* @KS8695_DRXC, align 4
  %93 = call i32 @ks8695_readreg(%struct.ks8695_priv* %91, i32 %92)
  store i32 %93, i32* %5, align 4
  %94 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %95 = load i32, i32* @KS8695_DRXC, align 4
  %96 = load i32, i32* %5, align 4
  %97 = load i32, i32* @DRXC_RE, align 4
  %98 = or i32 %96, %97
  %99 = call i32 @ks8695_writereg(%struct.ks8695_priv* %94, i32 %95, i32 %98)
  %100 = load %struct.ks8695_priv*, %struct.ks8695_priv** %3, align 8
  %101 = load i32, i32* @KS8695_DRSC, align 4
  %102 = call i32 @ks8695_writereg(%struct.ks8695_priv* %100, i32 %101, i32 0)
  store i32 0, i32* %2, align 4
  br label %103

103:                                              ; preds = %75, %72, %51, %35
  %104 = load i32, i32* %2, align 4
  ret i32 %104
}

declare dso_local i32 @ks8695_refill_rxbuffers(%struct.ks8695_priv*) #1

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

declare dso_local i32 @ks8695_setup_irq(i32, i32, i32, i32) #1

declare dso_local i32 @ks8695_readreg(%struct.ks8695_priv*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
