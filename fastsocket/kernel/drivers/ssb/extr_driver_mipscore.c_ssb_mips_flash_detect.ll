; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_ssb_mips_flash_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ssb/extr_driver_mipscore.c_ssb_mips_flash_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ssb_mipscore = type { i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.ssb_bus* }
%struct.ssb_bus = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@SSB_CHIPCO_FLASH_CFG = common dso_local global i32 0, align 4
@SSB_CHIPCO_CFG_DS16 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ssb_mipscore*)* @ssb_mips_flash_detect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ssb_mips_flash_detect(%struct.ssb_mipscore* %0) #0 {
  %2 = alloca %struct.ssb_mipscore*, align 8
  %3 = alloca %struct.ssb_bus*, align 8
  store %struct.ssb_mipscore* %0, %struct.ssb_mipscore** %2, align 8
  %4 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %5 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %4, i32 0, i32 3
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.ssb_bus*, %struct.ssb_bus** %7, align 8
  store %struct.ssb_bus* %8, %struct.ssb_bus** %3, align 8
  %9 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %10 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %9, i32 0, i32 0
  store i32 2, i32* %10, align 8
  %11 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %12 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %34

16:                                               ; preds = %1
  %17 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %18 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %17, i32 0, i32 1
  store i32 469762048, i32* %18, align 4
  %19 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %20 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %19, i32 0, i32 2
  store i32 33554432, i32* %20, align 8
  %21 = load %struct.ssb_bus*, %struct.ssb_bus** %3, align 8
  %22 = getelementptr inbounds %struct.ssb_bus, %struct.ssb_bus* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* @SSB_CHIPCO_FLASH_CFG, align 4
  %26 = call i32 @ssb_read32(i64 %24, i32 %25)
  %27 = load i32, i32* @SSB_CHIPCO_CFG_DS16, align 4
  %28 = and i32 %26, %27
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %32 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %31, i32 0, i32 0
  store i32 1, i32* %32, align 8
  br label %33

33:                                               ; preds = %30, %16
  br label %39

34:                                               ; preds = %1
  %35 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %36 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %35, i32 0, i32 1
  store i32 532676608, i32* %36, align 4
  %37 = load %struct.ssb_mipscore*, %struct.ssb_mipscore** %2, align 8
  %38 = getelementptr inbounds %struct.ssb_mipscore, %struct.ssb_mipscore* %37, i32 0, i32 2
  store i32 4194304, i32* %38, align 8
  br label %39

39:                                               ; preds = %34, %33
  ret void
}

declare dso_local i32 @ssb_read32(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
