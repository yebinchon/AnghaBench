; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_load_samples.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_load_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.b43_phy_n* }
%struct.b43_phy_n = type { i64 }
%struct.b43_c32 = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"allocation for samples loading failed\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, %struct.b43_c32*, i32)* @b43_nphy_load_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_load_samples(%struct.b43_wldev* %0, %struct.b43_c32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_wldev*, align 8
  %6 = alloca %struct.b43_c32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.b43_phy_n*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.b43_wldev* %0, %struct.b43_wldev** %5, align 8
  store %struct.b43_c32* %1, %struct.b43_c32** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %12 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.b43_phy_n*, %struct.b43_phy_n** %13, align 8
  store %struct.b43_phy_n* %14, %struct.b43_phy_n** %8, align 8
  %15 = load i32, i32* %7, align 4
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call i32* @kzalloc(i32 %18, i32 %19)
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %25 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @b43err(i32 %26, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %87

30:                                               ; preds = %3
  %31 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %32 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %37 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %36, i32 1)
  br label %38

38:                                               ; preds = %35, %30
  store i32 0, i32* %9, align 4
  br label %39

39:                                               ; preds = %68, %38
  %40 = load i32, i32* %9, align 4
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %43, label %71

43:                                               ; preds = %39
  %44 = load %struct.b43_c32*, %struct.b43_c32** %6, align 8
  %45 = load i32, i32* %9, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %44, i64 %46
  %48 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = and i32 %49, 1047552
  %51 = load i32*, i32** %10, align 8
  %52 = load i32, i32* %9, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 %50, i32* %54, align 4
  %55 = load %struct.b43_c32*, %struct.b43_c32** %6, align 8
  %56 = load i32, i32* %9, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %55, i64 %57
  %59 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = and i32 %60, 1023
  %62 = load i32*, i32** %10, align 8
  %63 = load i32, i32* %9, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %62, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = or i32 %66, %61
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %43
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %39

71:                                               ; preds = %39
  %72 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %73 = call i32 @B43_NTAB32(i32 17, i32 0)
  %74 = load i32, i32* %7, align 4
  %75 = load i32*, i32** %10, align 8
  %76 = call i32 @b43_ntab_write_bulk(%struct.b43_wldev* %72, i32 %73, i32 %74, i32* %75)
  %77 = load i32*, i32** %10, align 8
  %78 = call i32 @kfree(i32* %77)
  %79 = load %struct.b43_phy_n*, %struct.b43_phy_n** %8, align 8
  %80 = getelementptr inbounds %struct.b43_phy_n, %struct.b43_phy_n* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %71
  %84 = load %struct.b43_wldev*, %struct.b43_wldev** %5, align 8
  %85 = call i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev* %84, i32 0)
  br label %86

86:                                               ; preds = %83, %71
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %86, %23
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @b43_nphy_stay_in_carrier_search(%struct.b43_wldev*, i32) #1

declare dso_local i32 @b43_ntab_write_bulk(%struct.b43_wldev*, i32, i32, i32*) #1

declare dso_local i32 @B43_NTAB32(i32, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
