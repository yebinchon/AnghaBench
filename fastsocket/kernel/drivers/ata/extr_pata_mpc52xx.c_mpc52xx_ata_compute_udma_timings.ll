; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_udma_timings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ata/extr_pata_mpc52xx.c_mpc52xx_ata_compute_udma_timings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpc52xx_ata_priv = type { %struct.udmaspec*, %struct.mpc52xx_ata_timings* }
%struct.udmaspec = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.mpc52xx_ata_timings = type { i32, i32, i32, i32, i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mpc52xx_ata_priv*, i32, i32)* @mpc52xx_ata_compute_udma_timings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpc52xx_ata_compute_udma_timings(%struct.mpc52xx_ata_priv* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mpc52xx_ata_priv*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mpc52xx_ata_timings*, align 8
  %9 = alloca %struct.udmaspec*, align 8
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
  %18 = load %struct.udmaspec*, %struct.udmaspec** %17, align 8
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %18, i64 %20
  store %struct.udmaspec* %21, %struct.udmaspec** %9, align 8
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
  br label %119

30:                                               ; preds = %24
  %31 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %32 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = shl i32 %33, 24
  %35 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %36 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = shl i32 %37, 16
  %39 = or i32 %34, %38
  %40 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %41 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = or i32 %39, %43
  %45 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %46 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %44, %47
  %49 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %50 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %52 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %51, i32 0, i32 4
  %53 = load i32, i32* %52, align 4
  %54 = shl i32 %53, 24
  %55 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %56 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %55, i32 0, i32 5
  %57 = load i32, i32* %56, align 4
  %58 = shl i32 %57, 16
  %59 = or i32 %54, %58
  %60 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %61 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 4
  %63 = shl i32 %62, 8
  %64 = or i32 %59, %63
  %65 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %66 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 4
  %68 = or i32 %64, %67
  %69 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %70 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %72 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 24
  %75 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %76 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %75, i32 0, i32 9
  %77 = load i32, i32* %76, align 4
  %78 = shl i32 %77, 16
  %79 = or i32 %74, %78
  %80 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %81 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %80, i32 0, i32 10
  %82 = load i32, i32* %81, align 4
  %83 = shl i32 %82, 8
  %84 = or i32 %79, %83
  %85 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %86 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %85, i32 0, i32 11
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %84, %87
  %89 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %90 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %89, i32 0, i32 2
  store i32 %88, i32* %90, align 4
  %91 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %92 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %91, i32 0, i32 12
  %93 = load i32, i32* %92, align 4
  %94 = shl i32 %93, 24
  %95 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %96 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %95, i32 0, i32 13
  %97 = load i32, i32* %96, align 4
  %98 = shl i32 %97, 16
  %99 = or i32 %94, %98
  %100 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %101 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %100, i32 0, i32 14
  %102 = load i32, i32* %101, align 4
  %103 = shl i32 %102, 8
  %104 = or i32 %99, %103
  %105 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %106 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %105, i32 0, i32 15
  %107 = load i32, i32* %106, align 4
  %108 = or i32 %104, %107
  %109 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %110 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.udmaspec*, %struct.udmaspec** %9, align 8
  %112 = getelementptr inbounds %struct.udmaspec, %struct.udmaspec* %111, i32 0, i32 16
  %113 = load i32, i32* %112, align 4
  %114 = shl i32 %113, 24
  %115 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %116 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %115, i32 0, i32 4
  store i32 %114, i32* %116, align 4
  %117 = load %struct.mpc52xx_ata_timings*, %struct.mpc52xx_ata_timings** %8, align 8
  %118 = getelementptr inbounds %struct.mpc52xx_ata_timings, %struct.mpc52xx_ata_timings* %117, i32 0, i32 5
  store i32 1, i32* %118, align 4
  store i32 0, i32* %4, align 4
  br label %119

119:                                              ; preds = %30, %27
  %120 = load i32, i32* %4, align 4
  ret i32 %120
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
