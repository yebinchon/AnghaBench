; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nomadik_nand.c_nomadik_nand_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_nomadik_nand.c_nomadik_nand_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.nomadik_nand_platform_data* }
%struct.nomadik_nand_platform_data = type { i32 (...)* }
%struct.nomadik_nand_host = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @nomadik_nand_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nomadik_nand_remove(%struct.platform_device* %0) #0 {
  %2 = alloca %struct.platform_device*, align 8
  %3 = alloca %struct.nomadik_nand_host*, align 8
  %4 = alloca %struct.nomadik_nand_platform_data*, align 8
  store %struct.platform_device* %0, %struct.platform_device** %2, align 8
  %5 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %6 = call %struct.nomadik_nand_host* @platform_get_drvdata(%struct.platform_device* %5)
  store %struct.nomadik_nand_host* %6, %struct.nomadik_nand_host** %3, align 8
  %7 = load %struct.platform_device*, %struct.platform_device** %2, align 8
  %8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load %struct.nomadik_nand_platform_data*, %struct.nomadik_nand_platform_data** %9, align 8
  store %struct.nomadik_nand_platform_data* %10, %struct.nomadik_nand_platform_data** %4, align 8
  %11 = load %struct.nomadik_nand_platform_data*, %struct.nomadik_nand_platform_data** %4, align 8
  %12 = getelementptr inbounds %struct.nomadik_nand_platform_data, %struct.nomadik_nand_platform_data* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = icmp ne i32 (...)* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %1
  %16 = load %struct.nomadik_nand_platform_data*, %struct.nomadik_nand_platform_data** %4, align 8
  %17 = getelementptr inbounds %struct.nomadik_nand_platform_data, %struct.nomadik_nand_platform_data* %16, i32 0, i32 0
  %18 = load i32 (...)*, i32 (...)** %17, align 8
  %19 = call i32 (...) %18()
  br label %20

20:                                               ; preds = %15, %1
  %21 = load %struct.nomadik_nand_host*, %struct.nomadik_nand_host** %3, align 8
  %22 = icmp ne %struct.nomadik_nand_host* %21, null
  br i1 %22, label %23, label %38

23:                                               ; preds = %20
  %24 = load %struct.nomadik_nand_host*, %struct.nomadik_nand_host** %3, align 8
  %25 = getelementptr inbounds %struct.nomadik_nand_host, %struct.nomadik_nand_host* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @iounmap(i32 %26)
  %28 = load %struct.nomadik_nand_host*, %struct.nomadik_nand_host** %3, align 8
  %29 = getelementptr inbounds %struct.nomadik_nand_host, %struct.nomadik_nand_host* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @iounmap(i32 %30)
  %32 = load %struct.nomadik_nand_host*, %struct.nomadik_nand_host** %3, align 8
  %33 = getelementptr inbounds %struct.nomadik_nand_host, %struct.nomadik_nand_host* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @iounmap(i32 %34)
  %36 = load %struct.nomadik_nand_host*, %struct.nomadik_nand_host** %3, align 8
  %37 = call i32 @kfree(%struct.nomadik_nand_host* %36)
  br label %38

38:                                               ; preds = %23, %20
  ret i32 0
}

declare dso_local %struct.nomadik_nand_host* @platform_get_drvdata(%struct.platform_device*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @kfree(%struct.nomadik_nand_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
