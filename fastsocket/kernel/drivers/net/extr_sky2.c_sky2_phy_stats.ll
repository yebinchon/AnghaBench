; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_stats.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_sky2.c_sky2_phy_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.sky2_port = type { i32, %struct.sky2_hw* }
%struct.sky2_hw = type { i32 }

@GM_TXO_OK_HI = common dso_local global i32 0, align 4
@GM_TXO_OK_LO = common dso_local global i32 0, align 4
@GM_RXO_OK_HI = common dso_local global i32 0, align 4
@GM_RXO_OK_LO = common dso_local global i32 0, align 4
@sky2_stats = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sky2_port*, i32*, i32)* @sky2_phy_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sky2_phy_stats(%struct.sky2_port* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.sky2_port*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.sky2_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sky2_port* %0, %struct.sky2_port** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %11 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %10, i32 0, i32 1
  %12 = load %struct.sky2_hw*, %struct.sky2_hw** %11, align 8
  store %struct.sky2_hw* %12, %struct.sky2_hw** %7, align 8
  %13 = load %struct.sky2_port*, %struct.sky2_port** %4, align 8
  %14 = getelementptr inbounds %struct.sky2_port, %struct.sky2_port* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %8, align 4
  %16 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %17 = load i32, i32* %8, align 4
  %18 = load i32, i32* @GM_TXO_OK_HI, align 4
  %19 = call i64 @gma_read32(%struct.sky2_hw* %16, i32 %17, i32 %18)
  %20 = trunc i64 %19 to i32
  %21 = shl i32 %20, 32
  %22 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %23 = load i32, i32* %8, align 4
  %24 = load i32, i32* @GM_TXO_OK_LO, align 4
  %25 = call i64 @gma_read32(%struct.sky2_hw* %22, i32 %23, i32 %24)
  %26 = trunc i64 %25 to i32
  %27 = or i32 %21, %26
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @GM_RXO_OK_HI, align 4
  %33 = call i64 @gma_read32(%struct.sky2_hw* %30, i32 %31, i32 %32)
  %34 = trunc i64 %33 to i32
  %35 = shl i32 %34, 32
  %36 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @GM_RXO_OK_LO, align 4
  %39 = call i64 @gma_read32(%struct.sky2_hw* %36, i32 %37, i32 %38)
  %40 = trunc i64 %39 to i32
  %41 = or i32 %35, %40
  %42 = load i32*, i32** %5, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 %41, i32* %43, align 4
  store i32 2, i32* %9, align 4
  br label %44

44:                                               ; preds = %63, %3
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %66

48:                                               ; preds = %44
  %49 = load %struct.sky2_hw*, %struct.sky2_hw** %7, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** @sky2_stats, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i64 %53
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i64 @gma_read32(%struct.sky2_hw* %49, i32 %50, i32 %56)
  %58 = trunc i64 %57 to i32
  %59 = load i32*, i32** %5, align 8
  %60 = load i32, i32* %9, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %48
  %64 = load i32, i32* %9, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %9, align 4
  br label %44

66:                                               ; preds = %44
  ret void
}

declare dso_local i64 @gma_read32(%struct.sky2_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
