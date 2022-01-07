; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_ipath_restart_sdma.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_sdma.c_ipath_restart_sdma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { i32, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@IPATH_HAS_SEND_DMA = common dso_local global i32 0, align 4
@IPATH_SDMA_RUNNING = common dso_local global i32 0, align 4
@IPATH_SDMA_SHUTDOWN = common dso_local global i32 0, align 4
@IPATH_SDMA_DISABLED = common dso_local global i32 0, align 4
@IPATH_SDMA_DISARMED = common dso_local global i32 0, align 4
@IPATH_SDMA_ABORTING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [49 x i8] c"invalid attempt to restart SDMA, status 0x%08lx\0A\00", align 1
@INFINIPATH_S_SDMAENABLE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipath_restart_sdma(%struct.ipath_devdata* %0) #0 {
  %2 = alloca %struct.ipath_devdata*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %2, align 8
  store i32 1, i32* %4, align 4
  %5 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %6 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* @IPATH_HAS_SEND_DMA, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %112

12:                                               ; preds = %1
  %13 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %14 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %13, i32 0, i32 6
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @spin_lock_irqsave(i32* %14, i64 %15)
  %17 = load i32, i32* @IPATH_SDMA_RUNNING, align 4
  %18 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %19 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %18, i32 0, i32 5
  %20 = call i64 @test_bit(i32 %17, i32* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %12
  %23 = load i32, i32* @IPATH_SDMA_SHUTDOWN, align 4
  %24 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %25 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %24, i32 0, i32 5
  %26 = call i64 @test_bit(i32 %23, i32* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %12
  store i32 0, i32* %4, align 4
  br label %42

29:                                               ; preds = %22
  %30 = load i32, i32* @IPATH_SDMA_DISABLED, align 4
  %31 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %32 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %31, i32 0, i32 5
  %33 = call i32 @__clear_bit(i32 %30, i32* %32)
  %34 = load i32, i32* @IPATH_SDMA_DISARMED, align 4
  %35 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %36 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %35, i32 0, i32 5
  %37 = call i32 @__clear_bit(i32 %34, i32* %36)
  %38 = load i32, i32* @IPATH_SDMA_ABORTING, align 4
  %39 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %40 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %39, i32 0, i32 5
  %41 = call i32 @__clear_bit(i32 %38, i32* %40)
  br label %42

42:                                               ; preds = %29, %28
  %43 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %44 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %43, i32 0, i32 6
  %45 = load i64, i64* %3, align 8
  %46 = call i32 @spin_unlock_irqrestore(i32* %44, i64 %45)
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %54, label %49

49:                                               ; preds = %42
  %50 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %51 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %50, i32 0, i32 5
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @ipath_dbg(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %52)
  br label %112

54:                                               ; preds = %42
  %55 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %56 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %55, i32 0, i32 2
  %57 = load i64, i64* %3, align 8
  %58 = call i32 @spin_lock_irqsave(i32* %56, i64 %57)
  %59 = load i32, i32* @INFINIPATH_S_SDMAENABLE, align 4
  %60 = xor i32 %59, -1
  %61 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %62 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 8
  %64 = and i32 %63, %60
  store i32 %64, i32* %62, align 8
  %65 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %66 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %67 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %66, i32 0, i32 3
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %72 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %71, i32 0, i32 4
  %73 = load i32, i32* %72, align 8
  %74 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %65, i32 %70, i32 %73)
  %75 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %76 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %77 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %76, i32 0, i32 3
  %78 = load %struct.TYPE_2__*, %struct.TYPE_2__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %75, i32 %80)
  %82 = load i32, i32* @INFINIPATH_S_SDMAENABLE, align 4
  %83 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %84 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %83, i32 0, i32 4
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %82
  store i32 %86, i32* %84, align 8
  %87 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %88 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %89 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %88, i32 0, i32 3
  %90 = load %struct.TYPE_2__*, %struct.TYPE_2__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %94 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @ipath_write_kreg(%struct.ipath_devdata* %87, i32 %92, i32 %95)
  %97 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %98 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %99 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %98, i32 0, i32 3
  %100 = load %struct.TYPE_2__*, %struct.TYPE_2__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @ipath_read_kreg64(%struct.ipath_devdata* %97, i32 %102)
  %104 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %105 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %104, i32 0, i32 2
  %106 = load i64, i64* %3, align 8
  %107 = call i32 @spin_unlock_irqrestore(i32* %105, i64 %106)
  %108 = load %struct.ipath_devdata*, %struct.ipath_devdata** %2, align 8
  %109 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ipath_ib_piobufavail(i32 %110)
  br label %112

112:                                              ; preds = %54, %49, %11
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @__clear_bit(i32, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @ipath_dbg(i8*, i32) #1

declare dso_local i32 @ipath_write_kreg(%struct.ipath_devdata*, i32, i32) #1

declare dso_local i32 @ipath_read_kreg64(%struct.ipath_devdata*, i32) #1

declare dso_local i32 @ipath_ib_piobufavail(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
