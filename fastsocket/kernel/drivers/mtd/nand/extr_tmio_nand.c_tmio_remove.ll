; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_tmio_nand.c_tmio_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { i32 }
%struct.tmio_nand = type { i32, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @tmio_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tmio_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.tmio_nand*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %4 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %5 = call %struct.tmio_nand* @platform_get_drvdata(%struct.platform_device* %4)
  store %struct.tmio_nand* %5, %struct.tmio_nand** %3, align 8
  %6 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %7 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %6, i32 0, i32 3
  %8 = call i32 @nand_release(i32* %7)
  %9 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %10 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %9, i32 0, i32 2
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %1
  %14 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %15 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %18 = call i32 @free_irq(i64 %16, %struct.tmio_nand* %17)
  br label %19

19:                                               ; preds = %13, %1
  %20 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %21 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %22 = call i32 @tmio_hw_stop(%struct.platform_device* %20, %struct.tmio_nand* %21)
  %23 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %24 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @iounmap(i32 %25)
  %27 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %28 = getelementptr inbounds %struct.tmio_nand, %struct.tmio_nand* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @iounmap(i32 %29)
  %31 = load %struct.tmio_nand*, %struct.tmio_nand** %3, align 8
  %32 = call i32 @kfree(%struct.tmio_nand* %31)
  ret i32 0
}

declare dso_local %struct.tmio_nand* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @nand_release(i32*) #1

declare dso_local i32 @free_irq(i64, %struct.tmio_nand*) #1

declare dso_local i32 @tmio_hw_stop(%struct.platform_device*, %struct.tmio_nand*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.tmio_nand*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
