; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_chip_remove.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/nand/extr_fsl_elbc_nand.c_fsl_elbc_chip_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fsl_elbc_mtd = type { i64, i64, %struct.TYPE_2__, %struct.fsl_elbc_ctrl* }
%struct.TYPE_2__ = type { %struct.fsl_elbc_mtd* }
%struct.fsl_elbc_ctrl = type { i32** }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fsl_elbc_mtd*)* @fsl_elbc_chip_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fsl_elbc_chip_remove(%struct.fsl_elbc_mtd* %0) #0 {
  %2 = alloca %struct.fsl_elbc_mtd*, align 8
  %3 = alloca %struct.fsl_elbc_ctrl*, align 8
  store %struct.fsl_elbc_mtd* %0, %struct.fsl_elbc_mtd** %2, align 8
  %4 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %5 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %4, i32 0, i32 3
  %6 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %5, align 8
  store %struct.fsl_elbc_ctrl* %6, %struct.fsl_elbc_ctrl** %3, align 8
  %7 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %8 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %7, i32 0, i32 2
  %9 = call i32 @nand_release(%struct.TYPE_2__* %8)
  %10 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %11 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %10, i32 0, i32 2
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %12, align 8
  %14 = call i32 @kfree(%struct.fsl_elbc_mtd* %13)
  %15 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %16 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %1
  %20 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %21 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = call i32 @iounmap(i64 %22)
  br label %24

24:                                               ; preds = %19, %1
  %25 = load %struct.fsl_elbc_ctrl*, %struct.fsl_elbc_ctrl** %3, align 8
  %26 = getelementptr inbounds %struct.fsl_elbc_ctrl, %struct.fsl_elbc_ctrl* %25, i32 0, i32 0
  %27 = load i32**, i32*** %26, align 8
  %28 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %29 = getelementptr inbounds %struct.fsl_elbc_mtd, %struct.fsl_elbc_mtd* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds i32*, i32** %27, i64 %30
  store i32* null, i32** %31, align 8
  %32 = load %struct.fsl_elbc_mtd*, %struct.fsl_elbc_mtd** %2, align 8
  %33 = call i32 @kfree(%struct.fsl_elbc_mtd* %32)
  ret i32 0
}

declare dso_local i32 @nand_release(%struct.TYPE_2__*) #1

declare dso_local i32 @kfree(%struct.fsl_elbc_mtd*) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
