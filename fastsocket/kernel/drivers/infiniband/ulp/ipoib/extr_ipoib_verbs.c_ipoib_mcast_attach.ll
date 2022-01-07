; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_mcast_attach.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_verbs.c_ipoib_mcast_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%union.ib_gid = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32 }
%struct.ib_qp_attr = type { i32 }

@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_QP_QKEY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"failed to modify QP, ret = %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [47 x i8] c"failed to attach to multicast group, ret = %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_mcast_attach(%struct.net_device* %0, i32 %1, %union.ib_gid* %2, i32 %3) #0 {
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.ib_gid*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipoib_dev_priv*, align 8
  %10 = alloca %struct.ib_qp_attr*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %5, align 8
  store i32 %1, i32* %6, align 4
  store %union.ib_gid* %2, %union.ib_gid** %7, align 8
  store i32 %3, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %13)
  store %struct.ipoib_dev_priv* %14, %struct.ipoib_dev_priv** %9, align 8
  store %struct.ib_qp_attr* null, %struct.ib_qp_attr** %10, align 8
  %15 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %16 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %19 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %22 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ib_find_pkey(i32 %17, i32 %20, i32 %23, i32* %12)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %33

26:                                               ; preds = %4
  %27 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 2
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  %31 = load i32, i32* @ENXIO, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %11, align 4
  br label %81

33:                                               ; preds = %4
  %34 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %35 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %36 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %35, i32 0, i32 2
  %37 = call i32 @set_bit(i32 %34, i32* %36)
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %67

40:                                               ; preds = %33
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %11, align 4
  %43 = load i32, i32* @GFP_KERNEL, align 4
  %44 = call %struct.ib_qp_attr* @kmalloc(i32 4, i32 %43)
  store %struct.ib_qp_attr* %44, %struct.ib_qp_attr** %10, align 8
  %45 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %10, align 8
  %46 = icmp ne %struct.ib_qp_attr* %45, null
  br i1 %46, label %48, label %47

47:                                               ; preds = %40
  br label %81

48:                                               ; preds = %40
  %49 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %50 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %10, align 8
  %53 = getelementptr inbounds %struct.ib_qp_attr, %struct.ib_qp_attr* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 4
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %10, align 8
  %58 = load i32, i32* @IB_QP_QKEY, align 4
  %59 = call i32 @ib_modify_qp(i32 %56, %struct.ib_qp_attr* %57, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %48
  %63 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %64 = load i32, i32* %11, align 4
  %65 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %63, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %64)
  br label %81

66:                                               ; preds = %48
  br label %67

67:                                               ; preds = %66, %33
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %union.ib_gid*, %union.ib_gid** %7, align 8
  %72 = load i32, i32* %6, align 4
  %73 = call i32 @ib_attach_mcast(i32 %70, %union.ib_gid* %71, i32 %72)
  store i32 %73, i32* %11, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %67
  %77 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %9, align 8
  %78 = load i32, i32* %11, align 4
  %79 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %76, %67
  br label %81

81:                                               ; preds = %80, %62, %47, %26
  %82 = load %struct.ib_qp_attr*, %struct.ib_qp_attr** %10, align 8
  %83 = call i32 @kfree(%struct.ib_qp_attr* %82)
  %84 = load i32, i32* %11, align 4
  ret i32 %84
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local %struct.ib_qp_attr* @kmalloc(i32, i32) #1

declare dso_local i32 @ib_modify_qp(i32, %struct.ib_qp_attr*, i32) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @ib_attach_mcast(i32, %union.ib_gid*, i32) #1

declare dso_local i32 @kfree(%struct.ib_qp_attr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
