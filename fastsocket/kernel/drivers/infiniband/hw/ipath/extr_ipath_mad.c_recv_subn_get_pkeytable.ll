; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_pkeytable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_pkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.ipath_ibdev = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*)* @recv_subn_get_pkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_subn_get_pkeytable(%struct.ib_smp* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.ib_smp*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.ipath_ibdev*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %11 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %12 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @be32_to_cpu(i32 %13)
  %15 = and i32 %14, 65535
  %16 = mul nsw i32 32, %15
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %5, align 8
  %18 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %19 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = inttoptr i64 %20 to i32*
  store i32* %21, i32** %6, align 8
  %22 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %23 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = inttoptr i64 %24 to i32*
  store i32* %25, i32** %7, align 8
  %26 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %27 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call i32 @memset(i64 %28, i32 0, i32 8)
  %30 = load i64, i64* %5, align 8
  %31 = icmp eq i64 %30, 0
  br i1 %31, label %32, label %63

32:                                               ; preds = %2
  %33 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %34 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %33)
  store %struct.ipath_ibdev* %34, %struct.ipath_ibdev** %8, align 8
  %35 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %36 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ipath_get_npkeys(i32 %37)
  store i32 %38, i32* %10, align 4
  %39 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %40 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  %43 = call i32 @get_pkeys(i32 %41, i32* %42)
  store i32 0, i32* %9, align 4
  br label %44

44:                                               ; preds = %59, %32
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* %10, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %44
  %49 = load i32*, i32** %6, align 8
  %50 = load i32, i32* %9, align 4
  %51 = zext i32 %50 to i64
  %52 = getelementptr inbounds i32, i32* %49, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @cpu_to_be16(i32 %53)
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %9, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %54, i32* %58, align 4
  br label %59

59:                                               ; preds = %48
  %60 = load i32, i32* %9, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %9, align 4
  br label %44

62:                                               ; preds = %44
  br label %69

63:                                               ; preds = %2
  %64 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %65 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %66 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 8
  %68 = or i32 %67, %64
  store i32 %68, i32* %66, align 8
  br label %69

69:                                               ; preds = %63, %62
  %70 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %71 = call i32 @reply(%struct.ib_smp* %70)
  ret i32 %71
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_get_npkeys(i32) #1

declare dso_local i32 @get_pkeys(i32, i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
