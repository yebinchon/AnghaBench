; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_get_base_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_iba6110.c_ipath_ht_get_base_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ipath_base_info = type { i32 }

@IPATH_RUNTIME_HT = common dso_local global i32 0, align 4
@IPATH_RUNTIME_PIO_REGSWAPPED = common dso_local global i32 0, align 4
@IPATH_RUNTIME_RCVHDR_COPY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipath_portdata*, i8*)* @ipath_ht_get_base_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_ht_get_base_info(%struct.ipath_portdata* %0, i8* %1) #0 {
  %3 = alloca %struct.ipath_portdata*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ipath_base_info*, align 8
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i8*, i8** %4, align 8
  %7 = bitcast i8* %6 to %struct.ipath_base_info*
  store %struct.ipath_base_info* %7, %struct.ipath_base_info** %5, align 8
  %8 = load i32, i32* @IPATH_RUNTIME_HT, align 4
  %9 = load i32, i32* @IPATH_RUNTIME_PIO_REGSWAPPED, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.ipath_base_info*, %struct.ipath_base_info** %5, align 8
  %12 = getelementptr inbounds %struct.ipath_base_info, %struct.ipath_base_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = or i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ipath_portdata*, %struct.ipath_portdata** %3, align 8
  %16 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp slt i32 %19, 4
  br i1 %20, label %21, label %27

21:                                               ; preds = %2
  %22 = load i32, i32* @IPATH_RUNTIME_RCVHDR_COPY, align 4
  %23 = load %struct.ipath_base_info*, %struct.ipath_base_info** %5, align 8
  %24 = getelementptr inbounds %struct.ipath_base_info, %struct.ipath_base_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = or i32 %25, %22
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %21, %2
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
