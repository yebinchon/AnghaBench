; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_shm_tssi_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_common.c_b43_phy_shm_tssi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32 }

@B43_SHM_SH_TSSI_CCK = common dso_local global i64 0, align 8
@B43_SHM_SHARED = common dso_local global i32 0, align 4
@B43_TSSI_MAX = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@B43_SHM_SH_HOSTF1 = common dso_local global i32 0, align 4
@B43_HF_CCKBOOST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @b43_phy_shm_tssi_read(%struct.b43_wldev* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @B43_SHM_SH_TSSI_CCK, align 8
  %15 = icmp ne i64 %13, %14
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %6, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %18 = load i32, i32* @B43_SHM_SHARED, align 4
  %19 = load i64, i64* %5, align 8
  %20 = call i32 @b43_shm_read32(%struct.b43_wldev* %17, i32 %18, i64 %19)
  store i32 %20, i32* %12, align 4
  %21 = load i32, i32* %12, align 4
  %22 = and i32 %21, 255
  store i32 %22, i32* %7, align 4
  %23 = load i32, i32* %12, align 4
  %24 = ashr i32 %23, 8
  %25 = and i32 %24, 255
  store i32 %25, i32* %8, align 4
  %26 = load i32, i32* %12, align 4
  %27 = ashr i32 %26, 16
  %28 = and i32 %27, 255
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %12, align 4
  %30 = ashr i32 %29, 24
  %31 = and i32 %30, 255
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %7, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %59, label %34

34:                                               ; preds = %2
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @B43_TSSI_MAX, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %59, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %59, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* @B43_TSSI_MAX, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %59, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* %9, align 4
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %45
  %49 = load i32, i32* %9, align 4
  %50 = load i32, i32* @B43_TSSI_MAX, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %59, label %52

52:                                               ; preds = %48
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* @B43_TSSI_MAX, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %62

59:                                               ; preds = %55, %52, %48, %45, %41, %38, %34, %2
  %60 = load i32, i32* @ENOENT, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %3, align 4
  br label %125

62:                                               ; preds = %55
  %63 = load i32, i32* @B43_TSSI_MAX, align 4
  %64 = load i32, i32* @B43_TSSI_MAX, align 4
  %65 = shl i32 %64, 8
  %66 = or i32 %63, %65
  %67 = load i32, i32* @B43_TSSI_MAX, align 4
  %68 = shl i32 %67, 16
  %69 = or i32 %66, %68
  %70 = load i32, i32* @B43_TSSI_MAX, align 4
  %71 = shl i32 %70, 24
  %72 = or i32 %69, %71
  store i32 %72, i32* %12, align 4
  %73 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %74 = load i32, i32* @B43_SHM_SHARED, align 4
  %75 = load i64, i64* %5, align 8
  %76 = load i32, i32* %12, align 4
  %77 = call i32 @b43_shm_write32(%struct.b43_wldev* %73, i32 %74, i64 %75, i32 %76)
  %78 = load i32, i32* %6, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %93

80:                                               ; preds = %62
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 32
  %83 = and i32 %82, 63
  store i32 %83, i32* %7, align 4
  %84 = load i32, i32* %8, align 4
  %85 = add i32 %84, 32
  %86 = and i32 %85, 63
  store i32 %86, i32* %8, align 4
  %87 = load i32, i32* %9, align 4
  %88 = add i32 %87, 32
  %89 = and i32 %88, 63
  store i32 %89, i32* %9, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add i32 %90, 32
  %92 = and i32 %91, 63
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %80, %62
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %8, align 4
  %96 = add i32 %94, %95
  %97 = load i32, i32* %9, align 4
  %98 = add i32 %96, %97
  %99 = load i32, i32* %10, align 4
  %100 = add i32 %98, %99
  %101 = add i32 %100, 2
  %102 = udiv i32 %101, 4
  store i32 %102, i32* %11, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %93
  %106 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %107 = load i32, i32* @B43_SHM_SHARED, align 4
  %108 = load i32, i32* @B43_SHM_SH_HOSTF1, align 4
  %109 = call i32 @b43_shm_read16(%struct.b43_wldev* %106, i32 %107, i32 %108)
  %110 = load i32, i32* @B43_HF_CCKBOOST, align 4
  %111 = and i32 %109, %110
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %122

113:                                              ; preds = %105
  %114 = load i32, i32* %11, align 4
  %115 = icmp uge i32 %114, 13
  br i1 %115, label %116, label %119

116:                                              ; preds = %113
  %117 = load i32, i32* %11, align 4
  %118 = sub i32 %117, 13
  br label %120

119:                                              ; preds = %113
  br label %120

120:                                              ; preds = %119, %116
  %121 = phi i32 [ %118, %116 ], [ 0, %119 ]
  store i32 %121, i32* %11, align 4
  br label %122

122:                                              ; preds = %120, %105
  br label %123

123:                                              ; preds = %122, %93
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %3, align 4
  br label %125

125:                                              ; preds = %123, %59
  %126 = load i32, i32* %3, align 4
  ret i32 %126
}

declare dso_local i32 @b43_shm_read32(%struct.b43_wldev*, i32, i64) #1

declare dso_local i32 @b43_shm_write32(%struct.b43_wldev*, i32, i64, i32) #1

declare dso_local i32 @b43_shm_read16(%struct.b43_wldev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
