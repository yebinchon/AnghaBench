; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_attach_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/powermac/extr_low_i2c.c_pmac_i2c_attach_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmac_i2c_bus = type { %struct.i2c_adapter* }
%struct.i2c_adapter = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pmac_i2c_attach_adapter(%struct.pmac_i2c_bus* %0, %struct.i2c_adapter* %1) #0 {
  %3 = alloca %struct.pmac_i2c_bus*, align 8
  %4 = alloca %struct.i2c_adapter*, align 8
  store %struct.pmac_i2c_bus* %0, %struct.pmac_i2c_bus** %3, align 8
  store %struct.i2c_adapter* %1, %struct.i2c_adapter** %4, align 8
  %5 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %3, align 8
  %6 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %5, i32 0, i32 0
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %6, align 8
  %8 = icmp ne %struct.i2c_adapter* %7, null
  %9 = zext i1 %8 to i32
  %10 = call i32 @WARN_ON(i32 %9)
  %11 = load %struct.i2c_adapter*, %struct.i2c_adapter** %4, align 8
  %12 = load %struct.pmac_i2c_bus*, %struct.pmac_i2c_bus** %3, align 8
  %13 = getelementptr inbounds %struct.pmac_i2c_bus, %struct.pmac_i2c_bus* %12, i32 0, i32 0
  store %struct.i2c_adapter* %11, %struct.i2c_adapter** %13, align 8
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
