; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/arm/extr_ks8695net.c_ks8695_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ks8695_priv = type { i32 }

@watchdog = common dso_local global i32 0, align 4
@KS8695_DTXC = common dso_local global i32 0, align 4
@DTXC_TRST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Timeout waiting for DMA engines to reset\0A\00", align 1
@KS8695_DRXC = common dso_local global i32 0, align 4
@DRXC_RU = common dso_local global i32 0, align 4
@DRXC_RB = common dso_local global i32 0, align 4
@DTXC_TEP = common dso_local global i32 0, align 4
@DTXC_TAC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ks8695_priv*)* @ks8695_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ks8695_reset(%struct.ks8695_priv* %0) #0 {
  %2 = alloca %struct.ks8695_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.ks8695_priv* %0, %struct.ks8695_priv** %2, align 8
  %4 = load i32, i32* @watchdog, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %6 = load i32, i32* @KS8695_DTXC, align 4
  %7 = load i32, i32* @DTXC_TRST, align 4
  %8 = call i32 @ks8695_writereg(%struct.ks8695_priv* %5, i32 %6, i32 %7)
  br label %9

9:                                                ; preds = %21, %1
  %10 = load i32, i32* %3, align 4
  %11 = add nsw i32 %10, -1
  store i32 %11, i32* %3, align 4
  %12 = icmp ne i32 %10, 0
  br i1 %12, label %13, label %23

13:                                               ; preds = %9
  %14 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %15 = load i32, i32* @KS8695_DTXC, align 4
  %16 = call i32 @ks8695_readreg(%struct.ks8695_priv* %14, i32 %15)
  %17 = load i32, i32* @DTXC_TRST, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %13
  br label %23

21:                                               ; preds = %13
  %22 = call i32 @msleep(i32 1)
  br label %9

23:                                               ; preds = %20, %9
  %24 = load i32, i32* %3, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %28 = getelementptr inbounds %struct.ks8695_priv, %struct.ks8695_priv* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_crit(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23
  %32 = call i32 @msleep(i32 10)
  %33 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %34 = load i32, i32* @KS8695_DRXC, align 4
  %35 = load i32, i32* @DRXC_RU, align 4
  %36 = load i32, i32* @DRXC_RB, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @ks8695_writereg(%struct.ks8695_priv* %33, i32 %34, i32 %37)
  %39 = load %struct.ks8695_priv*, %struct.ks8695_priv** %2, align 8
  %40 = load i32, i32* @KS8695_DTXC, align 4
  %41 = load i32, i32* @DTXC_TEP, align 4
  %42 = load i32, i32* @DTXC_TAC, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @ks8695_writereg(%struct.ks8695_priv* %39, i32 %40, i32 %43)
  ret void
}

declare dso_local i32 @ks8695_writereg(%struct.ks8695_priv*, i32, i32) #1

declare dso_local i32 @ks8695_readreg(%struct.ks8695_priv*, i32) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @dev_crit(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
