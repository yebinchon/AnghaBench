; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mvme147.c_mvme147_detect.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_mvme147.c_mvme147_detect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.scsi_host_template = type { i8*, i32* }
%struct.TYPE_10__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i32, i32, i64 }

@mvme147_detect.called = internal global i8 0, align 1
@MACH_IS_MVME147 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"MVME147\00", align 1
@wd33c93_proc_info = common dso_local global i32 0, align 4
@mvme147_host = common dso_local global %struct.TYPE_11__* null, align 8
@MVME147_IRQ_SCSI_PORT = common dso_local global i32 0, align 4
@CTRL_DMA = common dso_local global i32 0, align 4
@dma_setup = common dso_local global i32 0, align 4
@dma_stop = common dso_local global i32 0, align 4
@WD33C93_FS_8_10 = common dso_local global i32 0, align 4
@mvme147_intr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"MVME147 SCSI PORT\00", align 1
@MVME147_IRQ_SCSI_DMA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [17 x i8] c"MVME147 SCSI DMA\00", align 1
@m147_pcc = common dso_local global %struct.TYPE_12__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mvme147_detect(%struct.scsi_host_template* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.scsi_host_template*, align 8
  %4 = alloca %struct.TYPE_10__, align 8
  store %struct.scsi_host_template* %0, %struct.scsi_host_template** %3, align 8
  %5 = load i32, i32* @MACH_IS_MVME147, align 4
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8, i8* @mvme147_detect.called, align 1
  %9 = zext i8 %8 to i32
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %81

12:                                               ; preds = %7
  %13 = load i8, i8* @mvme147_detect.called, align 1
  %14 = add i8 %13, 1
  store i8 %14, i8* @mvme147_detect.called, align 1
  %15 = load %struct.scsi_host_template*, %struct.scsi_host_template** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %15, i32 0, i32 0
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8** %16, align 8
  %17 = load %struct.scsi_host_template*, %struct.scsi_host_template** %3, align 8
  %18 = getelementptr inbounds %struct.scsi_host_template, %struct.scsi_host_template* %17, i32 0, i32 1
  store i32* @wd33c93_proc_info, i32** %18, align 8
  %19 = load %struct.scsi_host_template*, %struct.scsi_host_template** %3, align 8
  %20 = call %struct.TYPE_11__* @scsi_register(%struct.scsi_host_template* %19, i32 4)
  store %struct.TYPE_11__* %20, %struct.TYPE_11__** @mvme147_host, align 8
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %12
  br label %80

24:                                               ; preds = %12
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %26 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %25, i32 0, i32 0
  store i32 -114688, i32* %26, align 4
  %27 = load i32, i32* @MVME147_IRQ_SCSI_PORT, align 4
  %28 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 4
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 0
  store i8* inttoptr (i64 4294852608 to i8*), i8** %30, align 8
  %31 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %4, i32 0, i32 1
  store i8* inttoptr (i64 4294852609 to i8*), i8** %31, align 8
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %33 = call %struct.TYPE_13__* @HDATA(%struct.TYPE_11__* %32)
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  store i32 255, i32* %34, align 8
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %36 = call %struct.TYPE_13__* @HDATA(%struct.TYPE_11__* %35)
  %37 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %36, i32 0, i32 2
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* @CTRL_DMA, align 4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %40 = call %struct.TYPE_13__* @HDATA(%struct.TYPE_11__* %39)
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %43 = load i32, i32* @dma_setup, align 4
  %44 = load i32, i32* @dma_stop, align 4
  %45 = load i32, i32* @WD33C93_FS_8_10, align 4
  %46 = bitcast %struct.TYPE_10__* %4 to { i8*, i8* }*
  %47 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds { i8*, i8* }, { i8*, i8* }* %46, i32 0, i32 1
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @wd33c93_init(%struct.TYPE_11__* %42, i8* %48, i8* %50, i32 %43, i32 %44, i32 %45)
  %52 = load i32, i32* @MVME147_IRQ_SCSI_PORT, align 4
  %53 = load i32, i32* @mvme147_intr, align 4
  %54 = load i32, i32* @mvme147_intr, align 4
  %55 = call i64 @request_irq(i32 %52, i32 %53, i32 0, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %24
  br label %76

58:                                               ; preds = %24
  %59 = load i32, i32* @MVME147_IRQ_SCSI_DMA, align 4
  %60 = load i32, i32* @mvme147_intr, align 4
  %61 = load i32, i32* @mvme147_intr, align 4
  %62 = call i64 @request_irq(i32 %59, i32 %60, i32 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.2, i64 0, i64 0), i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %58
  br label %72

65:                                               ; preds = %58
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** @m147_pcc, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 9, i32* %67, align 4
  %68 = load %struct.TYPE_12__*, %struct.TYPE_12__** @m147_pcc, align 8
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 1
  store i32 0, i32* %69, align 4
  %70 = load %struct.TYPE_12__*, %struct.TYPE_12__** @m147_pcc, align 8
  %71 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %70, i32 0, i32 2
  store i32 137, i32* %71, align 4
  store i32 1, i32* %2, align 4
  br label %81

72:                                               ; preds = %64
  %73 = load i32, i32* @MVME147_IRQ_SCSI_PORT, align 4
  %74 = load i32, i32* @mvme147_intr, align 4
  %75 = call i32 @free_irq(i32 %73, i32 %74)
  br label %76

76:                                               ; preds = %72, %57
  %77 = call i32 (...) @wd33c93_release()
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** @mvme147_host, align 8
  %79 = call i32 @scsi_unregister(%struct.TYPE_11__* %78)
  br label %80

80:                                               ; preds = %76, %23
  store i32 0, i32* %2, align 4
  br label %81

81:                                               ; preds = %80, %65, %11
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.TYPE_11__* @scsi_register(%struct.scsi_host_template*, i32) #1

declare dso_local %struct.TYPE_13__* @HDATA(%struct.TYPE_11__*) #1

declare dso_local i32 @wd33c93_init(%struct.TYPE_11__*, i8*, i8*, i32, i32, i32) #1

declare dso_local i64 @request_irq(i32, i32, i32, i8*, i32) #1

declare dso_local i32 @free_irq(i32, i32) #1

declare dso_local i32 @wd33c93_release(...) #1

declare dso_local i32 @scsi_unregister(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
