; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/phy/extr_mdio-bitbang.c_mdiobb_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mii_bus = type { %struct.mdiobb_ctrl* }
%struct.mdiobb_ctrl = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.mdiobb_ctrl*, i32)* }

@MDIO_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mii_bus*, i32, i32)* @mdiobb_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdiobb_read(%struct.mii_bus* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mii_bus*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mdiobb_ctrl*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.mii_bus* %0, %struct.mii_bus** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.mii_bus*, %struct.mii_bus** %5, align 8
  %12 = getelementptr inbounds %struct.mii_bus, %struct.mii_bus* %11, i32 0, i32 0
  %13 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %12, align 8
  store %struct.mdiobb_ctrl* %13, %struct.mdiobb_ctrl** %8, align 8
  %14 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %15 = load i32, i32* @MDIO_READ, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @mdiobb_cmd(%struct.mdiobb_ctrl* %14, i32 %15, i32 %16, i32 %17)
  %19 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %20 = getelementptr inbounds %struct.mdiobb_ctrl, %struct.mdiobb_ctrl* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32 (%struct.mdiobb_ctrl*, i32)*, i32 (%struct.mdiobb_ctrl*, i32)** %22, align 8
  %24 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %25 = call i32 %23(%struct.mdiobb_ctrl* %24, i32 0)
  %26 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %27 = call i64 @mdiobb_get_bit(%struct.mdiobb_ctrl* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %40

29:                                               ; preds = %3
  store i32 0, i32* %10, align 4
  br label %30

30:                                               ; preds = %36, %29
  %31 = load i32, i32* %10, align 4
  %32 = icmp slt i32 %31, 32
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %35 = call i64 @mdiobb_get_bit(%struct.mdiobb_ctrl* %34)
  br label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %10, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %10, align 4
  br label %30

39:                                               ; preds = %30
  store i32 65535, i32* %4, align 4
  br label %46

40:                                               ; preds = %3
  %41 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %42 = call i32 @mdiobb_get_num(%struct.mdiobb_ctrl* %41, i32 16)
  store i32 %42, i32* %9, align 4
  %43 = load %struct.mdiobb_ctrl*, %struct.mdiobb_ctrl** %8, align 8
  %44 = call i64 @mdiobb_get_bit(%struct.mdiobb_ctrl* %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %40, %39
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i32 @mdiobb_cmd(%struct.mdiobb_ctrl*, i32, i32, i32) #1

declare dso_local i64 @mdiobb_get_bit(%struct.mdiobb_ctrl*) #1

declare dso_local i32 @mdiobb_get_num(%struct.mdiobb_ctrl*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
