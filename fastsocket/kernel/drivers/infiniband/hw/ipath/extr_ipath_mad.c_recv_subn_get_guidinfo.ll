; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_guidinfo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_mad.c_recv_subn_get_guidinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64, i32 }
%struct.ib_device = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64 }

@IB_SMP_INVALID_FIELD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*)* @recv_subn_get_guidinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @recv_subn_get_guidinfo(%struct.ib_smp* %0, %struct.ib_device* %1) #0 {
  %3 = alloca %struct.ib_smp*, align 8
  %4 = alloca %struct.ib_device*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i64, align 8
  store %struct.ib_smp* %0, %struct.ib_smp** %3, align 8
  store %struct.ib_device* %1, %struct.ib_device** %4, align 8
  %8 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %9 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 8
  %11 = call i32 @be32_to_cpu(i32 %10)
  %12 = mul nsw i32 8, %11
  %13 = sext i32 %12 to i64
  store i64 %13, i64* %5, align 8
  %14 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %15 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = inttoptr i64 %16 to i64*
  store i64* %17, i64** %6, align 8
  %18 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %19 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = call i32 @memset(i64 %20, i32 0, i32 8)
  %22 = load i64, i64* %5, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %2
  %25 = load %struct.ib_device*, %struct.ib_device** %4, align 8
  %26 = call %struct.TYPE_4__* @to_idev(%struct.ib_device* %25)
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %7, align 8
  %31 = load i64, i64* %7, align 8
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %24
  %34 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %35 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %36 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = or i32 %37, %34
  store i32 %38, i32* %36, align 8
  br label %42

39:                                               ; preds = %24
  %40 = load i64, i64* %7, align 8
  %41 = load i64*, i64** %6, align 8
  store i64 %40, i64* %41, align 8
  br label %42

42:                                               ; preds = %39, %33
  br label %49

43:                                               ; preds = %2
  %44 = load i32, i32* @IB_SMP_INVALID_FIELD, align 4
  %45 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %46 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = or i32 %47, %44
  store i32 %48, i32* %46, align 8
  br label %49

49:                                               ; preds = %43, %42
  %50 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %51 = call i32 @reply(%struct.ib_smp* %50)
  ret i32 %51
}

declare dso_local i32 @be32_to_cpu(i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local %struct.TYPE_4__* @to_idev(%struct.ib_device*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
