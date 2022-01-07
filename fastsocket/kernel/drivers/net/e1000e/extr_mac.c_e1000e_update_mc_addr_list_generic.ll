; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_update_mc_addr_list_generic.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/e1000e/extr_mac.c_e1000e_update_mc_addr_list_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@E1000_MTA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000e_update_mc_addr_list_generic(%struct.e1000_hw* %0, i32* %1, i64 %2) #0 {
  %4 = alloca %struct.e1000_hw*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %4, align 8
  store i32* %1, i32** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %12 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = call i32 @memset(i32** %13, i32 0, i32 8)
  store i32 0, i32* %10, align 4
  br label %15

15:                                               ; preds = %50, %3
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = load i64, i64* %6, align 8
  %19 = icmp slt i64 %17, %18
  br i1 %19, label %20, label %53

20:                                               ; preds = %15
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %22 = load i32*, i32** %5, align 8
  %23 = call i64 @e1000_hash_mc_addr(%struct.e1000_hw* %21, i32* %22)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = ashr i64 %24, 5
  %26 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %27 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = sub nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = and i64 %25, %31
  store i64 %32, i64* %9, align 8
  %33 = load i64, i64* %7, align 8
  %34 = and i64 %33, 31
  store i64 %34, i64* %8, align 8
  %35 = load i64, i64* %8, align 8
  %36 = trunc i64 %35 to i32
  %37 = shl i32 1, %36
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = load i64, i64* %9, align 8
  %43 = getelementptr inbounds i32, i32* %41, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %37
  store i32 %45, i32* %43, align 4
  %46 = load i32, i32* @ETH_ALEN, align 4
  %47 = load i32*, i32** %5, align 8
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds i32, i32* %47, i64 %48
  store i32* %49, i32** %5, align 8
  br label %50

50:                                               ; preds = %20
  %51 = load i32, i32* %10, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %10, align 4
  br label %15

53:                                               ; preds = %15
  %54 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %55 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 8
  %58 = sub nsw i32 %57, 1
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %75, %53
  %60 = load i32, i32* %10, align 4
  %61 = icmp sge i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %59
  %63 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %64 = load i32, i32* @E1000_MTA, align 4
  %65 = load i32, i32* %10, align 4
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %4, align 8
  %67 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %10, align 4
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i32, i32* %69, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw* %63, i32 %64, i32 %65, i32 %73)
  br label %75

75:                                               ; preds = %62
  %76 = load i32, i32* %10, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %10, align 4
  br label %59

78:                                               ; preds = %59
  %79 = call i32 (...) @e1e_flush()
  ret void
}

declare dso_local i32 @memset(i32**, i32, i32) #1

declare dso_local i64 @e1000_hash_mc_addr(%struct.e1000_hw*, i32*) #1

declare dso_local i32 @E1000_WRITE_REG_ARRAY(%struct.e1000_hw*, i32, i32, i32) #1

declare dso_local i32 @e1e_flush(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
