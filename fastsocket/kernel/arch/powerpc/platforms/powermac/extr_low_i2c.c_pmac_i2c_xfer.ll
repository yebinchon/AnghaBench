; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_xfer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_xfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { {}*, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [83 x i8] c"xfer() chan=%d, addrdir=0x%x, mode=%d, subsize=%d, subaddr=0x%x, %d bytes, bus %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmac_i2c_xfer(%struct.pmac_i2c_bus* %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca %struct.pmac_i2c_bus*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %7, align 8
  %15 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = call i32 @WARN_ON(i32 %19)
  %21 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %7, align 8
  %22 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %8, align 4
  %25 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %7, align 8
  %26 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %7, align 8
  %32 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %31, i32 0, i32 1
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 (i8*, i32, ...) @DBG(i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %24, i32 %27, i32 %28, i32 %29, i32 %30, i32 %35)
  %37 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %7, align 8
  %38 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %37, i32 0, i32 0
  %39 = bitcast {}** %38 to i32 (%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32)**
  %40 = load i32 (%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32)*, i32 (%struct.pmac_i2c_bus*, i32, i32, i32, i32*, i32)** %39, align 8
  %41 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %7, align 8
  %42 = load i32, i32* %8, align 4
  %43 = load i32, i32* %9, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32*, i32** %11, align 8
  %46 = load i32, i32* %12, align 4
  %47 = call i32 %40(%struct.pmac_i2c_bus* %41, i32 %42, i32 %43, i32 %44, i32* %45, i32 %46)
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %13, align 4
  ret i32 %48
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @DBG(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
