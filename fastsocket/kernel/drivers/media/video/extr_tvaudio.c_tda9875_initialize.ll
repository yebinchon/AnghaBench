; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9875_initialize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_tvaudio.c_tda9875_initialize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.CHIPSTATE = type { i32 }

@TDA9875_CFG = common dso_local global i32 0, align 4
@TDA9875_MSR = common dso_local global i32 0, align 4
@TDA9875_C1MSB = common dso_local global i32 0, align 4
@TDA9875_C1MIB = common dso_local global i32 0, align 4
@TDA9875_C1LSB = common dso_local global i32 0, align 4
@TDA9875_C2MSB = common dso_local global i32 0, align 4
@TDA9875_C2MIB = common dso_local global i32 0, align 4
@TDA9875_C2LSB = common dso_local global i32 0, align 4
@TDA9875_DCR = common dso_local global i32 0, align 4
@TDA9875_DEEM = common dso_local global i32 0, align 4
@TDA9875_FMAT = common dso_local global i32 0, align 4
@TDA9875_SC1 = common dso_local global i32 0, align 4
@TDA9875_SC2 = common dso_local global i32 0, align 4
@TDA9875_CH1V = common dso_local global i32 0, align 4
@TDA9875_CH2V = common dso_local global i32 0, align 4
@TDA9875_DACOS = common dso_local global i32 0, align 4
@TDA9875_ADCIS = common dso_local global i32 0, align 4
@TDA9875_LOSR = common dso_local global i32 0, align 4
@TDA9875_AER = common dso_local global i32 0, align 4
@TDA9875_MCS = common dso_local global i32 0, align 4
@TDA9875_MVL = common dso_local global i32 0, align 4
@TDA9875_MVR = common dso_local global i32 0, align 4
@TDA9875_MBA = common dso_local global i32 0, align 4
@TDA9875_MTR = common dso_local global i32 0, align 4
@TDA9875_ACS = common dso_local global i32 0, align 4
@TDA9875_AVL = common dso_local global i32 0, align 4
@TDA9875_AVR = common dso_local global i32 0, align 4
@TDA9875_ABA = common dso_local global i32 0, align 4
@TDA9875_ATR = common dso_local global i32 0, align 4
@TDA9875_MUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.CHIPSTATE*)* @tda9875_initialize to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda9875_initialize(%struct.CHIPSTATE* %0) #0 {
  %2 = alloca %struct.CHIPSTATE*, align 8
  store %struct.CHIPSTATE* %0, %struct.CHIPSTATE** %2, align 8
  %3 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %4 = load i32, i32* @TDA9875_CFG, align 4
  %5 = call i32 @chip_write(%struct.CHIPSTATE* %3, i32 %4, i32 208)
  %6 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %7 = load i32, i32* @TDA9875_MSR, align 4
  %8 = call i32 @chip_write(%struct.CHIPSTATE* %6, i32 %7, i32 3)
  %9 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %10 = load i32, i32* @TDA9875_C1MSB, align 4
  %11 = call i32 @chip_write(%struct.CHIPSTATE* %9, i32 %10, i32 0)
  %12 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %13 = load i32, i32* @TDA9875_C1MIB, align 4
  %14 = call i32 @chip_write(%struct.CHIPSTATE* %12, i32 %13, i32 0)
  %15 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %16 = load i32, i32* @TDA9875_C1LSB, align 4
  %17 = call i32 @chip_write(%struct.CHIPSTATE* %15, i32 %16, i32 0)
  %18 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %19 = load i32, i32* @TDA9875_C2MSB, align 4
  %20 = call i32 @chip_write(%struct.CHIPSTATE* %18, i32 %19, i32 0)
  %21 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %22 = load i32, i32* @TDA9875_C2MIB, align 4
  %23 = call i32 @chip_write(%struct.CHIPSTATE* %21, i32 %22, i32 0)
  %24 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %25 = load i32, i32* @TDA9875_C2LSB, align 4
  %26 = call i32 @chip_write(%struct.CHIPSTATE* %24, i32 %25, i32 0)
  %27 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %28 = load i32, i32* @TDA9875_DCR, align 4
  %29 = call i32 @chip_write(%struct.CHIPSTATE* %27, i32 %28, i32 0)
  %30 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %31 = load i32, i32* @TDA9875_DEEM, align 4
  %32 = call i32 @chip_write(%struct.CHIPSTATE* %30, i32 %31, i32 68)
  %33 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %34 = load i32, i32* @TDA9875_FMAT, align 4
  %35 = call i32 @chip_write(%struct.CHIPSTATE* %33, i32 %34, i32 0)
  %36 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %37 = load i32, i32* @TDA9875_SC1, align 4
  %38 = call i32 @chip_write(%struct.CHIPSTATE* %36, i32 %37, i32 0)
  %39 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %40 = load i32, i32* @TDA9875_SC2, align 4
  %41 = call i32 @chip_write(%struct.CHIPSTATE* %39, i32 %40, i32 1)
  %42 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %43 = load i32, i32* @TDA9875_CH1V, align 4
  %44 = call i32 @chip_write(%struct.CHIPSTATE* %42, i32 %43, i32 16)
  %45 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %46 = load i32, i32* @TDA9875_CH2V, align 4
  %47 = call i32 @chip_write(%struct.CHIPSTATE* %45, i32 %46, i32 16)
  %48 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %49 = load i32, i32* @TDA9875_DACOS, align 4
  %50 = call i32 @chip_write(%struct.CHIPSTATE* %48, i32 %49, i32 2)
  %51 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %52 = load i32, i32* @TDA9875_ADCIS, align 4
  %53 = call i32 @chip_write(%struct.CHIPSTATE* %51, i32 %52, i32 111)
  %54 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %55 = load i32, i32* @TDA9875_LOSR, align 4
  %56 = call i32 @chip_write(%struct.CHIPSTATE* %54, i32 %55, i32 0)
  %57 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %58 = load i32, i32* @TDA9875_AER, align 4
  %59 = call i32 @chip_write(%struct.CHIPSTATE* %57, i32 %58, i32 0)
  %60 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %61 = load i32, i32* @TDA9875_MCS, align 4
  %62 = call i32 @chip_write(%struct.CHIPSTATE* %60, i32 %61, i32 68)
  %63 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %64 = load i32, i32* @TDA9875_MVL, align 4
  %65 = call i32 @chip_write(%struct.CHIPSTATE* %63, i32 %64, i32 3)
  %66 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %67 = load i32, i32* @TDA9875_MVR, align 4
  %68 = call i32 @chip_write(%struct.CHIPSTATE* %66, i32 %67, i32 3)
  %69 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %70 = load i32, i32* @TDA9875_MBA, align 4
  %71 = call i32 @chip_write(%struct.CHIPSTATE* %69, i32 %70, i32 0)
  %72 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %73 = load i32, i32* @TDA9875_MTR, align 4
  %74 = call i32 @chip_write(%struct.CHIPSTATE* %72, i32 %73, i32 0)
  %75 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %76 = load i32, i32* @TDA9875_ACS, align 4
  %77 = call i32 @chip_write(%struct.CHIPSTATE* %75, i32 %76, i32 68)
  %78 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %79 = load i32, i32* @TDA9875_AVL, align 4
  %80 = call i32 @chip_write(%struct.CHIPSTATE* %78, i32 %79, i32 0)
  %81 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %82 = load i32, i32* @TDA9875_AVR, align 4
  %83 = call i32 @chip_write(%struct.CHIPSTATE* %81, i32 %82, i32 0)
  %84 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %85 = load i32, i32* @TDA9875_ABA, align 4
  %86 = call i32 @chip_write(%struct.CHIPSTATE* %84, i32 %85, i32 0)
  %87 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %88 = load i32, i32* @TDA9875_ATR, align 4
  %89 = call i32 @chip_write(%struct.CHIPSTATE* %87, i32 %88, i32 0)
  %90 = load %struct.CHIPSTATE*, %struct.CHIPSTATE** %2, align 8
  %91 = load i32, i32* @TDA9875_MUT, align 4
  %92 = call i32 @chip_write(%struct.CHIPSTATE* %90, i32 %91, i32 204)
  ret i32 0
}

declare dso_local i32 @chip_write(%struct.CHIPSTATE*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
