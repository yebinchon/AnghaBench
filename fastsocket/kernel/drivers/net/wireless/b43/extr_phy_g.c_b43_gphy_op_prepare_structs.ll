; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_prepare_structs.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_g.c_b43_gphy_op_prepare_structs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { %struct.b43_phy }
%struct.b43_phy = type { %struct.b43_phy_g* }
%struct.b43_phy_g = type { i8*, i32, i32*, i32*, i32, i32, i32, i32, i32, %struct.b43_phy_g*, %struct.b43_txpower_lo_control* }
%struct.b43_txpower_lo_control = type { i32, i32 }

@B43_INTERFMODE_NONE = common dso_local global i32 0, align 4
@B43_OFDMTAB_DIRECTION_UNKNOWN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.b43_wldev*)* @b43_gphy_op_prepare_structs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @b43_gphy_op_prepare_structs(%struct.b43_wldev* %0) #0 {
  %2 = alloca %struct.b43_wldev*, align 8
  %3 = alloca %struct.b43_phy*, align 8
  %4 = alloca %struct.b43_phy_g*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.b43_txpower_lo_control*, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %2, align 8
  %9 = load %struct.b43_wldev*, %struct.b43_wldev** %2, align 8
  %10 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %9, i32 0, i32 0
  store %struct.b43_phy* %10, %struct.b43_phy** %3, align 8
  %11 = load %struct.b43_phy*, %struct.b43_phy** %3, align 8
  %12 = getelementptr inbounds %struct.b43_phy, %struct.b43_phy* %11, i32 0, i32 0
  %13 = load %struct.b43_phy_g*, %struct.b43_phy_g** %12, align 8
  store %struct.b43_phy_g* %13, %struct.b43_phy_g** %4, align 8
  %14 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %15 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %14, i32 0, i32 0
  %16 = load i8*, i8** %15, align 8
  store i8* %16, i8** %5, align 8
  %17 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %18 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %6, align 4
  %20 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %21 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %20, i32 0, i32 10
  %22 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %21, align 8
  store %struct.b43_txpower_lo_control* %22, %struct.b43_txpower_lo_control** %7, align 8
  %23 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %24 = call i32 @memset(%struct.b43_phy_g* %23, i32 0, i32 72)
  %25 = load i8*, i8** %5, align 8
  %26 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %27 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %26, i32 0, i32 0
  store i8* %25, i8** %27, align 8
  %28 = load i32, i32* %6, align 4
  %29 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %30 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 8
  %31 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %32 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %33 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %32, i32 0, i32 10
  store %struct.b43_txpower_lo_control* %31, %struct.b43_txpower_lo_control** %33, align 8
  %34 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %35 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %34, i32 0, i32 9
  %36 = load %struct.b43_phy_g*, %struct.b43_phy_g** %35, align 8
  %37 = call i32 @memset(%struct.b43_phy_g* %36, i32 255, i32 8)
  store i32 0, i32* %8, align 4
  br label %38

38:                                               ; preds = %52, %1
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %41 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @ARRAY_SIZE(i32* %42)
  %44 = icmp ult i32 %39, %43
  br i1 %44, label %45, label %55

45:                                               ; preds = %38
  %46 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %47 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %8, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 -1000, i32* %51, align 4
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %8, align 4
  %54 = add i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %38

55:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  br label %56

56:                                               ; preds = %71, %55
  %57 = load i32, i32* %8, align 4
  %58 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %59 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %58, i32 0, i32 3
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @ARRAY_SIZE(i32* %60)
  %62 = icmp ult i32 %57, %61
  br i1 %62, label %63, label %74

63:                                               ; preds = %56
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %66 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %65, i32 0, i32 3
  %67 = load i32*, i32** %66, align 8
  %68 = load i32, i32* %8, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds i32, i32* %67, i64 %69
  store i32 %64, i32* %70, align 4
  br label %71

71:                                               ; preds = %63
  %72 = load i32, i32* %8, align 4
  %73 = add i32 %72, 1
  store i32 %73, i32* %8, align 4
  br label %56

74:                                               ; preds = %56
  %75 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %76 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %75, i32 0, i32 4
  store i32 65535, i32* %76, align 8
  %77 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %78 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %77, i32 0, i32 5
  store i32 65535, i32* %78, align 4
  %79 = load i32, i32* @B43_INTERFMODE_NONE, align 4
  %80 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %81 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %80, i32 0, i32 8
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* @B43_OFDMTAB_DIRECTION_UNKNOWN, align 4
  %83 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %84 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %83, i32 0, i32 7
  store i32 %82, i32* %84, align 4
  %85 = load %struct.b43_phy_g*, %struct.b43_phy_g** %4, align 8
  %86 = getelementptr inbounds %struct.b43_phy_g, %struct.b43_phy_g* %85, i32 0, i32 6
  store i32 255, i32* %86, align 8
  %87 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %88 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %87, i32 0, i32 0
  store i32 255, i32* %88, align 4
  %89 = load %struct.b43_txpower_lo_control*, %struct.b43_txpower_lo_control** %7, align 8
  %90 = getelementptr inbounds %struct.b43_txpower_lo_control, %struct.b43_txpower_lo_control* %89, i32 0, i32 1
  %91 = call i32 @INIT_LIST_HEAD(i32* %90)
  ret void
}

declare dso_local i32 @memset(%struct.b43_phy_g*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
