; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_scan.c_bcma_erom_is_end.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/bcma/extr_scan.c_bcma_erom_is_end.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcma_bus = type { i32 }

@SCAN_ER_TAG_END = common dso_local global i32 0, align 4
@SCAN_ER_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcma_bus*, i32**)* @bcma_erom_is_end to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcma_erom_is_end(%struct.bcma_bus* %0, i32** %1) #0 {
  %3 = alloca %struct.bcma_bus*, align 8
  %4 = alloca i32**, align 8
  %5 = alloca i32, align 4
  store %struct.bcma_bus* %0, %struct.bcma_bus** %3, align 8
  store i32** %1, i32*** %4, align 8
  %6 = load %struct.bcma_bus*, %struct.bcma_bus** %3, align 8
  %7 = load i32**, i32*** %4, align 8
  %8 = call i32 @bcma_erom_get_ent(%struct.bcma_bus* %6, i32** %7)
  store i32 %8, i32* %5, align 4
  %9 = load i32**, i32*** %4, align 8
  %10 = call i32 @bcma_erom_push_ent(i32** %9)
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @SCAN_ER_TAG_END, align 4
  %13 = load i32, i32* @SCAN_ER_VALID, align 4
  %14 = or i32 %12, %13
  %15 = icmp eq i32 %11, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

declare dso_local i32 @bcma_erom_get_ent(%struct.bcma_bus*, i32**) #1

declare dso_local i32 @bcma_erom_push_ent(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
