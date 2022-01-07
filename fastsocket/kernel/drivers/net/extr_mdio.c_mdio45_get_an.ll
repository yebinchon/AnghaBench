; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mdio.c_mdio45_get_an.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_mdio.c_mdio45_get_an.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mdio_if_info = type { i32 (i32, i32, i32, i32)*, i32, i32 }

@MDIO_MMD_AN = common dso_local global i32 0, align 4
@ADVERTISE_10HALF = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_10FULL = common dso_local global i32 0, align 4
@ADVERTISED_10baseT_Full = common dso_local global i32 0, align 4
@ADVERTISE_100HALF = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Half = common dso_local global i32 0, align 4
@ADVERTISE_100FULL = common dso_local global i32 0, align 4
@ADVERTISED_100baseT_Full = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mdio_if_info*, i32)* @mdio45_get_an to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mdio45_get_an(%struct.mdio_if_info* %0, i32 %1) #0 {
  %3 = alloca %struct.mdio_if_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mdio_if_info* %0, %struct.mdio_if_info** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %5, align 4
  %7 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %8 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %7, i32 0, i32 0
  %9 = load i32 (i32, i32, i32, i32)*, i32 (i32, i32, i32, i32)** %8, align 8
  %10 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %11 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.mdio_if_info*, %struct.mdio_if_info** %3, align 8
  %14 = getelementptr inbounds %struct.mdio_if_info, %struct.mdio_if_info* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 8
  %16 = load i32, i32* @MDIO_MMD_AN, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %9(i32 %12, i32 %15, i32 %16, i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %6, align 4
  %20 = load i32, i32* @ADVERTISE_10HALF, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* @ADVERTISED_10baseT_Half, align 4
  %25 = load i32, i32* %5, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %5, align 4
  br label %27

27:                                               ; preds = %23, %2
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @ADVERTISE_10FULL, align 4
  %30 = and i32 %28, %29
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %27
  %33 = load i32, i32* @ADVERTISED_10baseT_Full, align 4
  %34 = load i32, i32* %5, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %5, align 4
  br label %36

36:                                               ; preds = %32, %27
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ADVERTISE_100HALF, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %36
  %42 = load i32, i32* @ADVERTISED_100baseT_Half, align 4
  %43 = load i32, i32* %5, align 4
  %44 = or i32 %43, %42
  store i32 %44, i32* %5, align 4
  br label %45

45:                                               ; preds = %41, %36
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ADVERTISE_100FULL, align 4
  %48 = and i32 %46, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %45
  %51 = load i32, i32* @ADVERTISED_100baseT_Full, align 4
  %52 = load i32, i32* %5, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %50, %45
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
