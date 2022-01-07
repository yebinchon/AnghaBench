; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_set_phyerrthreshold.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_set_phyerrthreshold.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT = common dso_local global i32 0, align 4
@INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_devdata*, i32)* @set_phyerrthreshold to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_phyerrthreshold(%struct.ipath_devdata* %0, i32 %1) #0 {
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %7 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = load i32, i32* @INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT, align 4
  %10 = lshr i32 %8, %9
  %11 = load i32, i32* @INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK, align 4
  %12 = and i32 %10, %11
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = load i32, i32* %4, align 4
  %15 = icmp ne i32 %13, %14
  br i1 %15, label %16, label %42

16:                                               ; preds = %2
  %17 = load i32, i32* @INFINIPATH_IBCC_PHYERRTHRESHOLD_MASK, align 4
  %18 = load i32, i32* @INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT, align 4
  %19 = shl i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %22 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %23, %20
  store i32 %24, i32* %22, align 8
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @INFINIPATH_IBCC_PHYERRTHRESHOLD_SHIFT, align 4
  %27 = shl i32 %25, %26
  %28 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %29 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 8
  %32 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %33 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %34 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %33, i32 0, i32 1
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %39 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %32, i32 %37, i32 %40)
  br label %42

42:                                               ; preds = %16, %2
  ret i32 0
}

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
