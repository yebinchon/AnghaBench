; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_suni.c_set_loopback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/atm/extr_suni.c_set_loopback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atm_dev = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { {}*, i32 (%struct.atm_dev*, i8, i32)* }
%struct.TYPE_4__ = type { i64, i32 }

@SUNI_MRI_TYPE_PM5355 = common dso_local global i64 0, align 8
@SUNI_MCM = common dso_local global i32 0, align 4
@SUNI_MCM_DLE = common dso_local global i32 0, align 4
@SUNI_MCM_LLE = common dso_local global i32 0, align 4
@SUNI_MCT = common dso_local global i32 0, align 4
@SUNI_MCT_DLE = common dso_local global i32 0, align 4
@SUNI_MCT_LLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atm_dev*, i32)* @set_loopback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_loopback(%struct.atm_dev* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.atm_dev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.atm_dev* %0, %struct.atm_dev** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %11 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @SUNI_MRI_TYPE_PM5355, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %20

16:                                               ; preds = %2
  %17 = load i32, i32* @SUNI_MCM, align 4
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* @SUNI_MCM_DLE, align 4
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @SUNI_MCM_LLE, align 4
  store i32 %19, i32* %9, align 4
  br label %24

20:                                               ; preds = %2
  %21 = load i32, i32* @SUNI_MCT, align 4
  store i32 %21, i32* %7, align 4
  %22 = load i32, i32* @SUNI_MCT_DLE, align 4
  store i32 %22, i32* %8, align 4
  %23 = load i32, i32* @SUNI_MCT_LLE, align 4
  store i32 %23, i32* %9, align 4
  br label %24

24:                                               ; preds = %20, %16
  %25 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %26 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.atm_dev*, i32)**
  %30 = load i32 (%struct.atm_dev*, i32)*, i32 (%struct.atm_dev*, i32)** %29, align 8
  %31 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 %30(%struct.atm_dev* %31, i32 %32)
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %34, %35
  %37 = xor i32 %36, -1
  %38 = and i32 %33, %37
  %39 = trunc i32 %38 to i8
  store i8 %39, i8* %6, align 1
  %40 = load i32, i32* %5, align 4
  switch i32 %40, label %54 [
    i32 129, label %41
    i32 130, label %42
    i32 128, label %48
  ]

41:                                               ; preds = %24
  br label %57

42:                                               ; preds = %24
  %43 = load i32, i32* %8, align 4
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i32
  %46 = or i32 %45, %43
  %47 = trunc i32 %46 to i8
  store i8 %47, i8* %6, align 1
  br label %57

48:                                               ; preds = %24
  %49 = load i32, i32* %9, align 4
  %50 = load i8, i8* %6, align 1
  %51 = zext i8 %50 to i32
  %52 = or i32 %51, %49
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %6, align 1
  br label %57

54:                                               ; preds = %24
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %71

57:                                               ; preds = %48, %42, %41
  %58 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %59 = getelementptr inbounds %struct.atm_dev, %struct.atm_dev* %58, i32 0, i32 0
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32 (%struct.atm_dev*, i8, i32)*, i32 (%struct.atm_dev*, i8, i32)** %61, align 8
  %63 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %64 = load i8, i8* %6, align 1
  %65 = load i32, i32* %7, align 4
  %66 = call i32 %62(%struct.atm_dev* %63, i8 zeroext %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load %struct.atm_dev*, %struct.atm_dev** %4, align 8
  %69 = call %struct.TYPE_4__* @PRIV(%struct.atm_dev* %68)
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 8
  store i32 0, i32* %3, align 4
  br label %71

71:                                               ; preds = %57, %54
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_4__* @PRIV(%struct.atm_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
