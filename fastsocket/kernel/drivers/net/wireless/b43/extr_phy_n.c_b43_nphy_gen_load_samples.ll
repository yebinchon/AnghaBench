; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_gen_load_samples.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_phy_n.c_b43_nphy_gen_load_samples.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_wldev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.b43_c32 = type { i32, i32 }

@B43_NPHY_BBCFG = common dso_local global i32 0, align 4
@B43_NPHY_BBCFG_RSTRX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"allocation for samples generation failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_wldev*, i32, i32, i32)* @b43_nphy_gen_load_samples to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @b43_nphy_gen_load_samples(%struct.b43_wldev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_wldev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.b43_c32*, align 8
  %16 = alloca %struct.b43_c32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %17 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %18 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  %22 = zext i1 %21 to i64
  %23 = select i1 %21, i32 40, i32 20
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = shl i32 %24, 3
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %49

28:                                               ; preds = %4
  %29 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %30 = load i32, i32* @B43_NPHY_BBCFG, align 4
  %31 = call i32 @b43_phy_read(%struct.b43_wldev* %29, i32 %30)
  %32 = load i32, i32* @B43_NPHY_BBCFG_RSTRX, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %28
  store i32 82, i32* %11, align 4
  br label %37

36:                                               ; preds = %28
  store i32 80, i32* %11, align 4
  br label %37

37:                                               ; preds = %36, %35
  %38 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %39 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %46

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  %45 = shl i32 %44, 1
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %43, %37
  %47 = load i32, i32* %11, align 4
  %48 = shl i32 %47, 1
  store i32 %48, i32* %12, align 4
  br label %49

49:                                               ; preds = %46, %4
  %50 = load i32, i32* %12, align 4
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call %struct.b43_c32* @kcalloc(i32 %50, i32 8, i32 %51)
  store %struct.b43_c32* %52, %struct.b43_c32** %15, align 8
  %53 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %54 = icmp ne %struct.b43_c32* %53, null
  br i1 %54, label %60, label %55

55:                                               ; preds = %49
  %56 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %57 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @b43err(i32 %58, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %5, align 4
  br label %131

60:                                               ; preds = %49
  %61 = load i32, i32* %7, align 4
  %62 = mul nsw i32 %61, 36
  %63 = load i32, i32* %11, align 4
  %64 = sdiv i32 %62, %63
  %65 = shl i32 %64, 16
  %66 = sdiv i32 %65, 100
  store i32 %66, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %10, align 4
  br label %67

67:                                               ; preds = %114, %60
  %68 = load i32, i32* %10, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %68, %69
  br i1 %70, label %71, label %117

71:                                               ; preds = %67
  %72 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %72, i64 %74
  %76 = load i32, i32* %14, align 4
  %77 = call i64 @b43_cordic(i32 %76)
  %78 = bitcast %struct.b43_c32* %16 to i64*
  store i64 %77, i64* %78, align 4
  %79 = bitcast %struct.b43_c32* %75 to i8*
  %80 = bitcast %struct.b43_c32* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %79, i8* align 4 %80, i64 8, i1 false)
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %14, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %14, align 4
  %84 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %84, i64 %86
  %88 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %8, align 4
  %91 = mul nsw i32 %89, %90
  %92 = call i8* @CORDIC_CONVERT(i32 %91)
  %93 = ptrtoint i8* %92 to i32
  %94 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %94, i64 %96
  %98 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %97, i32 0, i32 0
  store i32 %93, i32* %98, align 4
  %99 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %99, i64 %101
  %103 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %102, i32 0, i32 1
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %8, align 4
  %106 = mul nsw i32 %104, %105
  %107 = call i8* @CORDIC_CONVERT(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %110 = load i32, i32* %10, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %109, i64 %111
  %113 = getelementptr inbounds %struct.b43_c32, %struct.b43_c32* %112, i32 0, i32 1
  store i32 %108, i32* %113, align 4
  br label %114

114:                                              ; preds = %71
  %115 = load i32, i32* %10, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %10, align 4
  br label %67

117:                                              ; preds = %67
  %118 = load %struct.b43_wldev*, %struct.b43_wldev** %6, align 8
  %119 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %120 = load i32, i32* %12, align 4
  %121 = call i32 @b43_nphy_load_samples(%struct.b43_wldev* %118, %struct.b43_c32* %119, i32 %120)
  store i32 %121, i32* %10, align 4
  %122 = load %struct.b43_c32*, %struct.b43_c32** %15, align 8
  %123 = call i32 @kfree(%struct.b43_c32* %122)
  %124 = load i32, i32* %10, align 4
  %125 = icmp slt i32 %124, 0
  br i1 %125, label %126, label %127

126:                                              ; preds = %117
  br label %129

127:                                              ; preds = %117
  %128 = load i32, i32* %12, align 4
  br label %129

129:                                              ; preds = %127, %126
  %130 = phi i32 [ 0, %126 ], [ %128, %127 ]
  store i32 %130, i32* %5, align 4
  br label %131

131:                                              ; preds = %129, %55
  %132 = load i32, i32* %5, align 4
  ret i32 %132
}

declare dso_local i32 @b43_phy_read(%struct.b43_wldev*, i32) #1

declare dso_local %struct.b43_c32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i64 @b43_cordic(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i8* @CORDIC_CONVERT(i32) #1

declare dso_local i32 @b43_nphy_load_samples(%struct.b43_wldev*, %struct.b43_c32*, i32) #1

declare dso_local i32 @kfree(%struct.b43_c32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
