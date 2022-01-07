; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_process_ac_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_setup.c_process_ac_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_irq = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32 }

@AC1_SIGA_INPUT_NEEDED = common dso_local global i8 0, align 1
@AC1_SIGA_OUTPUT_NEEDED = common dso_local global i8 0, align 1
@AC1_SIGA_SYNC_NEEDED = common dso_local global i8 0, align 1
@AC1_AUTOMATIC_SYNC_ON_THININT = common dso_local global i8 0, align 1
@AC1_AUTOMATIC_SYNC_ON_OUT_PCI = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.qdio_irq*, i8)* @process_ac_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @process_ac_flags(%struct.qdio_irq* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.qdio_irq*, align 8
  %4 = alloca i8, align 1
  store %struct.qdio_irq* %0, %struct.qdio_irq** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i8, i8* %4, align 1
  %6 = zext i8 %5 to i32
  %7 = load i8, i8* @AC1_SIGA_INPUT_NEEDED, align 1
  %8 = zext i8 %7 to i32
  %9 = and i32 %6, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %13 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  br label %15

15:                                               ; preds = %11, %2
  %16 = load i8, i8* %4, align 1
  %17 = zext i8 %16 to i32
  %18 = load i8, i8* @AC1_SIGA_OUTPUT_NEEDED, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %17, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %15
  %23 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %24 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  store i32 1, i32* %25, align 4
  br label %26

26:                                               ; preds = %22, %15
  %27 = load i8, i8* %4, align 1
  %28 = zext i8 %27 to i32
  %29 = load i8, i8* @AC1_SIGA_SYNC_NEEDED, align 1
  %30 = zext i8 %29 to i32
  %31 = and i32 %28, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %26
  %34 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %35 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 2
  store i32 1, i32* %36, align 4
  br label %37

37:                                               ; preds = %33, %26
  %38 = load i8, i8* %4, align 1
  %39 = zext i8 %38 to i32
  %40 = load i8, i8* @AC1_AUTOMATIC_SYNC_ON_THININT, align 1
  %41 = zext i8 %40 to i32
  %42 = and i32 %39, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %37
  %45 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %46 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 3
  store i32 1, i32* %47, align 4
  br label %48

48:                                               ; preds = %44, %37
  %49 = load i8, i8* %4, align 1
  %50 = zext i8 %49 to i32
  %51 = load i8, i8* @AC1_AUTOMATIC_SYNC_ON_OUT_PCI, align 1
  %52 = zext i8 %51 to i32
  %53 = and i32 %50, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %57 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 4
  store i32 1, i32* %58, align 4
  br label %59

59:                                               ; preds = %55, %48
  %60 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %61 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 4
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %75

65:                                               ; preds = %59
  %66 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %67 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %67, i32 0, i32 3
  %69 = load i32, i32* %68, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %65
  %72 = load %struct.qdio_irq*, %struct.qdio_irq** %3, align 8
  %73 = getelementptr inbounds %struct.qdio_irq, %struct.qdio_irq* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 5
  store i32 1, i32* %74, align 4
  br label %75

75:                                               ; preds = %71, %65, %59
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
