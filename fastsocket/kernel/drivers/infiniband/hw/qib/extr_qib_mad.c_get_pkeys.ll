; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_get_pkeys.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_get_pkeys.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qib_devdata = type { %struct.qib_ctxtdata**, %struct.qib_pportdata* }
%struct.qib_ctxtdata = type { i32 }
%struct.qib_pportdata = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qib_devdata*, i32, i32*)* @get_pkeys to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_pkeys(%struct.qib_devdata* %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.qib_devdata*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.qib_pportdata*, align 8
  %8 = alloca %struct.qib_ctxtdata*, align 8
  store %struct.qib_devdata* %0, %struct.qib_devdata** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %10 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %9, i32 0, i32 1
  %11 = load %struct.qib_pportdata*, %struct.qib_pportdata** %10, align 8
  %12 = load i32, i32* %5, align 4
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %11, i64 %13
  %15 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %14, i64 -1
  store %struct.qib_pportdata* %15, %struct.qib_pportdata** %7, align 8
  %16 = load %struct.qib_devdata*, %struct.qib_devdata** %4, align 8
  %17 = getelementptr inbounds %struct.qib_devdata, %struct.qib_devdata* %16, i32 0, i32 0
  %18 = load %struct.qib_ctxtdata**, %struct.qib_ctxtdata*** %17, align 8
  %19 = load %struct.qib_pportdata*, %struct.qib_pportdata** %7, align 8
  %20 = getelementptr inbounds %struct.qib_pportdata, %struct.qib_pportdata* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %18, i64 %21
  %23 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %22, align 8
  store %struct.qib_ctxtdata* %23, %struct.qib_ctxtdata** %8, align 8
  %24 = load i32*, i32** %6, align 8
  %25 = load %struct.qib_ctxtdata*, %struct.qib_ctxtdata** %8, align 8
  %26 = getelementptr inbounds %struct.qib_ctxtdata, %struct.qib_ctxtdata* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(i32* %24, i32 %27, i32 4)
  ret i32 0
}

declare dso_local i32 @memcpy(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
