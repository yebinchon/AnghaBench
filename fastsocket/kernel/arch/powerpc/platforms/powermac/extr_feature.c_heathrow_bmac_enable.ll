; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_bmac_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_bmac_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@ENODEV = common dso_local global i64 0, align 8
@HEATHROW_FCR = common dso_local global i32 0, align 4
@HRW_BMAC_IO_ENABLE = common dso_local global i32 0, align 4
@HRW_BMAC_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @heathrow_bmac_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heathrow_bmac_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.device_node*, %struct.device_node** %5, align 8
  %11 = call %struct.macio_chip* @macio_find(%struct.device_node* %10, i32 0)
  store %struct.macio_chip* %11, %struct.macio_chip** %8, align 8
  %12 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %13 = icmp ne %struct.macio_chip* %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %3
  %15 = load i64, i64* @ENODEV, align 8
  %16 = sub nsw i64 0, %15
  store i64 %16, i64* %4, align 8
  br label %53

17:                                               ; preds = %3
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %44

20:                                               ; preds = %17
  %21 = load i64, i64* %9, align 8
  %22 = call i32 @LOCK(i64 %21)
  %23 = load i32, i32* @HEATHROW_FCR, align 4
  %24 = load i32, i32* @HRW_BMAC_IO_ENABLE, align 4
  %25 = call i32 @MACIO_BIS(i32 %23, i32 %24)
  %26 = load i32, i32* @HEATHROW_FCR, align 4
  %27 = load i32, i32* @HRW_BMAC_RESET, align 4
  %28 = call i32 @MACIO_BIS(i32 %26, i32 %27)
  %29 = load i64, i64* %9, align 8
  %30 = call i32 @UNLOCK(i64 %29)
  %31 = load i32, i32* @HEATHROW_FCR, align 4
  %32 = call i32 @MACIO_IN32(i32 %31)
  %33 = call i32 @mdelay(i32 10)
  %34 = load i64, i64* %9, align 8
  %35 = call i32 @LOCK(i64 %34)
  %36 = load i32, i32* @HEATHROW_FCR, align 4
  %37 = load i32, i32* @HRW_BMAC_RESET, align 4
  %38 = call i32 @MACIO_BIC(i32 %36, i32 %37)
  %39 = load i64, i64* %9, align 8
  %40 = call i32 @UNLOCK(i64 %39)
  %41 = load i32, i32* @HEATHROW_FCR, align 4
  %42 = call i32 @MACIO_IN32(i32 %41)
  %43 = call i32 @mdelay(i32 10)
  br label %52

44:                                               ; preds = %17
  %45 = load i64, i64* %9, align 8
  %46 = call i32 @LOCK(i64 %45)
  %47 = load i32, i32* @HEATHROW_FCR, align 4
  %48 = load i32, i32* @HRW_BMAC_IO_ENABLE, align 4
  %49 = call i32 @MACIO_BIC(i32 %47, i32 %48)
  %50 = load i64, i64* %9, align 8
  %51 = call i32 @UNLOCK(i64 %50)
  br label %52

52:                                               ; preds = %44, %20
  store i64 0, i64* %4, align 8
  br label %53

53:                                               ; preds = %52, %14
  %54 = load i64, i64* %4, align 8
  ret i64 %54
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
