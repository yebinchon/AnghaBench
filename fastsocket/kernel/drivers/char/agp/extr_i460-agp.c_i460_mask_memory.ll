; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_i460-agp.c_i460_mask_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_i460-agp.c_i460_mask_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_bridge_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@I460_IO_PAGE_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.agp_bridge_data*, i32, i32)* @i460_mask_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @i460_mask_memory(%struct.agp_bridge_data* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.agp_bridge_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %4, align 8
  %8 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i64 0
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @I460_IO_PAGE_SHIFT, align 4
  %17 = shl i32 1, %16
  %18 = sub nsw i32 %17, 1
  %19 = xor i32 %18, -1
  %20 = and i32 %15, %19
  %21 = and i32 %20, -4096
  %22 = lshr i32 %21, 12
  %23 = or i32 %14, %22
  %24 = zext i32 %23 to i64
  ret i64 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
