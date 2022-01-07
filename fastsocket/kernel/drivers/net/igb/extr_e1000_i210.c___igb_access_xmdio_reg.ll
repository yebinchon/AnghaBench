; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c___igb_access_xmdio_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igb/extr_e1000_i210.c___igb_access_xmdio_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.1*, i32, i32*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_hw.1 = type opaque

@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_MMDAC = common dso_local global i32 0, align 4
@E1000_MMDAAD = common dso_local global i32 0, align 4
@E1000_MMDAC_FUNC_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*, i32, i32, i32*, i32)* @__igb_access_xmdio_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @__igb_access_xmdio_reg(%struct.e1000_hw* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca %struct.e1000_hw*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %13 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %13, i64* %12, align 8
  %14 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %15 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %17, align 8
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %20 = bitcast %struct.e1000_hw* %19 to %struct.e1000_hw.0*
  %21 = load i32, i32* @E1000_MMDAC, align 4
  %22 = load i32, i32* %9, align 4
  %23 = call i64 %18(%struct.e1000_hw.0* %20, i32 %21, i32 %22)
  store i64 %23, i64* %12, align 8
  %24 = load i64, i64* %12, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %5
  %27 = load i64, i64* %12, align 8
  store i64 %27, i64* %6, align 8
  br label %107

28:                                               ; preds = %5
  %29 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %30 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %32, align 8
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %35 = bitcast %struct.e1000_hw* %34 to %struct.e1000_hw.0*
  %36 = load i32, i32* @E1000_MMDAAD, align 4
  %37 = load i32, i32* %8, align 4
  %38 = call i64 %33(%struct.e1000_hw.0* %35, i32 %36, i32 %37)
  store i64 %38, i64* %12, align 8
  %39 = load i64, i64* %12, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %28
  %42 = load i64, i64* %12, align 8
  store i64 %42, i64* %6, align 8
  br label %107

43:                                               ; preds = %28
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.0*
  %51 = load i32, i32* @E1000_MMDAC, align 4
  %52 = load i32, i32* @E1000_MMDAC_FUNC_DATA, align 4
  %53 = load i32, i32* %9, align 4
  %54 = or i32 %52, %53
  %55 = call i64 %48(%struct.e1000_hw.0* %50, i32 %51, i32 %54)
  store i64 %55, i64* %12, align 8
  %56 = load i64, i64* %12, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %43
  %59 = load i64, i64* %12, align 8
  store i64 %59, i64* %6, align 8
  br label %107

60:                                               ; preds = %43
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %74

63:                                               ; preds = %60
  %64 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %65 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 1
  %68 = load i64 (%struct.e1000_hw.1*, i32, i32*)*, i64 (%struct.e1000_hw.1*, i32, i32*)** %67, align 8
  %69 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %70 = bitcast %struct.e1000_hw* %69 to %struct.e1000_hw.1*
  %71 = load i32, i32* @E1000_MMDAAD, align 4
  %72 = load i32*, i32** %10, align 8
  %73 = call i64 %68(%struct.e1000_hw.1* %70, i32 %71, i32* %72)
  store i64 %73, i64* %12, align 8
  br label %86

74:                                               ; preds = %60
  %75 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %76 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i32 0, i32 0
  %79 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %78, align 8
  %80 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %81 = bitcast %struct.e1000_hw* %80 to %struct.e1000_hw.0*
  %82 = load i32, i32* @E1000_MMDAAD, align 4
  %83 = load i32*, i32** %10, align 8
  %84 = load i32, i32* %83, align 4
  %85 = call i64 %79(%struct.e1000_hw.0* %81, i32 %82, i32 %84)
  store i64 %85, i64* %12, align 8
  br label %86

86:                                               ; preds = %74, %63
  %87 = load i64, i64* %12, align 8
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %86
  %90 = load i64, i64* %12, align 8
  store i64 %90, i64* %6, align 8
  br label %107

91:                                               ; preds = %86
  %92 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %93 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load i64 (%struct.e1000_hw.0*, i32, i32)*, i64 (%struct.e1000_hw.0*, i32, i32)** %95, align 8
  %97 = load %struct.e1000_hw*, %struct.e1000_hw** %7, align 8
  %98 = bitcast %struct.e1000_hw* %97 to %struct.e1000_hw.0*
  %99 = load i32, i32* @E1000_MMDAC, align 4
  %100 = call i64 %96(%struct.e1000_hw.0* %98, i32 %99, i32 0)
  store i64 %100, i64* %12, align 8
  %101 = load i64, i64* %12, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %91
  %104 = load i64, i64* %12, align 8
  store i64 %104, i64* %6, align 8
  br label %107

105:                                              ; preds = %91
  %106 = load i64, i64* %12, align 8
  store i64 %106, i64* %6, align 8
  br label %107

107:                                              ; preds = %105, %103, %89, %58, %41, %26
  %108 = load i64, i64* %6, align 8
  ret i64 %108
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
