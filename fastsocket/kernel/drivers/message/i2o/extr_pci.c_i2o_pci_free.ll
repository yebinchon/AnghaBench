; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_pci.c_i2o_pci_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/message/i2o/extr_pci.c_i2o_pci_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2o_controller = type { %struct.TYPE_6__*, %struct.TYPE_5__, %struct.TYPE_4__, i64, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.device }
%struct.device = type { i32 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.i2o_controller*)* @i2o_pci_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @i2o_pci_free(%struct.i2o_controller* %0) #0 {
  %2 = alloca %struct.i2o_controller*, align 8
  %3 = alloca %struct.device*, align 8
  store %struct.i2o_controller* %0, %struct.i2o_controller** %2, align 8
  %4 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %5 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %4, i32 0, i32 0
  %6 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.device* %7, %struct.device** %3, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %10 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %9, i32 0, i32 9
  %11 = call i32 @i2o_dma_free(%struct.device* %8, i32* %10)
  %12 = load %struct.device*, %struct.device** %3, align 8
  %13 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %14 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %13, i32 0, i32 8
  %15 = call i32 @i2o_dma_free(%struct.device* %12, i32* %14)
  %16 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %17 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %16, i32 0, i32 7
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @kfree(i32 %18)
  %20 = load %struct.device*, %struct.device** %3, align 8
  %21 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %22 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %21, i32 0, i32 6
  %23 = call i32 @i2o_dma_free(%struct.device* %20, i32* %22)
  %24 = load %struct.device*, %struct.device** %3, align 8
  %25 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %26 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %25, i32 0, i32 5
  %27 = call i32 @i2o_dma_free(%struct.device* %24, i32* %26)
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %30 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %29, i32 0, i32 4
  %31 = call i32 @i2o_dma_free(%struct.device* %28, i32* %30)
  %32 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %33 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %48

36:                                               ; preds = %1
  %37 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %38 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %36
  %43 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %44 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @iounmap(i64 %46)
  br label %48

48:                                               ; preds = %42, %36, %1
  %49 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %50 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %49, i32 0, i32 1
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %60

54:                                               ; preds = %48
  %55 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %56 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @iounmap(i64 %58)
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.i2o_controller*, %struct.i2o_controller** %2, align 8
  %62 = getelementptr inbounds %struct.i2o_controller, %struct.i2o_controller* %61, i32 0, i32 0
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %62, align 8
  %64 = call i32 @pci_release_regions(%struct.TYPE_6__* %63)
  ret void
}

declare dso_local i32 @i2o_dma_free(%struct.device*, i32*) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i64) #1

declare dso_local i32 @pci_release_regions(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
