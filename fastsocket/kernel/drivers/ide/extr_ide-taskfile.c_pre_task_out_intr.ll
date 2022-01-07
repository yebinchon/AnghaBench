; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-taskfile.c_pre_task_out_intr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/ide/extr_ide-taskfile.c_pre_task_out_intr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.ide_cmd = type { i32 }

@ATA_DRQ = common dso_local global i32 0, align 4
@WAIT_DRQ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"%s: no DRQ after issuing %sWRITE%s\0A\00", align 1
@IDE_TFLAG_MULTI_PIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"MULT\00", align 1
@.str.2 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@IDE_DFLAG_LBA48 = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [5 x i8] c"_EXT\00", align 1
@IDE_DFLAG_UNMASK = common dso_local global i32 0, align 4
@task_pio_intr = common dso_local global i32 0, align 4
@WAIT_WORSTCASE = common dso_local global i32 0, align 4
@ide_started = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.ide_cmd*)* @pre_task_out_intr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pre_task_out_intr(%struct.TYPE_6__* %0, %struct.ide_cmd* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.ide_cmd*, align 8
  %6 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.ide_cmd* %1, %struct.ide_cmd** %5, align 8
  %7 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %8 = load i32, i32* @ATA_DRQ, align 4
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @WAIT_DRQ, align 4
  %13 = call i64 @ide_wait_stat(i32* %6, %struct.TYPE_6__* %7, i32 %8, i32 %11, i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %37

15:                                               ; preds = %2
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %20 = getelementptr inbounds %struct.ide_cmd, %struct.ide_cmd* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @IDE_TFLAG_MULTI_PIO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @IDE_DFLAG_LBA48, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  %33 = zext i1 %32 to i64
  %34 = select i1 %32, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.2, i64 0, i64 0)
  %35 = call i32 @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %18, i8* %26, i8* %34)
  %36 = load i32, i32* %6, align 4
  store i32 %36, i32* %3, align 4
  br label %54

37:                                               ; preds = %2
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IDE_DFLAG_UNMASK, align 4
  %42 = and i32 %40, %41
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %37
  %45 = call i32 (...) @local_irq_disable()
  br label %46

46:                                               ; preds = %44, %37
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %48 = load i32, i32* @WAIT_WORSTCASE, align 4
  %49 = call i32 @ide_set_handler(%struct.TYPE_6__* %47, i32* @task_pio_intr, i32 %48)
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %51 = load %struct.ide_cmd*, %struct.ide_cmd** %5, align 8
  %52 = call i32 @ide_pio_datablock(%struct.TYPE_6__* %50, %struct.ide_cmd* %51, i32 1)
  %53 = load i32, i32* @ide_started, align 4
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %46, %15
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @ide_wait_stat(i32*, %struct.TYPE_6__*, i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*, i32, i8*, i8*) #1

declare dso_local i32 @local_irq_disable(...) #1

declare dso_local i32 @ide_set_handler(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @ide_pio_datablock(%struct.TYPE_6__*, %struct.ide_cmd*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
