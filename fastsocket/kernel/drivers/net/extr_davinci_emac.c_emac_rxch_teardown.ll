; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_rxch_teardown.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_davinci_emac.c_emac_rxch_teardown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.emac_priv = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.device }
%struct.device = type { i32 }

@EMAC_TEARDOWN_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"EMAC: RX teardown aborted\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.emac_priv*, i64)* @emac_rxch_teardown to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @emac_rxch_teardown(%struct.emac_priv* %0, i64 %1) #0 {
  %3 = alloca %struct.emac_priv*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i64, align 8
  store %struct.emac_priv* %0, %struct.emac_priv** %3, align 8
  store i64 %1, i64* %4, align 8
  %7 = load %struct.emac_priv*, %struct.emac_priv** %3, align 8
  %8 = getelementptr inbounds %struct.emac_priv, %struct.emac_priv* %7, i32 0, i32 0
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.device* %10, %struct.device** %5, align 8
  store i64 4294967280, i64* %6, align 8
  br label %11

11:                                               ; preds = %28, %2
  %12 = load i64, i64* %4, align 8
  %13 = call i32 @EMAC_RXCP(i64 %12)
  %14 = call i32 @emac_read(i32 %13)
  %15 = load i32, i32* @EMAC_TEARDOWN_VALUE, align 4
  %16 = and i32 %14, %15
  %17 = load i32, i32* @EMAC_TEARDOWN_VALUE, align 4
  %18 = icmp ne i32 %16, %17
  br i1 %18, label %19, label %29

19:                                               ; preds = %11
  %20 = call i32 (...) @cpu_relax()
  %21 = load i64, i64* %6, align 8
  %22 = add nsw i64 %21, -1
  store i64 %22, i64* %6, align 8
  %23 = load i64, i64* %6, align 8
  %24 = icmp eq i64 0, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load %struct.device*, %struct.device** %5, align 8
  %27 = call i32 @dev_err(%struct.device* %26, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %29

28:                                               ; preds = %19
  br label %11

29:                                               ; preds = %25, %11
  %30 = load i64, i64* %4, align 8
  %31 = call i32 @EMAC_RXCP(i64 %30)
  %32 = load i32, i32* @EMAC_TEARDOWN_VALUE, align 4
  %33 = call i32 @emac_write(i32 %31, i32 %32)
  ret void
}

declare dso_local i32 @emac_read(i32) #1

declare dso_local i32 @EMAC_RXCP(i64) #1

declare dso_local i32 @cpu_relax(...) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local i32 @emac_write(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
