; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_init_node_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_provider.c_mthca_init_node_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32* }
%struct.ib_smp = type { i64, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_DESC = common dso_local global i32 0, align 4
@IB_SMP_ATTR_NODE_INFO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mthca_dev*)* @mthca_init_node_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mthca_init_node_data(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca %struct.ib_smp*, align 8
  %4 = alloca %struct.ib_smp*, align 8
  %5 = alloca i32, align 4
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %3, align 8
  store %struct.ib_smp* null, %struct.ib_smp** %4, align 8
  %6 = load i32, i32* @ENOMEM, align 4
  %7 = sub nsw i32 0, %6
  store i32 %7, i32* %5, align 4
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.ib_smp* @kzalloc(i32 16, i32 %8)
  store %struct.ib_smp* %9, %struct.ib_smp** %3, align 8
  %10 = load i32, i32* @GFP_KERNEL, align 4
  %11 = call %struct.ib_smp* @kmalloc(i32 16, i32 %10)
  store %struct.ib_smp* %11, %struct.ib_smp** %4, align 8
  %12 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %13 = icmp ne %struct.ib_smp* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %16 = icmp ne %struct.ib_smp* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14, %1
  br label %72

18:                                               ; preds = %14
  %19 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %20 = call i32 @init_query_mad(%struct.ib_smp* %19)
  %21 = load i32, i32* @IB_SMP_ATTR_NODE_DESC, align 4
  %22 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %23 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 8
  %24 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %25 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %26 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %27 = call i32 @mthca_MAD_IFC(%struct.mthca_dev* %24, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %25, %struct.ib_smp* %26)
  store i32 %27, i32* %5, align 4
  %28 = load i32, i32* %5, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %72

31:                                               ; preds = %18
  %32 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %33 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %37 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = call i32 @memcpy(i32* %35, i64 %38, i32 64)
  %40 = load i32, i32* @IB_SMP_ATTR_NODE_INFO, align 4
  %41 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %42 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %44 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %45 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %46 = call i32 @mthca_MAD_IFC(%struct.mthca_dev* %43, i32 1, i32 1, i32 1, i32* null, i32* null, %struct.ib_smp* %44, %struct.ib_smp* %45)
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %5, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  br label %72

50:                                               ; preds = %31
  %51 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %52 = call i64 @mthca_is_memfree(%struct.mthca_dev* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %63

54:                                               ; preds = %50
  %55 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %56 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, 32
  %59 = inttoptr i64 %58 to i32*
  %60 = call i32 @be32_to_cpup(i32* %59)
  %61 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %62 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %61, i32 0, i32 1
  store i32 %60, i32* %62, align 8
  br label %63

63:                                               ; preds = %54, %50
  %64 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %65 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %68 = getelementptr inbounds %struct.ib_smp, %struct.ib_smp* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = add nsw i64 %69, 12
  %71 = call i32 @memcpy(i32* %66, i64 %70, i32 8)
  br label %72

72:                                               ; preds = %63, %49, %30, %17
  %73 = load %struct.ib_smp*, %struct.ib_smp** %3, align 8
  %74 = call i32 @kfree(%struct.ib_smp* %73)
  %75 = load %struct.ib_smp*, %struct.ib_smp** %4, align 8
  %76 = call i32 @kfree(%struct.ib_smp* %75)
  %77 = load i32, i32* %5, align 4
  ret i32 %77
}

declare dso_local %struct.ib_smp* @kzalloc(i32, i32) #1

declare dso_local %struct.ib_smp* @kmalloc(i32, i32) #1

declare dso_local i32 @init_query_mad(%struct.ib_smp*) #1

declare dso_local i32 @mthca_MAD_IFC(%struct.mthca_dev*, i32, i32, i32, i32*, i32*, %struct.ib_smp*, %struct.ib_smp*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local i64 @mthca_is_memfree(%struct.mthca_dev*) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i32 @kfree(%struct.ib_smp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
