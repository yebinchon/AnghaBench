; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_close.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { i32, i64, i32 (%struct.pmac_i2c_bus*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmac_i2c_close(%struct.pmac_i2c_bus* %0) #0 {
  %2 = alloca %struct.pmac_i2c_bus*, align 8
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %2, align 8
  %3 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %4 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  %7 = xor i1 %6, true
  %8 = zext i1 %7 to i32
  %9 = call i32 @WARN_ON(i32 %8)
  %10 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %11 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %10, i32 0, i32 2
  %12 = load i32 (%struct.pmac_i2c_bus*)*, i32 (%struct.pmac_i2c_bus*)** %11, align 8
  %13 = icmp ne i32 (%struct.pmac_i2c_bus*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %16 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %15, i32 0, i32 2
  %17 = load i32 (%struct.pmac_i2c_bus*)*, i32 (%struct.pmac_i2c_bus*)** %16, align 8
  %18 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %19 = call i32 %17(%struct.pmac_i2c_bus* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %22 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %21, i32 0, i32 1
  store i64 0, i64* %22, align 8
  %23 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %2, align 8
  %24 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %23, i32 0, i32 0
  %25 = call i32 @mutex_unlock(i32* %24)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
