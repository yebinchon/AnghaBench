; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_set_pkeytable.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_set_pkeytable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.ipath_ibdev = type { i32 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*)* @recv_subn_set_pkeytable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_subn_set_pkeytable(%struct.ib_smp* %0, %struct.ib_device* %1) #0 {
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
  %26 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %27 = call %struct.ipath_ibdev* @to_idev(%struct.ib_device* %26)
  store %struct.ipath_ibdev* %27, %struct.ipath_ibdev** %8, align 8
  %28 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %29 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ipath_get_npkeys(i32 %30)
  store i32 %31, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %47, %2
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = icmp ult i32 %33, %34
  br i1 %35, label %36, label %50

36:                                               ; preds = %32
  %37 = load i32*, i32** %6, align 8
  %38 = load i32, i32* %9, align 4
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds i32, i32* %37, i64 %39
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @be16_to_cpu(i32 %41)
  %43 = load i32*, i32** %7, align 8
  %44 = load i32, i32* %9, align 4
  %45 = zext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  store i32 %42, i32* %46, align 4
  br label %47

47:                                               ; preds = %36
  %48 = load i32, i32* %9, align 4
  %49 = add i32 %48, 1
  store i32 %49, i32* %9, align 4
  br label %32

50:                                               ; preds = %32
  %51 = load i64, i64* %5, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %60, label %53

53:                                               ; preds = %50
  %54 = load %struct.ipath_ibdev*, %struct.ipath_ibdev** %8, align 8
  %55 = getelementptr inbounds %struct.ipath_ibdev, %struct.ipath_ibdev* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i64 @set_pkeys(i32 %56, i32* %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %53, %50
  %61 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %62 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %63 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = or i32 %64, %61
  store i32 %65, i32* %63, align 8
  br label %66

66:                                               ; preds = %60, %53
  %67 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %68 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %69 = call i32 @recv_subn_get_pkeytable(%struct.ib_smp* %67, %struct.ib_device* %68)
  ret i32 %69
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local %struct.ipath_ibdev* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @ipath_get_npkeys(i32) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i64 @set_pkeys(i32, i32*) #1

declare dso_local i32 @recv_subn_get_pkeytable(%struct.ib_smp*, %struct.ib_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
