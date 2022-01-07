; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_init_link_config.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_t3_hw.c_init_link_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.link_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@SPEED_INVALID = common dso_local global i32 0, align 4
@DUPLEX_INVALID = common dso_local global i32 0, align 4
@PAUSE_RX = common dso_local global i32 0, align 4
@PAUSE_TX = common dso_local global i32 0, align 4
@SUPPORTED_Autoneg = common dso_local global i32 0, align 4
@AUTONEG_ENABLE = common dso_local global i32 0, align 4
@PAUSE_AUTONEG = common dso_local global i32 0, align 4
@AUTONEG_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.link_config*, i32)* @init_link_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_link_config(%struct.link_config* %0, i32 %1) #0 {
  %3 = alloca %struct.link_config*, align 8
  %4 = alloca i32, align 4
  store %struct.link_config* %0, %struct.link_config** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load %struct.link_config*, %struct.link_config** %3, align 8
  %7 = getelementptr inbounds %struct.link_config, %struct.link_config* %6, i32 0, i32 0
  store i32 %5, i32* %7, align 4
  %8 = load i32, i32* @SPEED_INVALID, align 4
  %9 = load %struct.link_config*, %struct.link_config** %3, align 8
  %10 = getelementptr inbounds %struct.link_config, %struct.link_config* %9, i32 0, i32 7
  store i32 %8, i32* %10, align 4
  %11 = load %struct.link_config*, %struct.link_config** %3, align 8
  %12 = getelementptr inbounds %struct.link_config, %struct.link_config* %11, i32 0, i32 8
  store i32 %8, i32* %12, align 4
  %13 = load i32, i32* @DUPLEX_INVALID, align 4
  %14 = load %struct.link_config*, %struct.link_config** %3, align 8
  %15 = getelementptr inbounds %struct.link_config, %struct.link_config* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load %struct.link_config*, %struct.link_config** %3, align 8
  %17 = getelementptr inbounds %struct.link_config, %struct.link_config* %16, i32 0, i32 6
  store i32 %13, i32* %17, align 4
  %18 = load i32, i32* @PAUSE_RX, align 4
  %19 = load i32, i32* @PAUSE_TX, align 4
  %20 = or i32 %18, %19
  %21 = load %struct.link_config*, %struct.link_config** %3, align 8
  %22 = getelementptr inbounds %struct.link_config, %struct.link_config* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.link_config*, %struct.link_config** %3, align 8
  %24 = getelementptr inbounds %struct.link_config, %struct.link_config* %23, i32 0, i32 1
  store i32 %20, i32* %24, align 4
  %25 = load %struct.link_config*, %struct.link_config** %3, align 8
  %26 = getelementptr inbounds %struct.link_config, %struct.link_config* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @SUPPORTED_Autoneg, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %45

31:                                               ; preds = %2
  %32 = load %struct.link_config*, %struct.link_config** %3, align 8
  %33 = getelementptr inbounds %struct.link_config, %struct.link_config* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.link_config*, %struct.link_config** %3, align 8
  %36 = getelementptr inbounds %struct.link_config, %struct.link_config* %35, i32 0, i32 3
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @AUTONEG_ENABLE, align 4
  %38 = load %struct.link_config*, %struct.link_config** %3, align 8
  %39 = getelementptr inbounds %struct.link_config, %struct.link_config* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 4
  %40 = load i32, i32* @PAUSE_AUTONEG, align 4
  %41 = load %struct.link_config*, %struct.link_config** %3, align 8
  %42 = getelementptr inbounds %struct.link_config, %struct.link_config* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %40
  store i32 %44, i32* %42, align 4
  br label %51

45:                                               ; preds = %2
  %46 = load %struct.link_config*, %struct.link_config** %3, align 8
  %47 = getelementptr inbounds %struct.link_config, %struct.link_config* %46, i32 0, i32 3
  store i32 0, i32* %47, align 4
  %48 = load i32, i32* @AUTONEG_DISABLE, align 4
  %49 = load %struct.link_config*, %struct.link_config** %3, align 8
  %50 = getelementptr inbounds %struct.link_config, %struct.link_config* %49, i32 0, i32 4
  store i32 %48, i32* %50, align 4
  br label %51

51:                                               ; preds = %45, %31
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
