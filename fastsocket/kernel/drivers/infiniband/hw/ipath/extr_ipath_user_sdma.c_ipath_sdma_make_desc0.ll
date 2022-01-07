; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_sdma_make_desc0.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_sdma_make_desc0.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32, i32, i32)* @ipath_sdma_make_desc0 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_sdma_make_desc0(%struct.ipath_devdata* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.ipath_devdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %6, align 4
  %10 = sext i32 %9 to i64
  %11 = and i64 %10, 4294967292
  %12 = shl i64 %11, 32
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %5, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = and i64 %15, 3
  %17 = shl i64 %16, 30
  %18 = or i64 %12, %17
  %19 = load i32, i32* %7, align 4
  %20 = sext i32 %19 to i64
  %21 = and i64 %20, 2047
  %22 = shl i64 %21, 16
  %23 = or i64 %18, %22
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = and i64 %25, 2047
  %27 = or i64 %23, %26
  %28 = trunc i64 %27 to i32
  %29 = call i32 @cpu_to_le64(i32 %28)
  ret i32 %29
}

declare dso_local i32 @cpu_to_le64(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
