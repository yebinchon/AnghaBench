; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_modem_enable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_feature.c_core99_modem_enable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, %struct.device_node* }
%struct.device_node = type { i32 }
%struct.macio_chip = type { i32 }

@macio_chips = common dso_local global %struct.TYPE_2__* null, align 8
@macio_keylargo = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i64 0, align 8
@KL_GPIO_MODEM_RESET = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_OUTPUT_ENABLE = common dso_local global i32 0, align 4
@KEYLARGO_GPIO_OUTOUT_DATA = common dso_local global i32 0, align 4
@KEYLARGO_FCR2 = common dso_local global i32 0, align 4
@KL2_ALT_DATA_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.device_node*, i64, i64)* @core99_modem_enable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @core99_modem_enable(%struct.device_node* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.device_node*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.macio_chip*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device_node* %0, %struct.device_node** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.device_node*, %struct.device_node** %5, align 8
  %12 = icmp eq %struct.device_node* %11, null
  br i1 %12, label %13, label %28

13:                                               ; preds = %3
  %14 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macio_chips, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i64 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @macio_keylargo, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %13
  %21 = load i64, i64* @ENODEV, align 8
  %22 = sub nsw i64 0, %21
  store i64 %22, i64* %4, align 8
  br label %118

23:                                               ; preds = %13
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** @macio_chips, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.device_node*, %struct.device_node** %26, align 8
  store %struct.device_node* %27, %struct.device_node** %5, align 8
  br label %28

28:                                               ; preds = %23, %3
  %29 = load %struct.device_node*, %struct.device_node** %5, align 8
  %30 = call %struct.macio_chip* @macio_find(%struct.device_node* %29, i32 0)
  store %struct.macio_chip* %30, %struct.macio_chip** %8, align 8
  %31 = load %struct.macio_chip*, %struct.macio_chip** %8, align 8
  %32 = icmp ne %struct.macio_chip* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %28
  %34 = load i64, i64* @ENODEV, align 8
  %35 = sub nsw i64 0, %34
  store i64 %35, i64* %4, align 8
  br label %118

36:                                               ; preds = %28
  %37 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %38 = call i32 @MACIO_IN8(i32 %37)
  store i32 %38, i32* %9, align 4
  %39 = load i32, i32* @KEYLARGO_GPIO_OUTPUT_ENABLE, align 4
  %40 = load i32, i32* %9, align 4
  %41 = or i32 %40, %39
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* @KEYLARGO_GPIO_OUTOUT_DATA, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %9, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %9, align 4
  %46 = load i64, i64* %7, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %59, label %48

48:                                               ; preds = %36
  %49 = load i64, i64* %10, align 8
  %50 = call i32 @LOCK(i64 %49)
  %51 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @MACIO_OUT8(i32 %51, i32 %52)
  %54 = load i64, i64* %10, align 8
  %55 = call i32 @UNLOCK(i64 %54)
  %56 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %57 = call i32 @MACIO_IN8(i32 %56)
  %58 = call i32 @mdelay(i32 250)
  br label %59

59:                                               ; preds = %48, %36
  %60 = load i64, i64* %10, align 8
  %61 = call i32 @LOCK(i64 %60)
  %62 = load i64, i64* %7, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %73

64:                                               ; preds = %59
  %65 = load i32, i32* @KEYLARGO_FCR2, align 4
  %66 = load i32, i32* @KL2_ALT_DATA_OUT, align 4
  %67 = call i32 @MACIO_BIC(i32 %65, i32 %66)
  %68 = load i64, i64* %10, align 8
  %69 = call i32 @UNLOCK(i64 %68)
  %70 = load i32, i32* @KEYLARGO_FCR2, align 4
  %71 = call i32 @MACIO_IN32(i32 %70)
  %72 = call i32 @mdelay(i32 250)
  br label %79

73:                                               ; preds = %59
  %74 = load i32, i32* @KEYLARGO_FCR2, align 4
  %75 = load i32, i32* @KL2_ALT_DATA_OUT, align 4
  %76 = call i32 @MACIO_BIS(i32 %74, i32 %75)
  %77 = load i64, i64* %10, align 8
  %78 = call i32 @UNLOCK(i64 %77)
  br label %79

79:                                               ; preds = %73, %64
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %117

82:                                               ; preds = %79
  %83 = load i64, i64* %10, align 8
  %84 = call i32 @LOCK(i64 %83)
  %85 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %86 = load i32, i32* %9, align 4
  %87 = load i32, i32* @KEYLARGO_GPIO_OUTOUT_DATA, align 4
  %88 = or i32 %86, %87
  %89 = call i32 @MACIO_OUT8(i32 %85, i32 %88)
  %90 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %91 = call i32 @MACIO_IN8(i32 %90)
  %92 = load i64, i64* %10, align 8
  %93 = call i32 @UNLOCK(i64 %92)
  %94 = call i32 @mdelay(i32 250)
  %95 = load i64, i64* %10, align 8
  %96 = call i32 @LOCK(i64 %95)
  %97 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %98 = load i32, i32* %9, align 4
  %99 = call i32 @MACIO_OUT8(i32 %97, i32 %98)
  %100 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %101 = call i32 @MACIO_IN8(i32 %100)
  %102 = load i64, i64* %10, align 8
  %103 = call i32 @UNLOCK(i64 %102)
  %104 = call i32 @mdelay(i32 250)
  %105 = load i64, i64* %10, align 8
  %106 = call i32 @LOCK(i64 %105)
  %107 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* @KEYLARGO_GPIO_OUTOUT_DATA, align 4
  %110 = or i32 %108, %109
  %111 = call i32 @MACIO_OUT8(i32 %107, i32 %110)
  %112 = load i32, i32* @KL_GPIO_MODEM_RESET, align 4
  %113 = call i32 @MACIO_IN8(i32 %112)
  %114 = load i64, i64* %10, align 8
  %115 = call i32 @UNLOCK(i64 %114)
  %116 = call i32 @mdelay(i32 250)
  br label %117

117:                                              ; preds = %82, %79
  store i64 0, i64* %4, align 8
  br label %118

118:                                              ; preds = %117, %33, %20
  %119 = load i64, i64* %4, align 8
  ret i64 %119
}

declare dso_local %struct.macio_chip* @macio_find(%struct.device_node*, i32) #1

declare dso_local i32 @MACIO_IN8(i32) #1

declare dso_local i32 @LOCK(i64) #1

declare dso_local i32 @MACIO_OUT8(i32, i32) #1

declare dso_local i32 @UNLOCK(i64) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @MACIO_BIC(i32, i32) #1

declare dso_local i32 @MACIO_IN32(i32) #1

declare dso_local i32 @MACIO_BIS(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
