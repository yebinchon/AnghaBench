; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_ctor.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_ctor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipoib_neigh = type { i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipoib_neigh* (i32*, %struct.net_device*)* @ipoib_neigh_ctor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipoib_neigh* @ipoib_neigh_ctor(i32* %0, %struct.net_device* %1) #0 {
  %3 = alloca %struct.ipoib_neigh*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.net_device*, align 8
  %6 = alloca %struct.ipoib_neigh*, align 8
  store i32* %0, i32** %4, align 8
  store %struct.net_device* %1, %struct.net_device** %5, align 8
  %7 = load i32, i32* @GFP_ATOMIC, align 4
  %8 = call %struct.ipoib_neigh* @kzalloc(i32 24, i32 %7)
  store %struct.ipoib_neigh* %8, %struct.ipoib_neigh** %6, align 8
  %9 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %10 = icmp ne %struct.ipoib_neigh* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %2
  store %struct.ipoib_neigh* null, %struct.ipoib_neigh** %3, align 8
  br label %32

12:                                               ; preds = %2
  %13 = load %struct.net_device*, %struct.net_device** %5, align 8
  %14 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %15 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %14, i32 0, i32 4
  store %struct.net_device* %13, %struct.net_device** %15, align 8
  %16 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %17 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %16, i32 0, i32 3
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @memcpy(i32* %17, i32* %18, i32 4)
  %20 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %21 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %20, i32 0, i32 2
  %22 = call i32 @skb_queue_head_init(i32* %21)
  %23 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %24 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %23, i32 0, i32 1
  %25 = call i32 @INIT_LIST_HEAD(i32* %24)
  %26 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %27 = call i32 @ipoib_cm_set(%struct.ipoib_neigh* %26, i32* null)
  %28 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  %29 = getelementptr inbounds %struct.ipoib_neigh, %struct.ipoib_neigh* %28, i32 0, i32 0
  %30 = call i32 @atomic_set(i32* %29, i32 1)
  %31 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %6, align 8
  store %struct.ipoib_neigh* %31, %struct.ipoib_neigh** %3, align 8
  br label %32

32:                                               ; preds = %12, %11
  %33 = load %struct.ipoib_neigh*, %struct.ipoib_neigh** %3, align 8
  ret %struct.ipoib_neigh* %33
}

declare dso_local %struct.ipoib_neigh* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ipoib_cm_set(%struct.ipoib_neigh*, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
