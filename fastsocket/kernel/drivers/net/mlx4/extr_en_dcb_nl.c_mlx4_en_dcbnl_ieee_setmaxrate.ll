; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setmaxrate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/mlx4/extr_en_dcb_nl.c_mlx4_en_dcbnl_ieee_setmaxrate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ieee_maxrate = type { i64* }
%struct.mlx4_en_priv = type { i32 }

@IEEE_8021QAZ_MAX_TCS = common dso_local global i32 0, align 4
@MLX4_RATELIMIT_UNITS_IN_KB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ieee_maxrate*)* @mlx4_en_dcbnl_ieee_setmaxrate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlx4_en_dcbnl_ieee_setmaxrate(%struct.net_device* %0, %struct.ieee_maxrate* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca %struct.ieee_maxrate*, align 8
  %6 = alloca %struct.mlx4_en_priv*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store %struct.ieee_maxrate* %1, %struct.ieee_maxrate** %5, align 8
  %12 = load %struct.net_device*, %struct.net_device** %4, align 8
  %13 = call %struct.mlx4_en_priv* @netdev_priv(%struct.net_device* %12)
  store %struct.mlx4_en_priv* %13, %struct.mlx4_en_priv** %6, align 8
  %14 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %15 = zext i32 %14 to i64
  %16 = call i8* @llvm.stacksave()
  store i8* %16, i8** %7, align 8
  %17 = alloca i32, i64 %15, align 16
  store i64 %15, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %18

18:                                               ; preds = %38, %2
  %19 = load i32, i32* %9, align 4
  %20 = load i32, i32* @IEEE_8021QAZ_MAX_TCS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %18
  %23 = load %struct.ieee_maxrate*, %struct.ieee_maxrate** %5, align 8
  %24 = getelementptr inbounds %struct.ieee_maxrate, %struct.ieee_maxrate* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i32, i32* %9, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i64, i64* %25, i64 %27
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @MLX4_RATELIMIT_UNITS_IN_KB, align 8
  %31 = add nsw i64 %29, %30
  %32 = sub nsw i64 %31, 1
  %33 = load i64, i64* @MLX4_RATELIMIT_UNITS_IN_KB, align 8
  %34 = call i32 @div_u64(i64 %32, i64 %33)
  %35 = load i32, i32* %9, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %17, i64 %36
  store i32 %34, i32* %37, align 4
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %9, align 4
  br label %18

41:                                               ; preds = %18
  %42 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %43 = call i32 @mlx4_en_config_port_scheduler(%struct.mlx4_en_priv* %42, i32* null, i32* %17)
  store i32 %43, i32* %10, align 4
  %44 = load i32, i32* %10, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %41
  %47 = load i32, i32* %10, align 4
  store i32 %47, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

48:                                               ; preds = %41
  %49 = load %struct.mlx4_en_priv*, %struct.mlx4_en_priv** %6, align 8
  %50 = getelementptr inbounds %struct.mlx4_en_priv, %struct.mlx4_en_priv* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @memcpy(i32 %51, i32* %17, i32 4)
  store i32 0, i32* %3, align 4
  store i32 1, i32* %11, align 4
  br label %53

53:                                               ; preds = %48, %46
  %54 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %54)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local %struct.mlx4_en_priv* @netdev_priv(%struct.net_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @div_u64(i64, i64) #1

declare dso_local i32 @mlx4_en_config_port_scheduler(%struct.mlx4_en_priv*, i32*, i32*) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
