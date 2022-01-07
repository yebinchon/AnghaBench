; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_mesh_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_heathrow_mesh_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@macio_unknown = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i64 0, align 8
@HEATHROW_FCR = common dso_local global i32 0, align 4
@HRW_MESH_ENABLE = common dso_local global i32 0, align 4
@HEATHROW_MBCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @heathrow_mesh_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @heathrow_mesh_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
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
  %11 = load i32, i32* @macio_unknown, align 4
  %12 = call %struct.macio_chip* @macio_find(%struct.device_node* %10, i32 %11)
  store %struct.macio_chip* %12, %struct.macio_chip** %8, align 8
  %13 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %14 = icmp ne %struct.macio_chip* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %3
  %16 = load i64, i64* @ENODEV, align 8
  %17 = sub nsw i64 0, %16
  store i64 %17, i64* %4, align 8
  br label %49

18:                                               ; preds = %3
  %19 = load i64, i64* %9, align 8
  %20 = call i32 @LOCK(i64 %19)
  %21 = load i64, i64* %7, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %18
  %24 = load i32, i32* @HEATHROW_FCR, align 4
  %25 = load i32, i32* @HRW_MESH_ENABLE, align 4
  %26 = call i32 @MACIO_BIS(i32 %24, i32 %25)
  br label %31

27:                                               ; preds = %18
  %28 = load i32, i32* @HEATHROW_FCR, align 4
  %29 = load i32, i32* @HRW_MESH_ENABLE, align 4
  %30 = call i32 @MACIO_BIC(i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %27, %23
  %32 = load i32, i32* @HEATHROW_FCR, align 4
  %33 = call i32 @MACIO_IN32(i32 %32)
  %34 = call i32 @udelay(i32 10)
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @HEATHROW_MBCR, align 4
  %39 = call i32 @MACIO_BIC(i32 %38, i32 67108864)
  br label %43

40:                                               ; preds = %31
  %41 = load i32, i32* @HEATHROW_MBCR, align 4
  %42 = call i32 @MACIO_BIS(i32 %41, i32 67108864)
  br label %43

43:                                               ; preds = %40, %37
  %44 = load i32, i32* @HEATHROW_MBCR, align 4
  %45 = call i32 @MACIO_IN32(i32 %44)
  %46 = call i32 @udelay(i32 10)
  %47 = load i64, i64* %9, align 8
  %48 = call i32 @UNLOCK(i64 %47)
  store i64 0, i64* %4, align 8
  br label %49

49:                                               ; preds = %43, %15
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @UNLOCK(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
