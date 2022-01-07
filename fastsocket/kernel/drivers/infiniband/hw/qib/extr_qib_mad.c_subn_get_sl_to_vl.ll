; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_sl_to_vl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/qib/extr_qib_mad.c_subn_get_sl_to_vl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_smp = type { i32, i64 }
%struct.ib_device = type { i32 }
%struct.qib_ibport = type { i32, i32* }

@IB_PORT_SL_MAP_SUP = common dso_local global i32 0, align 4
@IB_SMP_UNSUP_METHOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ib_smp*, %struct.ib_device*, i32)* @subn_get_sl_to_vl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @subn_get_sl_to_vl(%struct.ib_smp* %0, %struct.ib_device* %1, i32 %2) #0 {
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca %struct.ib_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.qib_ibport*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.ib_smp* %0, %struct.ib_smp** %4, align 8
  store %struct.ib_device* %1, %struct.ib_device** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.ib_device*, %struct.ib_device** %5, align 8
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.qib_ibport* @to_iport(%struct.ib_device* %10, i32 %11)
  store %struct.qib_ibport* %12, %struct.qib_ibport** %7, align 8
  %13 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %14 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = inttoptr i64 %15 to i32*
  store i32* %16, i32** %8, align 8
  %17 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %18 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = call i32 @memset(i64 %19, i32 0, i32 8)
  %21 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %22 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @IB_PORT_SL_MAP_SUP, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %3
  %28 = load i32, i32* @IB_SMP_UNSUP_METHOD, align 4
  %29 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %30 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = or i32 %31, %28
  store i32 %32, i32* %30, align 8
  br label %65

33:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %34

34:                                               ; preds = %61, %33
  %35 = load i32, i32* %9, align 4
  %36 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %37 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = call i32 @ARRAY_SIZE(i32* %38)
  %40 = icmp ult i32 %35, %39
  br i1 %40, label %41, label %64

41:                                               ; preds = %34
  %42 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %43 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %42, i32 0, i32 1
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %9, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = shl i32 %48, 4
  %50 = load %struct.qib_ibport*, %struct.qib_ibport** %7, align 8
  %51 = getelementptr inbounds %struct.qib_ibport, %struct.qib_ibport* %50, i32 0, i32 1
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %9, align 4
  %54 = add i32 %53, 1
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %52, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = or i32 %49, %57
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds i32, i32* %59, i32 1
  store i32* %60, i32** %8, align 8
  store i32 %58, i32* %59, align 4
  br label %61

61:                                               ; preds = %41
  %62 = load i32, i32* %9, align 4
  %63 = add i32 %62, 2
  store i32 %63, i32* %9, align 4
  br label %34

64:                                               ; preds = %34
  br label %65

65:                                               ; preds = %64, %27
  %66 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %67 = call i32 @reply(%struct.ib_smp* %66)
  ret i32 %67
}

declare dso_local %struct.qib_ibport* @to_iport(%struct.ib_device*, i32) #1

declare dso_local i32 @memset(i64, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32*) #1

declare dso_local i32 @reply(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
