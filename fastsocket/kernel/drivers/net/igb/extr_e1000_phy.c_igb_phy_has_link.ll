; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_has_link.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_phy.c_igb_phy_has_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i64*)* }
%struct.e1000_hw.0 = type opaque

@PHY_STATUS = common dso_local global i32 0, align 4
@MII_SR_LINK_STATUS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @igb_phy_has_link(%struct.e1000_hw* %0, i64 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.e1000_hw*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i32* %3, i32** %8, align 8
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  br label %12

12:                                               ; preds = %64, %4
  %13 = load i64, i64* %10, align 8
  %14 = load i64, i64* %6, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %67

16:                                               ; preds = %12
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %18 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %20, align 8
  %22 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %23 = bitcast %struct.e1000_hw* %22 to %struct.e1000_hw.0*
  %24 = load i32, i32* @PHY_STATUS, align 4
  %25 = call i64 %21(%struct.e1000_hw.0* %23, i32 %24, i64* %11)
  store i64 %25, i64* %9, align 8
  %26 = load i64, i64* %9, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %16
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load i64, i64* %7, align 8
  %33 = call i32 @udelay(i64 %32)
  br label %34

34:                                               ; preds = %31, %28, %16
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %36 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i64 (%struct.e1000_hw.0*, i32, i64*)*, i64 (%struct.e1000_hw.0*, i32, i64*)** %38, align 8
  %40 = load %struct.e1000_hw*, %struct.e1000_hw** %5, align 8
  %41 = bitcast %struct.e1000_hw* %40 to %struct.e1000_hw.0*
  %42 = load i32, i32* @PHY_STATUS, align 4
  %43 = call i64 %39(%struct.e1000_hw.0* %41, i32 %42, i64* %11)
  store i64 %43, i64* %9, align 8
  %44 = load i64, i64* %9, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %34
  br label %67

47:                                               ; preds = %34
  %48 = load i64, i64* %11, align 8
  %49 = load i64, i64* @MII_SR_LINK_STATUS, align 8
  %50 = and i64 %48, %49
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %67

53:                                               ; preds = %47
  %54 = load i64, i64* %7, align 8
  %55 = icmp sge i64 %54, 1000
  br i1 %55, label %56, label %60

56:                                               ; preds = %53
  %57 = load i64, i64* %7, align 8
  %58 = sdiv i64 %57, 1000
  %59 = call i32 @mdelay(i64 %58)
  br label %63

60:                                               ; preds = %53
  %61 = load i64, i64* %7, align 8
  %62 = call i32 @udelay(i64 %61)
  br label %63

63:                                               ; preds = %60, %56
  br label %64

64:                                               ; preds = %63
  %65 = load i64, i64* %10, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %10, align 8
  br label %12

67:                                               ; preds = %52, %46, %12
  %68 = load i64, i64* %10, align 8
  %69 = load i64, i64* %6, align 8
  %70 = icmp slt i64 %68, %69
  %71 = zext i1 %70 to i64
  %72 = select i1 %70, i32 1, i32 0
  %73 = load i32*, i32** %8, align 8
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* %9, align 8
  ret i64 %74
}

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @mdelay(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
