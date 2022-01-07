; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_ib.c_ipoib_ib_dev_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"P_Key 0x%04x not found\0A\00", align 1
@IPOIB_PKEY_ASSIGNED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [27 x i8] c"ipoib_init_qp returned %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"ipoib_ib_post_receives returned %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"ipoib_cm_dev_open returned %d\0A\00", align 1
@IPOIB_STOP_REAPER = common dso_local global i32 0, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@IPOIB_FLAG_INITIALIZED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ipoib_ib_dev_open(%struct.net_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.net_device*, align 8
  %4 = alloca %struct.ipoib_dev_priv*, align 8
  %5 = alloca i32, align 4
  store %struct.net_device* %0, %struct.net_device** %3, align 8
  %6 = load %struct.net_device*, %struct.net_device** %3, align 8
  %7 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %6)
  store %struct.ipoib_dev_priv* %7, %struct.ipoib_dev_priv** %4, align 8
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 6
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 5
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %15 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %18 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %17, i32 0, i32 4
  %19 = call i64 @ib_find_pkey(i32 %10, i32 %13, i32 %16, i32* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %1
  %22 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %23 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %24 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %22, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %25)
  %27 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %28 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %29 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %28, i32 0, i32 2
  %30 = call i32 @clear_bit(i32 %27, i32* %29)
  store i32 -1, i32* %2, align 4
  br label %87

31:                                               ; preds = %1
  %32 = load i32, i32* @IPOIB_PKEY_ASSIGNED, align 4
  %33 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %34 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %33, i32 0, i32 2
  %35 = call i32 @set_bit(i32 %32, i32* %34)
  %36 = load %struct.net_device*, %struct.net_device** %3, align 8
  %37 = call i32 @ipoib_init_qp(%struct.net_device* %36)
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %31
  %41 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %42 = load i32, i32* %5, align 4
  %43 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %41, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %42)
  store i32 -1, i32* %2, align 4
  br label %87

44:                                               ; preds = %31
  %45 = load %struct.net_device*, %struct.net_device** %3, align 8
  %46 = call i32 @ipoib_ib_post_receives(%struct.net_device* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  %53 = load %struct.net_device*, %struct.net_device** %3, align 8
  %54 = call i32 @ipoib_ib_dev_stop(%struct.net_device* %53, i32 1)
  store i32 -1, i32* %2, align 4
  br label %87

55:                                               ; preds = %44
  %56 = load %struct.net_device*, %struct.net_device** %3, align 8
  %57 = call i32 @ipoib_cm_dev_open(%struct.net_device* %56)
  store i32 %57, i32* %5, align 4
  %58 = load i32, i32* %5, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %62 = load i32, i32* %5, align 4
  %63 = call i32 @ipoib_warn(%struct.ipoib_dev_priv* %61, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i32 %62)
  %64 = load %struct.net_device*, %struct.net_device** %3, align 8
  %65 = call i32 @ipoib_ib_dev_stop(%struct.net_device* %64, i32 1)
  store i32 -1, i32* %2, align 4
  br label %87

66:                                               ; preds = %55
  %67 = load i32, i32* @IPOIB_STOP_REAPER, align 4
  %68 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %69 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %68, i32 0, i32 2
  %70 = call i32 @clear_bit(i32 %67, i32* %69)
  %71 = load i32, i32* @ipoib_workqueue, align 4
  %72 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %73 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %72, i32 0, i32 3
  %74 = load i32, i32* @HZ, align 4
  %75 = call i32 @round_jiffies_relative(i32 %74)
  %76 = call i32 @queue_delayed_work(i32 %71, i32* %73, i32 %75)
  %77 = load i32, i32* @IPOIB_FLAG_INITIALIZED, align 4
  %78 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %79 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %78, i32 0, i32 2
  %80 = call i32 @test_and_set_bit(i32 %77, i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %66
  %83 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %4, align 8
  %84 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %83, i32 0, i32 1
  %85 = call i32 @napi_enable(i32* %84)
  br label %86

86:                                               ; preds = %82, %66
  store i32 0, i32* %2, align 4
  br label %87

87:                                               ; preds = %86, %60, %49, %40, %21
  %88 = load i32, i32* %2, align 4
  ret i32 %88
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local i64 @ib_find_pkey(i32, i32, i32, i32*) #1

declare dso_local i32 @ipoib_warn(%struct.ipoib_dev_priv*, i8*, i32) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @ipoib_init_qp(%struct.net_device*) #1

declare dso_local i32 @ipoib_ib_post_receives(%struct.net_device*) #1

declare dso_local i32 @ipoib_ib_dev_stop(%struct.net_device*, i32) #1

declare dso_local i32 @ipoib_cm_dev_open(%struct.net_device*) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

declare dso_local i32 @round_jiffies_relative(i32) #1

declare dso_local i32 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @napi_enable(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
