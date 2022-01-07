; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_ds3_set_100ft.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/lmc/extr_lmc_media.c_lmc_ds3_set_100ft.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }

@LMC_CTL_CABLE_LENGTH_GT_100FT = common dso_local global i32 0, align 4
@LMC_MII16_DS3_ZERO = common dso_local global i32 0, align 4
@LMC_CTL_CABLE_LENGTH_LT_100FT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32)* @lmc_ds3_set_100ft to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @lmc_ds3_set_100ft(%struct.TYPE_6__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @LMC_CTL_CABLE_LENGTH_GT_100FT, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %19

8:                                                ; preds = %2
  %9 = load i32, i32* @LMC_MII16_DS3_ZERO, align 4
  %10 = xor i32 %9, -1
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* @LMC_CTL_CABLE_LENGTH_GT_100FT, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  store i32 %15, i32* %18, align 4
  br label %34

19:                                               ; preds = %2
  %20 = load i32, i32* %4, align 4
  %21 = load i32, i32* @LMC_CTL_CABLE_LENGTH_LT_100FT, align 4
  %22 = icmp eq i32 %20, %21
  br i1 %22, label %23, label %33

23:                                               ; preds = %19
  %24 = load i32, i32* @LMC_MII16_DS3_ZERO, align 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load i32, i32* @LMC_CTL_CABLE_LENGTH_LT_100FT, align 4
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  br label %33

33:                                               ; preds = %23, %19
  br label %34

34:                                               ; preds = %33, %8
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @lmc_mii_writereg(%struct.TYPE_6__* %35, i32 0, i32 16, i32 %38)
  ret void
}

declare dso_local i32 @lmc_mii_writereg(%struct.TYPE_6__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
