; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_sound_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_sound_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@pmac_mb = common dso_local global %struct.TYPE_2__ zeroinitializer, align 8
@PMAC_TYPE_YOSEMITE = common dso_local global i64 0, align 8
@PMAC_TYPE_YIKES = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@HEATHROW_FCR = common dso_local global i32 0, align 4
@HRW_SOUND_CLK_ENABLE = common dso_local global i32 0, align 4
@HRW_SOUND_POWER_N = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @heathrow_sound_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heathrow_sound_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %11 = load i64, i64* @PMAC_TYPE_YOSEMITE, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %17, label %13

13:                                               ; preds = %3
  %14 = load i64, i64* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @pmac_mb, i32 0, i32 0), align 8
  %15 = load i64, i64* @PMAC_TYPE_YIKES, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13, %3
  store i64 0, i64* %4, align 8
  br label %54

18:                                               ; preds = %13
  %19 = load %struct.device_node*, %struct.device_node** %5, align 8
  %20 = call %struct.macio_chip* @macio_find(%struct.device_node* %19, i32 0)
  store %struct.macio_chip* %20, %struct.macio_chip** %8, align 8
  %21 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %22 = icmp ne %struct.macio_chip* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %18
  %24 = load i64, i64* @ENODEV, align 8
  %25 = sub nsw i64 0, %24
  store i64 %25, i64* %4, align 8
  br label %54

26:                                               ; preds = %18
  %27 = load i64, i64* %7, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %26
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @LOCK(i64 %30)
  %32 = load i32, i32* @HEATHROW_FCR, align 4
  %33 = load i32, i32* @HRW_SOUND_CLK_ENABLE, align 4
  %34 = call i32 @MACIO_BIS(i32 %32, i32 %33)
  %35 = load i32, i32* @HEATHROW_FCR, align 4
  %36 = load i32, i32* @HRW_SOUND_POWER_N, align 4
  %37 = call i32 @MACIO_BIC(i32 %35, i32 %36)
  %38 = load i64, i64* %9, align 8
  %39 = call i32 @UNLOCK(i64 %38)
  %40 = load i32, i32* @HEATHROW_FCR, align 4
  %41 = call i32 @MACIO_IN32(i32 %40)
  br label %53

42:                                               ; preds = %26
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @LOCK(i64 %43)
  %45 = load i32, i32* @HEATHROW_FCR, align 4
  %46 = load i32, i32* @HRW_SOUND_POWER_N, align 4
  %47 = call i32 @MACIO_BIS(i32 %45, i32 %46)
  %48 = load i32, i32* @HEATHROW_FCR, align 4
  %49 = load i32, i32* @HRW_SOUND_CLK_ENABLE, align 4
  %50 = call i32 @MACIO_BIC(i32 %48, i32 %49)
  %51 = load i64, i64* %9, align 8
  %52 = call i32 @UNLOCK(i64 %51)
  br label %53

53:                                               ; preds = %42, %29
  store i64 0, i64* %4, align 8
  br label %54

54:                                               ; preds = %53, %23, %17
  %55 = load i64, i64* %4, align 8
  ret i64 %55
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @MACIO_IN32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
