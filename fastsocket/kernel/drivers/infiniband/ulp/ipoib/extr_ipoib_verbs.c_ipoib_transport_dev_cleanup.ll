; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_transport_dev_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_transport_dev_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32* }

@.str = private unnamed_addr constant [22 x i8] c"ib_qp_destroy failed\0A\00", align 1
@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"ib_cq_destroy (send) failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"ib_cq_destroy (recv) failed\0A\00", align 1
@.str.3 = private unnamed_addr constant [20 x i8] c"ib_dereg_mr failed\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"ib_dealloc_pd failed\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipoib_transport_dev_cleanup(%struct.net_device* %0) #0 {
  %2 = alloca %struct.net_device*, align 8
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  store %struct.net_device* %0, %struct.net_device** %2, align 8
  %4 = load %struct.net_device*, %struct.net_device** %2, align 8
  %5 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %4)
  store %struct.ipoib_dev_priv* %5, %struct.ipoib_dev_priv** %3, align 8
  %6 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %7 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %6, i32 0, i32 5
  %8 = load i32*, i32** %7, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %26

10:                                               ; preds = %1
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 5
  %13 = load i32*, i32** %12, align 8
  %14 = call i64 @ib_destroy_qp(i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %10
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %18 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %17, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %10
  %20 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %21 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %20, i32 0, i32 5
  store i32* null, i32** %21, align 8
  %22 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 4
  %25 = call i32 @clear_bit(i32 %22, i32* %24)
  br label %26

26:                                               ; preds = %19, %1
  %27 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %28 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @ib_destroy_cq(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %34 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  br label %35

35:                                               ; preds = %32, %26
  %36 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %37 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = call i64 @ib_destroy_cq(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %35
  %42 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %43 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %42, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %35
  %45 = load %struct.net_device*, %struct.net_device** %2, align 8
  %46 = call i32 @ipoib_cm_dev_cleanup(%struct.net_device* %45)
  %47 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %48 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @ib_dereg_mr(i32 %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %44
  %53 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %54 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %53, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  br label %55

55:                                               ; preds = %52, %44
  %56 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %57 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @ib_dealloc_pd(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %63 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %62, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  br label %64

64:                                               ; preds = %61, %55
  ret void
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ib_destroy_qp(i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i64 @ib_destroy_cq(i32) #1

declare dso_local i32 @ipoib_cm_dev_cleanup(%struct.net_device*) #1

declare dso_local i64 @ib_dereg_mr(i32) #1

declare dso_local i64 @ib_dealloc_pd(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
