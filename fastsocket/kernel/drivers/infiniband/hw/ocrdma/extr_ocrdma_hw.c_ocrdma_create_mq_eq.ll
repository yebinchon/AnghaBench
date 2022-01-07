; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_mq_eq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ocrdma/extr_ocrdma_hw.c_ocrdma_create_mq_eq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocrdma_dev = type { i32, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, i32 }

@BE_INTERRUPT_MODE_INTX = common dso_local global i64 0, align 8
@IRQF_SHARED = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@OCRDMA_EQ_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"ocrdma_mq%d\00", align 1
@ocrdma_irq_handler = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocrdma_dev*)* @ocrdma_create_mq_eq to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocrdma_create_mq_eq(%struct.ocrdma_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ocrdma_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.ocrdma_dev* %0, %struct.ocrdma_dev** %3, align 8
  store i64 0, i64* %6, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %9 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @BE_INTERRUPT_MODE_INTX, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @IRQF_SHARED, align 8
  store i64 %15, i64* %6, align 8
  br label %34

16:                                               ; preds = %1
  %17 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %18 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %17, i32 0, i32 2
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %23 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = sub nsw i32 %21, %26
  store i32 %27, i32* %7, align 4
  %28 = load i32, i32* %7, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %33

30:                                               ; preds = %16
  %31 = load i32, i32* @EBUSY, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %2, align 4
  br label %76

33:                                               ; preds = %16
  br label %34

34:                                               ; preds = %33, %14
  %35 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %36 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %37 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %36, i32 0, i32 1
  %38 = load i32, i32* @OCRDMA_EQ_LEN, align 4
  %39 = call i32 @ocrdma_create_eq(%struct.ocrdma_dev* %35, %struct.TYPE_9__* %37, i32 %38)
  store i32 %39, i32* %4, align 4
  %40 = load i32, i32* %4, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  store i32 %43, i32* %2, align 4
  br label %76

44:                                               ; preds = %34
  %45 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %46 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %45, i32 0, i32 1
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %50 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @sprintf(i32 %48, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i32 %51)
  %53 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %54 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %55 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %54, i32 0, i32 1
  %56 = call i32 @ocrdma_get_irq(%struct.ocrdma_dev* %53, %struct.TYPE_9__* %55)
  store i32 %56, i32* %5, align 4
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* @ocrdma_irq_handler, align 4
  %59 = load i64, i64* %6, align 8
  %60 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %61 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %65 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %64, i32 0, i32 1
  %66 = call i32 @request_irq(i32 %57, i32 %58, i64 %59, i32 %63, %struct.TYPE_9__* %65)
  store i32 %66, i32* %4, align 4
  %67 = load i32, i32* %4, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %44
  %70 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %71 = load %struct.ocrdma_dev*, %struct.ocrdma_dev** %3, align 8
  %72 = getelementptr inbounds %struct.ocrdma_dev, %struct.ocrdma_dev* %71, i32 0, i32 1
  %73 = call i32 @_ocrdma_destroy_eq(%struct.ocrdma_dev* %70, %struct.TYPE_9__* %72)
  br label %74

74:                                               ; preds = %69, %44
  %75 = load i32, i32* %4, align 4
  store i32 %75, i32* %2, align 4
  br label %76

76:                                               ; preds = %74, %42, %30
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @ocrdma_create_eq(%struct.ocrdma_dev*, %struct.TYPE_9__*, i32) #1

declare dso_local i32 @sprintf(i32, i8*, i32) #1

declare dso_local i32 @ocrdma_get_irq(%struct.ocrdma_dev*, %struct.TYPE_9__*) #1

declare dso_local i32 @request_irq(i32, i32, i64, i32, %struct.TYPE_9__*) #1

declare dso_local i32 @_ocrdma_destroy_eq(%struct.ocrdma_dev*, %struct.TYPE_9__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
