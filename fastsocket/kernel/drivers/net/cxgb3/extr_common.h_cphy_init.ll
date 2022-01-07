; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_common.h_cphy_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_common.h_cphy_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cphy = type { i32, i8*, %struct.TYPE_2__, %struct.cphy_ops*, %struct.adapter* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }
%struct.adapter = type { i32 }
%struct.cphy_ops = type { i32 }
%struct.mdio_ops = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cphy*, %struct.adapter*, i32, %struct.cphy_ops*, %struct.mdio_ops*, i32, i8*)* @cphy_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cphy_init(%struct.cphy* %0, %struct.adapter* %1, i32 %2, %struct.cphy_ops* %3, %struct.mdio_ops* %4, i32 %5, i8* %6) #0 {
  %8 = alloca %struct.cphy*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.cphy_ops*, align 8
  %12 = alloca %struct.mdio_ops*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  store %struct.cphy* %0, %struct.cphy** %8, align 8
  store %struct.adapter* %1, %struct.adapter** %9, align 8
  store i32 %2, i32* %10, align 4
  store %struct.cphy_ops* %3, %struct.cphy_ops** %11, align 8
  store %struct.mdio_ops* %4, %struct.mdio_ops** %12, align 8
  store i32 %5, i32* %13, align 4
  store i8* %6, i8** %14, align 8
  %15 = load i32, i32* %13, align 4
  %16 = load %struct.cphy*, %struct.cphy** %8, align 8
  %17 = getelementptr inbounds %struct.cphy, %struct.cphy* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 8
  %18 = load %struct.adapter*, %struct.adapter** %9, align 8
  %19 = load %struct.cphy*, %struct.cphy** %8, align 8
  %20 = getelementptr inbounds %struct.cphy, %struct.cphy* %19, i32 0, i32 4
  store %struct.adapter* %18, %struct.adapter** %20, align 8
  %21 = load i8*, i8** %14, align 8
  %22 = load %struct.cphy*, %struct.cphy** %8, align 8
  %23 = getelementptr inbounds %struct.cphy, %struct.cphy* %22, i32 0, i32 1
  store i8* %21, i8** %23, align 8
  %24 = load %struct.cphy_ops*, %struct.cphy_ops** %11, align 8
  %25 = load %struct.cphy*, %struct.cphy** %8, align 8
  %26 = getelementptr inbounds %struct.cphy, %struct.cphy* %25, i32 0, i32 3
  store %struct.cphy_ops* %24, %struct.cphy_ops** %26, align 8
  %27 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %28 = icmp ne %struct.mdio_ops* %27, null
  br i1 %28, label %29, label %58

29:                                               ; preds = %7
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.cphy*, %struct.cphy** %8, align 8
  %32 = getelementptr inbounds %struct.cphy, %struct.cphy* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 8
  %34 = load %struct.cphy_ops*, %struct.cphy_ops** %11, align 8
  %35 = getelementptr inbounds %struct.cphy_ops, %struct.cphy_ops* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.cphy*, %struct.cphy** %8, align 8
  %38 = getelementptr inbounds %struct.cphy, %struct.cphy* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 4
  store i32 %36, i32* %39, align 8
  %40 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %41 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.cphy*, %struct.cphy** %8, align 8
  %44 = getelementptr inbounds %struct.cphy, %struct.cphy* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 3
  store i32 %42, i32* %45, align 4
  %46 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %47 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.cphy*, %struct.cphy** %8, align 8
  %50 = getelementptr inbounds %struct.cphy, %struct.cphy* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 2
  store i32 %48, i32* %51, align 8
  %52 = load %struct.mdio_ops*, %struct.mdio_ops** %12, align 8
  %53 = getelementptr inbounds %struct.mdio_ops, %struct.mdio_ops* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.cphy*, %struct.cphy** %8, align 8
  %56 = getelementptr inbounds %struct.cphy, %struct.cphy* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 1
  store i32 %54, i32* %57, align 4
  br label %58

58:                                               ; preds = %29, %7
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
