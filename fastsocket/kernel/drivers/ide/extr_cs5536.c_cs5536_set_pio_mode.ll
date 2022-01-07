; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cs5536.c_cs5536_set_pio_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_cs5536.c_cs5536_set_pio_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32 }
%struct.pci_dev = type { i32 }

@cs5536_set_pio_mode.drv_timings = internal constant [5 x i32] [i32 152, i32 85, i32 50, i32 33, i32 32], align 16
@cs5536_set_pio_mode.addr_timings = internal constant [5 x i32] [i32 2, i32 1, i32 0, i32 0, i32 0], align 16
@cs5536_set_pio_mode.cmd_timings = internal constant [5 x i32] [i32 153, i32 146, i32 144, i32 34, i32 32], align 16
@IDE_CAST_D1_SHIFT = common dso_local global i32 0, align 4
@IDE_CAST_D0_SHIFT = common dso_local global i32 0, align 4
@IDE_DRV_MASK = common dso_local global i32 0, align 4
@CAST = common dso_local global i32 0, align 4
@IDE_CAST_DRV_MASK = common dso_local global i32 0, align 4
@IDE_CAST_CMD_MASK = common dso_local global i32 0, align 4
@IDE_CAST_CMD_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*, i32)* @cs5536_set_pio_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cs5536_set_pio_mode(%struct.TYPE_11__* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_dev*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %3, align 8
  store i32 %1, i32* %4, align 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 1
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call %struct.pci_dev* @to_pci_dev(i32 %15)
  store %struct.pci_dev* %16, %struct.pci_dev** %5, align 8
  %17 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %18 = call %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__* %17)
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 1
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %26

24:                                               ; preds = %2
  %25 = load i32, i32* @IDE_CAST_D1_SHIFT, align 4
  br label %28

26:                                               ; preds = %2
  %27 = load i32, i32* @IDE_CAST_D0_SHIFT, align 4
  br label %28

28:                                               ; preds = %26, %24
  %29 = phi i32 [ %25, %24 ], [ %27, %26 ]
  store i32 %29, i32* %7, align 4
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %31 = call i64 @ide_get_drivedata(%struct.TYPE_11__* %30)
  store i64 %31, i64* %8, align 8
  %32 = load i32, i32* %4, align 4
  store i32 %32, i32* %10, align 4
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %34 = icmp ne %struct.TYPE_11__* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %38 = call i32 @ide_get_best_pio_mode(%struct.TYPE_11__* %37, i32 255, i32 4)
  %39 = call i32 @min(i32 %36, i32 %38)
  store i32 %39, i32* %10, align 4
  br label %40

40:                                               ; preds = %35, %28
  %41 = load i32, i32* @IDE_DRV_MASK, align 4
  %42 = shl i32 %41, 8
  %43 = sext i32 %42 to i64
  %44 = load i64, i64* %8, align 8
  %45 = and i64 %44, %43
  store i64 %45, i64* %8, align 8
  %46 = load i32, i32* %4, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_pio_mode.drv_timings, i64 0, i64 %47
  %49 = load i32, i32* %48, align 4
  %50 = sext i32 %49 to i64
  %51 = load i64, i64* %8, align 8
  %52 = or i64 %51, %50
  store i64 %52, i64* %8, align 8
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %54 = load i64, i64* %8, align 8
  %55 = inttoptr i64 %54 to i8*
  %56 = call i32 @ide_set_drivedata(%struct.TYPE_11__* %53, i8* %55)
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %58 = load i32, i32* %4, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_pio_mode.drv_timings, i64 0, i64 %59
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @cs5536_program_dtc(%struct.TYPE_11__* %57, i32 %61)
  %63 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %64 = load i32, i32* @CAST, align 4
  %65 = call i32 @cs5536_read(%struct.pci_dev* %63, i32 %64, i32* %9)
  %66 = load i32, i32* @IDE_CAST_DRV_MASK, align 4
  %67 = load i32, i32* %7, align 4
  %68 = shl i32 %66, %67
  %69 = xor i32 %68, -1
  %70 = load i32, i32* %9, align 4
  %71 = and i32 %70, %69
  store i32 %71, i32* %9, align 4
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_pio_mode.addr_timings, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %7, align 4
  %77 = shl i32 %75, %76
  %78 = load i32, i32* %9, align 4
  %79 = or i32 %78, %77
  store i32 %79, i32* %9, align 4
  %80 = load i32, i32* @IDE_CAST_CMD_MASK, align 4
  %81 = load i32, i32* @IDE_CAST_CMD_SHIFT, align 4
  %82 = shl i32 %80, %81
  %83 = xor i32 %82, -1
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, %83
  store i32 %85, i32* %9, align 4
  %86 = load i32, i32* %10, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds [5 x i32], [5 x i32]* @cs5536_set_pio_mode.cmd_timings, i64 0, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @IDE_CAST_CMD_SHIFT, align 4
  %91 = shl i32 %89, %90
  %92 = load i32, i32* %9, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %9, align 4
  %94 = load %struct.pci_dev*, %struct.pci_dev** %5, align 8
  %95 = load i32, i32* @CAST, align 4
  %96 = load i32, i32* %9, align 4
  %97 = call i32 @cs5536_write(%struct.pci_dev* %94, i32 %95, i32 %96)
  ret void
}

declare dso_local %struct.pci_dev* @to_pci_dev(i32) #1

declare dso_local %struct.TYPE_11__* @ide_get_pair_dev(%struct.TYPE_11__*) #1

declare dso_local i64 @ide_get_drivedata(%struct.TYPE_11__*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ide_get_best_pio_mode(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @ide_set_drivedata(%struct.TYPE_11__*, i8*) #1

declare dso_local i32 @cs5536_program_dtc(%struct.TYPE_11__*, i32) #1

declare dso_local i32 @cs5536_read(%struct.pci_dev*, i32, i32*) #1

declare dso_local i32 @cs5536_write(%struct.pci_dev*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
