; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_v3_calc_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_max1586.c_max1586_v3_calc_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.max1586_data = type { i32, i32 }

@MAX1586_V3_MAX_VSEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.max1586_data*, i32)* @max1586_v3_calc_voltage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @max1586_v3_calc_voltage(%struct.max1586_data* %0, i32 %1) #0 {
  %3 = alloca %struct.max1586_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.max1586_data* %0, %struct.max1586_data** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.max1586_data*, %struct.max1586_data** %3, align 8
  %7 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load %struct.max1586_data*, %struct.max1586_data** %3, align 8
  %10 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = sub i32 %8, %11
  store i32 %12, i32* %5, align 4
  %13 = load %struct.max1586_data*, %struct.max1586_data** %3, align 8
  %14 = getelementptr inbounds %struct.max1586_data, %struct.max1586_data* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* %5, align 4
  %18 = mul i32 %16, %17
  %19 = load i32, i32* @MAX1586_V3_MAX_VSEL, align 4
  %20 = udiv i32 %18, %19
  %21 = add i32 %15, %20
  ret i32 %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
