; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_tidtemplate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_tidtemplate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i64 }

@INFINIPATH_RT_BUFSIZE_SHIFT = common dso_local global i64 0, align 8
@INFINIPATH_RT_VALID = common dso_local global i64 0, align 8
@INFINIPATH_RT_BUFSIZE_MASK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*)* @ipath_ht_tidtemplate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_ht_tidtemplate(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  %3 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %4 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 4
  %6 = ashr i32 %5, 2
  %7 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %7, i32 0, i32 0
  store i32 %6, i32* %8, align 8
  %9 = load i64, i64* @INFINIPATH_RT_BUFSIZE_SHIFT, align 8
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = trunc i64 %9 to i32
  %14 = shl i32 %12, %13
  store i32 %14, i32* %11, align 8
  %15 = load i64, i64* @INFINIPATH_RT_VALID, align 8
  %16 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %17 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sext i32 %18 to i64
  %20 = or i64 %19, %15
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %17, align 8
  %22 = load i64, i64* @INFINIPATH_RT_BUFSIZE_MASK, align 8
  %23 = and i64 -1, %22
  %24 = load i64, i64* @INFINIPATH_RT_BUFSIZE_SHIFT, align 8
  %25 = shl i64 %23, %24
  %26 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %27 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
