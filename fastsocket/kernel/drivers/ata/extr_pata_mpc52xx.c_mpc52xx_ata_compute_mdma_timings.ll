; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_mdma_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_mdma_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_ata_priv = type { %struct.mdmaspec*, %struct.mpc52xx_ata_timings* }
%struct.mdmaspec = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.mpc52xx_ata_timings = type { i32, i32, i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc52xx_ata_priv*, i32, i32)* @mpc52xx_ata_compute_mdma_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_compute_mdma_timings(%struct.mpc52xx_ata_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc52xx_ata_timings*, align 8
  %9 = alloca %struct.mdmaspec*, align 8
  store %struct.mpc52xx_ata_priv* %0, %struct.mpc52xx_ata_priv** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %11 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %10, i32 0, i32 1
  %12 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %12, i64 %14
  store %struct.mpc52xx_ata_timings* %15, %struct.mpc52xx_ata_timings** %8, align 8
  %16 = load %struct.mpc52xx_ata_priv*, %struct.mpc52xx_ata_priv** %5, align 8
  %17 = getelementptr inbounds %struct.mpc52xx_ata_priv, %struct.mpc52xx_ata_priv* %16, i32 0, i32 0
  %18 = load %struct.mdmaspec*, %struct.mdmaspec** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %18, i64 %20
  store %struct.mdmaspec* %21, %struct.mdmaspec** %9, align 8
  %22 = load i32, i32* %7, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %27, label %24

24:                                               ; preds = %3
  %25 = load i32, i32* %7, align 4
  %26 = icmp sgt i32 %25, 2
  br i1 %26, label %27, label %30

27:                                               ; preds = %24, %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %69

30:                                               ; preds = %24
  %31 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %32 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 24
  %35 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %36 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %41 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %39, %43
  %45 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %46 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %50 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %52 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 24
  %55 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %56 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 %54, %58
  %60 = load %struct.mdmaspec*, %struct.mdmaspec** %9, align 8
  %61 = getelementptr inbounds %struct.mdmaspec, %struct.mdmaspec* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %59, %63
  %65 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %66 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %65, i32 0, i32 1
  store i32 %64, i32* %66, align 4
  %67 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %68 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %67, i32 0, i32 2
  store i64 0, i64* %68, align 8
  store i32 0, i32* %4, align 4
  br label %69

69:                                               ; preds = %30, %27
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
