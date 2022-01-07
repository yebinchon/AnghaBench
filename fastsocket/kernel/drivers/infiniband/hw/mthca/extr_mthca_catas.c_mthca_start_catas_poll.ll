; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_catas.c_mthca_start_catas_poll.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/mthca/extr_mthca_catas.c_mthca_start_catas_poll.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mthca_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, %struct.TYPE_5__, i32, i32* }
%struct.TYPE_5__ = type { i64, i64, i32 }

@.str = private unnamed_addr constant [55 x i8] c"couldn't map catastrophic error region at 0x%llx/0x%x\0A\00", align 1
@poll_catas = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@MTHCA_CATAS_POLL_INTERVAL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @mthca_start_catas_poll(%struct.mthca_dev* %0) #0 {
  %2 = alloca %struct.mthca_dev*, align 8
  %3 = alloca i64, align 8
  store %struct.mthca_dev* %0, %struct.mthca_dev** %2, align 8
  %4 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %5 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  %7 = call i32 @init_timer(%struct.TYPE_5__* %6)
  %8 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %9 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 4
  store i32* null, i32** %10, align 8
  %11 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %12 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = call i64 @pci_resource_start(i32 %13, i32 0)
  %15 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %16 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @pci_resource_len(i32 %17, i32 0)
  %19 = sub nsw i32 %18, 1
  %20 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %21 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = and i32 %19, %23
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %14, %25
  store i64 %26, i64* %3, align 8
  %27 = load i64, i64* %3, align 8
  %28 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %29 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %31, 4
  %33 = call i32* @ioremap(i64 %27, i32 %32)
  %34 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %35 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 4
  store i32* %33, i32** %36, align 8
  %37 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %38 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 4
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %51, label %42

42:                                               ; preds = %1
  %43 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %44 = load i64, i64* %3, align 8
  %45 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %46 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = mul nsw i32 %48, 4
  %50 = call i32 @mthca_warn(%struct.mthca_dev* %43, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %44, i32 %49)
  br label %78

51:                                               ; preds = %1
  %52 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %53 = ptrtoint %struct.mthca_dev* %52 to i64
  %54 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %55 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  store i64 %53, i64* %57, align 8
  %58 = load i32, i32* @poll_catas, align 4
  %59 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %60 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i32 %58, i32* %62, align 8
  %63 = load i64, i64* @jiffies, align 8
  %64 = load i64, i64* @MTHCA_CATAS_POLL_INTERVAL, align 8
  %65 = add nsw i64 %63, %64
  %66 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %67 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  store i64 %65, i64* %69, align 8
  %70 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %71 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %70, i32 0, i32 0
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 3
  %73 = call i32 @INIT_LIST_HEAD(i32* %72)
  %74 = load %struct.mthca_dev*, %struct.mthca_dev** %2, align 8
  %75 = getelementptr inbounds %struct.mthca_dev, %struct.mthca_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 2
  %77 = call i32 @add_timer(%struct.TYPE_5__* %76)
  br label %78

78:                                               ; preds = %51, %42
  ret void
}

declare dso_local i32 @init_timer(%struct.TYPE_5__*) #1

declare dso_local i64 @pci_resource_start(i32, i32) #1

declare dso_local i32 @pci_resource_len(i32, i32) #1

declare dso_local i32* @ioremap(i64, i32) #1

declare dso_local i32 @mthca_warn(%struct.mthca_dev*, i8*, i64, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
