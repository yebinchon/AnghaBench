; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_ssb_mips_serial_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_ssb_mips_serial_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_mipscore = type { i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_mipscore*)* @ssb_mips_serial_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_mips_serial_init(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca %struct.ssb_mipscore*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %2, align 8
  %4 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %4, i32 0, i32 2
  %6 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  store %struct.ssb_bus* %8, %struct.ssb_bus** %3, align 8
  %9 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %10 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %23

14:                                               ; preds = %1
  %15 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %16 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %15, i32 0, i32 1
  %17 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %18 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ssb_extif_serial_init(%struct.TYPE_5__* %16, i32 %19)
  %21 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %22 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 8
  br label %42

23:                                               ; preds = %1
  %24 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %25 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %23
  %30 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %31 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %30, i32 0, i32 0
  %32 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %33 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @ssb_chipco_serial_init(%struct.TYPE_6__* %31, i32 %34)
  %36 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %37 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  br label %41

38:                                               ; preds = %23
  %39 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %40 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %39, i32 0, i32 0
  store i32 0, i32* %40, align 8
  br label %41

41:                                               ; preds = %38, %29
  br label %42

42:                                               ; preds = %41, %14
  ret void
}

declare dso_local i32 @ssb_extif_serial_init(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @ssb_chipco_serial_init(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
