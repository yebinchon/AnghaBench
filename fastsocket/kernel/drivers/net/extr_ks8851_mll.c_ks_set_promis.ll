; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_set_promis.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_ks8851_mll.c_ks_set_promis.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks_net = type { i32, i64 }

@KS_RXCR1 = common dso_local global i32 0, align 4
@RXCR1_FILTER_MASK = common dso_local global i32 0, align 4
@RXCR1_RXAE = common dso_local global i32 0, align 4
@RXCR1_RXINVF = common dso_local global i32 0, align 4
@RXCR1_RXPAFMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks_net*, i32)* @ks_set_promis to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks_set_promis(%struct.ks_net* %0, i32 %1) #0 {
  %3 = alloca %struct.ks_net*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ks_net* %0, %struct.ks_net** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %8 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %10 = call i32 @ks_stop_rx(%struct.ks_net* %9)
  %11 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %12 = load i32, i32* @KS_RXCR1, align 4
  %13 = call i32 @ks_rdreg16(%struct.ks_net* %11, i32 %12)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* @RXCR1_FILTER_MASK, align 4
  %15 = xor i32 %14, -1
  %16 = load i32, i32* %5, align 4
  %17 = and i32 %16, %15
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %2
  %21 = load i32, i32* @RXCR1_RXAE, align 4
  %22 = load i32, i32* @RXCR1_RXINVF, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* %5, align 4
  %25 = or i32 %24, %23
  store i32 %25, i32* %5, align 4
  br label %30

26:                                               ; preds = %2
  %27 = load i32, i32* @RXCR1_RXPAFMA, align 4
  %28 = load i32, i32* %5, align 4
  %29 = or i32 %28, %27
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %26, %20
  %31 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %32 = load i32, i32* @KS_RXCR1, align 4
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @ks_wrreg16(%struct.ks_net* %31, i32 %32, i32 %33)
  %35 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %36 = getelementptr inbounds %struct.ks_net, %struct.ks_net* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %30
  %40 = load %struct.ks_net*, %struct.ks_net** %3, align 8
  %41 = call i32 @ks_start_rx(%struct.ks_net* %40)
  br label %42

42:                                               ; preds = %39, %30
  ret void
}

declare dso_local i32 @ks_stop_rx(%struct.ks_net*) #1

declare dso_local i32 @ks_rdreg16(%struct.ks_net*, i32) #1

declare dso_local i32 @ks_wrreg16(%struct.ks_net*, i32, i32) #1

declare dso_local i32 @ks_start_rx(%struct.ks_net*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
