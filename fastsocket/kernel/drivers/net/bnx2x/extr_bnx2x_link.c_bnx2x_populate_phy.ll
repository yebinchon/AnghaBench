; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_populate_phy.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_link.c_bnx2x_populate_phy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_phy = type { i32 }

@PORT_HW_CFG_XGXS_EXT_PHY_TYPE_NOT_CONN = common dso_local global i32 0, align 4
@INT_PHY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bnx2x*, i64, i32, i32, i64, %struct.bnx2x_phy*)* @bnx2x_populate_phy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bnx2x_populate_phy(%struct.bnx2x* %0, i64 %1, i32 %2, i32 %3, i64 %4, %struct.bnx2x_phy* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.bnx2x*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.bnx2x_phy*, align 8
  %14 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store %struct.bnx2x_phy* %5, %struct.bnx2x_phy** %13, align 8
  store i32 0, i32* %14, align 4
  %15 = load i32, i32* @PORT_HW_CFG_XGXS_EXT_PHY_TYPE_NOT_CONN, align 4
  %16 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %13, align 8
  %17 = getelementptr inbounds %struct.bnx2x_phy, %struct.bnx2x_phy* %16, i32 0, i32 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @INT_PHY, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %27

21:                                               ; preds = %6
  %22 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %23 = load i32, i32* %10, align 4
  %24 = load i64, i64* %12, align 8
  %25 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %13, align 8
  %26 = call i32 @bnx2x_populate_int_phy(%struct.bnx2x* %22, i32 %23, i64 %24, %struct.bnx2x_phy* %25)
  store i32 %26, i32* %7, align 4
  br label %36

27:                                               ; preds = %6
  %28 = load %struct.bnx2x*, %struct.bnx2x** %8, align 8
  %29 = load i64, i64* %9, align 8
  %30 = load i32, i32* %10, align 4
  %31 = load i32, i32* %11, align 4
  %32 = load i64, i64* %12, align 8
  %33 = load %struct.bnx2x_phy*, %struct.bnx2x_phy** %13, align 8
  %34 = call i32 @bnx2x_populate_ext_phy(%struct.bnx2x* %28, i64 %29, i32 %30, i32 %31, i64 %32, %struct.bnx2x_phy* %33)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  store i32 %35, i32* %7, align 4
  br label %36

36:                                               ; preds = %27, %21
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

declare dso_local i32 @bnx2x_populate_int_phy(%struct.bnx2x*, i32, i64, %struct.bnx2x_phy*) #1

declare dso_local i32 @bnx2x_populate_ext_phy(%struct.bnx2x*, i64, i32, i32, i64, %struct.bnx2x_phy*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
