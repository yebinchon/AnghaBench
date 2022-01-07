; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_fast_read.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_rom_fast_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qla_hw_data = type { i32 }

@ql_log_fatal = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Failed to acquire SEM2 lock.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qla_hw_data*, i32, i32*)* @qla82xx_rom_fast_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla82xx_rom_fast_read(%struct.qla_hw_data* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.qla_hw_data* %0, %struct.qla_hw_data** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32* @pci_get_drvdata(i32 %13)
  store i32* %14, i32** %10, align 8
  br label %15

15:                                               ; preds = %24, %3
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %17 = call i64 @qla82xx_rom_lock(%struct.qla_hw_data* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %9, align 4
  %21 = icmp slt i32 %20, 50000
  br label %22

22:                                               ; preds = %19, %15
  %23 = phi i1 [ false, %15 ], [ %21, %19 ]
  br i1 %23, label %24, label %29

24:                                               ; preds = %22
  %25 = call i32 @udelay(i32 100)
  %26 = call i32 (...) @schedule()
  %27 = load i32, i32* %9, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %9, align 4
  br label %15

29:                                               ; preds = %22
  %30 = load i32, i32* %9, align 4
  %31 = icmp sge i32 %30, 50000
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i32, i32* @ql_log_fatal, align 4
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @ql_log(i32 %33, i32* %34, i32 185, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %4, align 4
  br label %44

36:                                               ; preds = %29
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %38 = load i32, i32* %6, align 4
  %39 = load i32*, i32** %7, align 8
  %40 = call i32 @qla82xx_do_rom_fast_read(%struct.qla_hw_data* %37, i32 %38, i32* %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %42 = call i32 @qla82xx_rom_unlock(%struct.qla_hw_data* %41)
  %43 = load i32, i32* %8, align 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %36, %32
  %45 = load i32, i32* %4, align 4
  ret i32 %45
}

declare dso_local i32* @pci_get_drvdata(i32) #1

declare dso_local i64 @qla82xx_rom_lock(%struct.qla_hw_data*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @ql_log(i32, i32*, i32, i8*) #1

declare dso_local i32 @qla82xx_do_rom_fast_read(%struct.qla_hw_data*, i32, i32*) #1

declare dso_local i32 @qla82xx_rom_unlock(%struct.qla_hw_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
