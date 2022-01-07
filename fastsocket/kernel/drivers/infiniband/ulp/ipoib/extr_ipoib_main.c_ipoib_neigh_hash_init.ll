; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_hash_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/ulp/ipoib/extr_ipoib_main.c_ipoib_neigh_hash_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }
%struct.ipoib_dev_priv = type { i32, i32, %struct.ipoib_neigh_table }
%struct.ipoib_neigh_table = type { i32, %struct.ipoib_neigh_hash* }
%struct.ipoib_neigh_hash = type { i32, i32, %struct.ipoib_neigh_table*, %struct.ipoib_neigh** }
%struct.ipoib_neigh = type { i32 }

@IPOIB_NEIGH_TBL_FLUSH = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@IPOIB_STOP_NEIGH_GC = common dso_local global i32 0, align 4
@arp_tbl = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@ipoib_workqueue = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipoib_dev_priv*)* @ipoib_neigh_hash_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipoib_neigh_hash_init(%struct.ipoib_dev_priv* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipoib_dev_priv*, align 8
  %4 = alloca %struct.ipoib_neigh_table*, align 8
  %5 = alloca %struct.ipoib_neigh_hash*, align 8
  %6 = alloca %struct.ipoib_neigh**, align 8
  %7 = alloca i32, align 4
  store %struct.ipoib_dev_priv* %0, %struct.ipoib_dev_priv** %3, align 8
  %8 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %9 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %8, i32 0, i32 2
  store %struct.ipoib_neigh_table* %9, %struct.ipoib_neigh_table** %4, align 8
  %10 = load i32, i32* @IPOIB_NEIGH_TBL_FLUSH, align 4
  %11 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %12 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %11, i32 0, i32 1
  %13 = call i32 @clear_bit(i32 %10, i32* %12)
  %14 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %4, align 8
  %15 = getelementptr inbounds %struct.ipoib_neigh_table, %struct.ipoib_neigh_table* %14, i32 0, i32 1
  store %struct.ipoib_neigh_hash* null, %struct.ipoib_neigh_hash** %15, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i8* @kzalloc(i32 24, i32 %16)
  %18 = bitcast i8* %17 to %struct.ipoib_neigh_hash*
  store %struct.ipoib_neigh_hash* %18, %struct.ipoib_neigh_hash** %5, align 8
  %19 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %20 = icmp ne %struct.ipoib_neigh_hash* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %1
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %2, align 4
  br label %74

24:                                               ; preds = %1
  %25 = load i32, i32* @IPOIB_STOP_NEIGH_GC, align 4
  %26 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %27 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %26, i32 0, i32 1
  %28 = call i32 @set_bit(i32 %25, i32* %27)
  %29 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arp_tbl, i32 0, i32 1), align 4
  %30 = call i32 @roundup_pow_of_two(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = mul i64 %32, 8
  %34 = trunc i64 %33 to i32
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i8* @kzalloc(i32 %34, i32 %35)
  %37 = bitcast i8* %36 to %struct.ipoib_neigh**
  store %struct.ipoib_neigh** %37, %struct.ipoib_neigh*** %6, align 8
  %38 = load %struct.ipoib_neigh**, %struct.ipoib_neigh*** %6, align 8
  %39 = icmp ne %struct.ipoib_neigh** %38, null
  br i1 %39, label %45, label %40

40:                                               ; preds = %24
  %41 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %42 = call i32 @kfree(%struct.ipoib_neigh_hash* %41)
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %2, align 4
  br label %74

45:                                               ; preds = %24
  %46 = load i32, i32* %7, align 4
  %47 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %48 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sub nsw i32 %49, 1
  %51 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %52 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.ipoib_neigh**, %struct.ipoib_neigh*** %6, align 8
  %54 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %55 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %54, i32 0, i32 3
  store %struct.ipoib_neigh** %53, %struct.ipoib_neigh*** %55, align 8
  %56 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %57 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %4, align 8
  %58 = getelementptr inbounds %struct.ipoib_neigh_table, %struct.ipoib_neigh_table* %57, i32 0, i32 1
  store %struct.ipoib_neigh_hash* %56, %struct.ipoib_neigh_hash** %58, align 8
  %59 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %4, align 8
  %60 = load %struct.ipoib_neigh_hash*, %struct.ipoib_neigh_hash** %5, align 8
  %61 = getelementptr inbounds %struct.ipoib_neigh_hash, %struct.ipoib_neigh_hash* %60, i32 0, i32 2
  store %struct.ipoib_neigh_table* %59, %struct.ipoib_neigh_table** %61, align 8
  %62 = load %struct.ipoib_neigh_table*, %struct.ipoib_neigh_table** %4, align 8
  %63 = getelementptr inbounds %struct.ipoib_neigh_table, %struct.ipoib_neigh_table* %62, i32 0, i32 0
  %64 = call i32 @atomic_set(i32* %63, i32 0)
  %65 = load i32, i32* @IPOIB_STOP_NEIGH_GC, align 4
  %66 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %67 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %66, i32 0, i32 1
  %68 = call i32 @clear_bit(i32 %65, i32* %67)
  %69 = load i32, i32* @ipoib_workqueue, align 4
  %70 = load %struct.ipoib_dev_priv*, %struct.ipoib_dev_priv** %3, align 8
  %71 = getelementptr inbounds %struct.ipoib_dev_priv, %struct.ipoib_dev_priv* %70, i32 0, i32 0
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @arp_tbl, i32 0, i32 0), align 4
  %73 = call i32 @queue_delayed_work(i32 %69, i32* %71, i32 %72)
  store i32 0, i32* %2, align 4
  br label %74

74:                                               ; preds = %45, %40, %21
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @roundup_pow_of_two(i32) #1

declare dso_local i32 @kfree(%struct.ipoib_neigh_hash*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @queue_delayed_work(i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
