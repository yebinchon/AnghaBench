; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_eeprom.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_get_eeprom.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ethtool_eeprom = type { i64, i64 }
%struct.niu = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_device*, %struct.ethtool_eeprom*, i32*)* @niu_get_eeprom to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @niu_get_eeprom(%struct.net_device* %0, %struct.ethtool_eeprom* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ethtool_eeprom*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.niu*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store %struct.ethtool_eeprom* %1, %struct.ethtool_eeprom** %6, align 8
  store i32* %2, i32** %7, align 8
  %14 = load %struct.net_device*, %struct.net_device** %5, align 8
  %15 = call %struct.niu* @netdev_priv(%struct.net_device* %14)
  store %struct.niu* %15, %struct.niu** %8, align 8
  %16 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %17 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %9, align 8
  %19 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %20 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %10, align 8
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* %10, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i64, i64* %9, align 8
  %26 = icmp slt i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %3
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %120

30:                                               ; preds = %3
  %31 = load i64, i64* %9, align 8
  %32 = load %struct.niu*, %struct.niu** %8, align 8
  %33 = getelementptr inbounds %struct.niu, %struct.niu* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %120

39:                                               ; preds = %30
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %10, align 8
  %42 = add nsw i64 %40, %41
  %43 = load %struct.niu*, %struct.niu** %8, align 8
  %44 = getelementptr inbounds %struct.niu, %struct.niu* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  br i1 %46, label %47, label %55

47:                                               ; preds = %39
  %48 = load %struct.niu*, %struct.niu** %8, align 8
  %49 = getelementptr inbounds %struct.niu, %struct.niu* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %9, align 8
  %52 = sub nsw i64 %50, %51
  %53 = load %struct.ethtool_eeprom*, %struct.ethtool_eeprom** %6, align 8
  %54 = getelementptr inbounds %struct.ethtool_eeprom, %struct.ethtool_eeprom* %53, i32 0, i32 1
  store i64 %52, i64* %54, align 8
  store i64 %52, i64* %10, align 8
  br label %55

55:                                               ; preds = %47, %39
  %56 = load i64, i64* %9, align 8
  %57 = and i64 %56, 3
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %91

59:                                               ; preds = %55
  %60 = load i64, i64* %9, align 8
  %61 = and i64 %60, 3
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %12, align 8
  %63 = sub nsw i64 4, %62
  store i64 %63, i64* %13, align 8
  %64 = load i64, i64* %13, align 8
  %65 = load i64, i64* %10, align 8
  %66 = icmp sgt i64 %64, %65
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i64, i64* %10, align 8
  store i64 %68, i64* %13, align 8
  br label %69

69:                                               ; preds = %67, %59
  %70 = load i64, i64* %9, align 8
  %71 = load i64, i64* %12, align 8
  %72 = sub nsw i64 %70, %71
  %73 = sdiv i64 %72, 4
  %74 = call i32 @ESPC_NCR(i64 %73)
  %75 = call i64 @nr64(i32 %74)
  store i64 %75, i64* %11, align 8
  %76 = load i32*, i32** %7, align 8
  %77 = bitcast i64* %11 to i8*
  %78 = load i64, i64* %12, align 8
  %79 = getelementptr inbounds i8, i8* %77, i64 %78
  %80 = load i64, i64* %13, align 8
  %81 = call i32 (i32*, ...) @memcpy(i32* %76, i8* %79, i64 %80)
  %82 = load i64, i64* %13, align 8
  %83 = load i32*, i32** %7, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 %82
  store i32* %84, i32** %7, align 8
  %85 = load i64, i64* %13, align 8
  %86 = load i64, i64* %10, align 8
  %87 = sub nsw i64 %86, %85
  store i64 %87, i64* %10, align 8
  %88 = load i64, i64* %13, align 8
  %89 = load i64, i64* %9, align 8
  %90 = add nsw i64 %89, %88
  store i64 %90, i64* %9, align 8
  br label %91

91:                                               ; preds = %69, %55
  br label %92

92:                                               ; preds = %95, %91
  %93 = load i64, i64* %10, align 8
  %94 = icmp sge i64 %93, 4
  br i1 %94, label %95, label %108

95:                                               ; preds = %92
  %96 = load i64, i64* %9, align 8
  %97 = sdiv i64 %96, 4
  %98 = call i32 @ESPC_NCR(i64 %97)
  %99 = call i64 @nr64(i32 %98)
  store i64 %99, i64* %11, align 8
  %100 = load i32*, i32** %7, align 8
  %101 = call i32 (i32*, ...) @memcpy(i32* %100, i64* %11, i32 4)
  %102 = load i32*, i32** %7, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 4
  store i32* %103, i32** %7, align 8
  %104 = load i64, i64* %10, align 8
  %105 = sub nsw i64 %104, 4
  store i64 %105, i64* %10, align 8
  %106 = load i64, i64* %9, align 8
  %107 = add nsw i64 %106, 4
  store i64 %107, i64* %9, align 8
  br label %92

108:                                              ; preds = %92
  %109 = load i64, i64* %10, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %111, label %119

111:                                              ; preds = %108
  %112 = load i64, i64* %9, align 8
  %113 = sdiv i64 %112, 4
  %114 = call i32 @ESPC_NCR(i64 %113)
  %115 = call i64 @nr64(i32 %114)
  store i64 %115, i64* %11, align 8
  %116 = load i32*, i32** %7, align 8
  %117 = load i64, i64* %10, align 8
  %118 = call i32 (i32*, ...) @memcpy(i32* %116, i64* %11, i64 %117)
  br label %119

119:                                              ; preds = %111, %108
  store i32 0, i32* %4, align 4
  br label %120

120:                                              ; preds = %119, %36, %27
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.niu* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @nr64(i32) #1

declare dso_local i32 @ESPC_NCR(i64) #1

declare dso_local i32 @memcpy(i32*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
