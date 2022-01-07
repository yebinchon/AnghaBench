; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_kernel.h_ipath_get_hdrqtail.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_kernel.h_ipath_get_hdrqtail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_portdata = type { i32, i64, i64, %struct.ipath_devdata* }
%struct.ipath_devdata = type { i32, i32 }

@IPATH_NODMA_RTAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.ipath_portdata*)* @ipath_get_hdrqtail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @ipath_get_hdrqtail(%struct.ipath_portdata* %0) #0 {
  %2 = alloca %struct.ipath_portdata*, align 8
  %3 = alloca %struct.ipath_devdata*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.ipath_portdata* %0, %struct.ipath_portdata** %2, align 8
  %7 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %8 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %7, i32 0, i32 3
  %9 = load %struct.ipath_devdata*, %struct.ipath_devdata** %8, align 8
  store %struct.ipath_devdata* %9, %struct.ipath_devdata** %3, align 8
  %10 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %11 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @IPATH_NODMA_RTAIL, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %1
  %17 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %18 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %17, i32 0, i32 2
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to i32*
  %21 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %22 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %20, i64 %24
  %26 = load %struct.ipath_devdata*, %struct.ipath_devdata** %3, align 8
  %27 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %25, i64 %29
  store i32* %30, i32** %5, align 8
  %31 = load i32*, i32** %5, align 8
  %32 = call i64 @ipath_hdrget_seq(i32* %31)
  store i64 %32, i64* %6, align 8
  %33 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %34 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %39 = getelementptr inbounds %struct.ipath_portdata, %struct.ipath_portdata* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %16
  %43 = load i64, i64* %4, align 8
  %44 = add nsw i64 %43, 1
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %42, %16
  br label %49

46:                                               ; preds = %1
  %47 = load %struct.ipath_portdata*, %struct.ipath_portdata** %2, align 8
  %48 = call i64 @ipath_get_rcvhdrtail(%struct.ipath_portdata* %47)
  store i64 %48, i64* %4, align 8
  br label %49

49:                                               ; preds = %46, %45
  %50 = load i64, i64* %4, align 8
  ret i64 %50
}

declare dso_local i64 @ipath_hdrget_seq(i32*) #1

declare dso_local i64 @ipath_get_rcvhdrtail(%struct.ipath_portdata*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
