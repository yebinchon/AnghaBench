; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_sprom.c_bcma_fill_sprom_with_fallback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_sprom.c_bcma_fill_sprom_with_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ssb_sprom = type { i32 }

@.str = private unnamed_addr constant [47 x i8] c"Using SPROM revision %d provided by platform.\0A\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Using fallback SPROM failed (err %d)\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*, %struct.ssb_sprom*)* @bcma_fill_sprom_with_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_fill_sprom_with_fallback(%struct.bcma_bus* %0, %struct.ssb_sprom* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bcma_bus*, align 8
  %5 = alloca %struct.ssb_sprom*, align 8
  %6 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %4, align 8
  store %struct.ssb_sprom* %1, %struct.ssb_sprom** %5, align 8
  %7 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %8 = load %struct.ssb_sprom*, %struct.ssb_sprom** %5, align 8
  %9 = call i32 @get_fallback_sprom(%struct.bcma_bus* %7, %struct.ssb_sprom* %8)
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %6, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %20

13:                                               ; preds = %2
  %14 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %15 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %16 = getelementptr inbounds %struct.bcma_bus, %struct.bcma_bus* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @bcma_debug(%struct.bcma_bus* %14, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %3, align 4
  br label %25

20:                                               ; preds = %12
  %21 = load %struct.bcma_bus*, %struct.bcma_bus** %4, align 8
  %22 = load i32, i32* %6, align 4
  %23 = call i32 @bcma_warn(%struct.bcma_bus* %21, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %6, align 4
  store i32 %24, i32* %3, align 4
  br label %25

25:                                               ; preds = %20, %13
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @get_fallback_sprom(%struct.bcma_bus*, %struct.ssb_sprom*) #1

declare dso_local i32 @bcma_debug(%struct.bcma_bus*, i8*, i32) #1

declare dso_local i32 @bcma_warn(%struct.bcma_bus*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
