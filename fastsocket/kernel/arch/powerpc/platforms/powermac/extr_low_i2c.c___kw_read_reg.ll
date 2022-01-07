; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c___kw_read_reg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c___kw_read_reg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_host_kw = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pmac_i2c_host_kw*, i64)* @__kw_read_reg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__kw_read_reg(%struct.pmac_i2c_host_kw* %0, i64 %1) #0 {
  %3 = alloca %struct.pmac_i2c_host_kw*, align 8
  %4 = alloca i64, align 8
  store %struct.pmac_i2c_host_kw* %0, %struct.pmac_i2c_host_kw** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %6 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* %4, align 8
  %9 = trunc i64 %8 to i32
  %10 = load %struct.pmac_i2c_host_kw*, %struct.pmac_i2c_host_kw** %3, align 8
  %11 = getelementptr inbounds %struct.pmac_i2c_host_kw, %struct.pmac_i2c_host_kw* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = shl i32 %9, %12
  %14 = zext i32 %13 to i64
  %15 = add nsw i64 %7, %14
  %16 = call i32 @readb(i64 %15)
  ret i32 %16
}

declare dso_local i32 @readb(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
