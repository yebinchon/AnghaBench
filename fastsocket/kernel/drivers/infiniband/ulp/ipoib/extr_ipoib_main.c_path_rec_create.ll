; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_path_rec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_path = type { %struct.TYPE_6__, i32, i32, %struct.net_device* }
%struct.TYPE_6__ = type { i32, i32, i32, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.net_device = type { i32 }
%struct.ipoib_dev_priv = type { %struct.TYPE_8__*, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_path* (%struct.net_device*, i8*)* @path_rec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_path* @path_rec_create(%struct.net_device* %0, i8* %1) #0 {
  %3 = alloca %struct.ipoib_path*, align 8
  %4 = alloca %struct.net_device*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ipoib_dev_priv*, align 8
  %7 = alloca %struct.ipoib_path*, align 8
  store %struct.net_device* %0, %struct.net_device** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.net_device*, %struct.net_device** %4, align 8
  %9 = call %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device* %8)
  store %struct.ipoib_dev_priv* %9, %struct.ipoib_dev_priv** %6, align 8
  %10 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %11 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %10, i32 0, i32 0
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = icmp ne %struct.TYPE_8__* %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %2
  store %struct.ipoib_path* null, %struct.ipoib_path** %3, align 8
  br label %64

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_ATOMIC, align 4
  %17 = call %struct.ipoib_path* @kzalloc(i32 40, i32 %16)
  store %struct.ipoib_path* %17, %struct.ipoib_path** %7, align 8
  %18 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %19 = icmp ne %struct.ipoib_path* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.ipoib_path* null, %struct.ipoib_path** %3, align 8
  br label %64

21:                                               ; preds = %15
  %22 = load %struct.net_device*, %struct.net_device** %4, align 8
  %23 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %24 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %23, i32 0, i32 3
  store %struct.net_device* %22, %struct.net_device** %24, align 8
  %25 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %26 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %25, i32 0, i32 2
  %27 = call i32 @skb_queue_head_init(i32* %26)
  %28 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %29 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %28, i32 0, i32 1
  %30 = call i32 @INIT_LIST_HEAD(i32* %29)
  %31 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %32 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i8*, i8** %5, align 8
  %37 = call i32 @memcpy(i32 %35, i8* %36, i32 4)
  %38 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %39 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %42 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 3
  store i32 %40, i32* %43, align 4
  %44 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %45 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @cpu_to_be16(i32 %46)
  %48 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %49 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 2
  store i32 %47, i32* %50, align 8
  %51 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %52 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  store i32 1, i32* %53, align 8
  %54 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %6, align 8
  %55 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %54, i32 0, i32 0
  %56 = load %struct.TYPE_8__*, %struct.TYPE_8__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  %61 = getelementptr inbounds %struct.ipoib_path, %struct.ipoib_path* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  store i32 %59, i32* %62, align 4
  %63 = load %struct.ipoib_path*, %struct.ipoib_path** %7, align 8
  store %struct.ipoib_path* %63, %struct.ipoib_path** %3, align 8
  br label %64

64:                                               ; preds = %21, %20, %14
  %65 = load %struct.ipoib_path*, %struct.ipoib_path** %3, align 8
  ret %struct.ipoib_path* %65
}

declare dso_local %struct.ipoib_dev_priv* @netdev_priv(%struct.net_device*) #1

declare dso_local %struct.ipoib_path* @kzalloc(i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @memcpy(i32, i8*, i32) #1

declare dso_local i32 @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
