; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_query_gid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_verbs.c_ipath_query_gid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%union.ib_gid = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }
%struct.ipath_ibdev = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_device*, i32, i32, %union.ib_gid*)* @ipath_query_gid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipath_query_gid(%struct.ib_device* %0, i32 %1, i32 %2, %union.ib_gid* %3) #0 {
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %union.ib_gid*, align 8
  %9 = alloca %struct.ipath_ibdev*, align 8
  %10 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %union.ib_gid* %3, %union.ib_gid** %8, align 8
  %11 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %12 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %11)
  store %struct.ipath_ibdev* %12, %struct.ipath_ibdev** %9, align 8
  %13 = load i32, i32* %7, align 4
  %14 = icmp sge i32 %13, 1
  br i1 %14, label %15, label %18

15:                                               ; preds = %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %10, align 4
  br label %33

18:                                               ; preds = %4
  %19 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %20 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %23 = bitcast %union.ib_gid* %22 to %struct.TYPE_3__*
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %9, align 8
  %26 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load %union.ib_gid*, %union.ib_gid** %8, align 8
  %31 = bitcast %union.ib_gid* %30 to %struct.TYPE_3__*
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %18, %15
  %34 = load i32, i32* %10, align 4
  ret i32 %34
}

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
