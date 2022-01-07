; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00lib_antenna_diversity.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/rt2x00/extr_rt2x00link.c_rt2x00lib_antenna_diversity.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rt2x00_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.link_ant }
%struct.link_ant = type { i32 }

@ANTENNA_RX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_TX_DIVERSITY = common dso_local global i32 0, align 4
@ANTENNA_MODE_SAMPLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rt2x00_dev*)* @rt2x00lib_antenna_diversity to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rt2x00lib_antenna_diversity(%struct.rt2x00_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rt2x00_dev*, align 8
  %4 = alloca %struct.link_ant*, align 8
  store %struct.rt2x00_dev* %0, %struct.rt2x00_dev** %3, align 8
  %5 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %6 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  store %struct.link_ant* %7, %struct.link_ant** %4, align 8
  %8 = load %struct.link_ant*, %struct.link_ant** %4, align 8
  %9 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @ANTENNA_RX_DIVERSITY, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %24, label %14

14:                                               ; preds = %1
  %15 = load %struct.link_ant*, %struct.link_ant** %4, align 8
  %16 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @ANTENNA_TX_DIVERSITY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %14
  %22 = load %struct.link_ant*, %struct.link_ant** %4, align 8
  %23 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %22, i32 0, i32 0
  store i32 0, i32* %23, align 4
  store i32 1, i32* %2, align 4
  br label %46

24:                                               ; preds = %14, %1
  %25 = load %struct.link_ant*, %struct.link_ant** %4, align 8
  %26 = getelementptr inbounds %struct.link_ant, %struct.link_ant* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @ANTENNA_MODE_SAMPLE, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %24
  %32 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %33 = call i32 @rt2x00lib_antenna_diversity_sample(%struct.rt2x00_dev* %32)
  store i32 1, i32* %2, align 4
  br label %46

34:                                               ; preds = %24
  %35 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %36 = getelementptr inbounds %struct.rt2x00_dev, %struct.rt2x00_dev* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = and i32 %38, 1
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %34
  %42 = load %struct.rt2x00_dev*, %struct.rt2x00_dev** %3, align 8
  %43 = call i32 @rt2x00lib_antenna_diversity_eval(%struct.rt2x00_dev* %42)
  store i32 1, i32* %2, align 4
  br label %46

44:                                               ; preds = %34
  br label %45

45:                                               ; preds = %44
  store i32 0, i32* %2, align 4
  br label %46

46:                                               ; preds = %45, %41, %31, %21
  %47 = load i32, i32* %2, align 4
  ret i32 %47
}

declare dso_local i32 @rt2x00lib_antenna_diversity_sample(%struct.rt2x00_dev*) #1

declare dso_local i32 @rt2x00lib_antenna_diversity_eval(%struct.rt2x00_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
