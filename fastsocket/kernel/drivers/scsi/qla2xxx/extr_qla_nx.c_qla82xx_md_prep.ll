; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_prep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_nx.c_qla82xx_md_prep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32, i32*, i32, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 }

@QLA_SUCCESS = common dso_local global i32 0, align 4
@ql_log_info = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"MiniDump Template size obtained (%d KB)\0A\00", align 1
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"MiniDump Template obtained\0A\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"MiniDump memory allocated (%d KB)\0A\00", align 1
@.str.3 = private unnamed_addr constant [43 x i8] c"Free MiniDump template: %p, size: (%d KB)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla82xx_md_prep(%struct.TYPE_10__* %0) #0 {
  %2 = alloca %struct.TYPE_10__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %2, align 8
  %5 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %6 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %7 = load %struct.qla_hw_data*, %struct.qla_hw_data** %6, align 8
  store %struct.qla_hw_data* %7, %struct.qla_hw_data** %3, align 8
  %8 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %9 = call i32 @qla82xx_md_get_template_size(%struct.TYPE_10__* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* @QLA_SUCCESS, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %73

13:                                               ; preds = %1
  %14 = load i32, i32* @ql_log_info, align 4
  %15 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = sdiv i32 %18, 1024
  %20 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, ...) @ql_log(i32 %14, %struct.TYPE_10__* %15, i32 45130, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %19)
  %21 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %22 = call i32 @qla82xx_md_get_template(%struct.TYPE_10__* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = load i32, i32* @QLA_SUCCESS, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %72

26:                                               ; preds = %13
  %27 = load i32, i32* @ql_dbg_p3p, align 4
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %29 = call i32 @ql_dbg(i32 %27, %struct.TYPE_10__* %28, i32 45131, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %31 = call i32 @qla82xx_md_alloc(%struct.TYPE_10__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @QLA_SUCCESS, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %26
  %36 = load i32, i32* @ql_log_info, align 4
  %37 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %38 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %39 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = sdiv i32 %40, 1024
  %42 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, ...) @ql_log(i32 %36, %struct.TYPE_10__* %37, i32 45132, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  br label %71

43:                                               ; preds = %26
  %44 = load i32, i32* @ql_log_info, align 4
  %45 = load %struct.TYPE_10__*, %struct.TYPE_10__** %2, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 2
  %48 = load i32*, i32** %47, align 8
  %49 = ptrtoint i32* %48 to i32
  %50 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %51 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = sdiv i32 %52, 1024
  %54 = call i32 (i32, %struct.TYPE_10__*, i32, i8*, i32, ...) @ql_log(i32 %44, %struct.TYPE_10__* %45, i32 45133, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i32 %49, i32 %53)
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 4
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 0
  %59 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %60 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %63 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %62, i32 0, i32 2
  %64 = load i32*, i32** %63, align 8
  %65 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %66 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @dma_free_coherent(i32* %58, i32 %61, i32* %64, i32 %67)
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 2
  store i32* null, i32** %70, align 8
  br label %71

71:                                               ; preds = %43, %35
  br label %72

72:                                               ; preds = %71, %13
  br label %73

73:                                               ; preds = %72, %1
  ret void
}

declare dso_local i32 @qla82xx_md_get_template_size(%struct.TYPE_10__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_10__*, i32, i8*, i32, ...) #1

declare dso_local i32 @qla82xx_md_get_template(%struct.TYPE_10__*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_10__*, i32, i8*) #1

declare dso_local i32 @qla82xx_md_alloc(%struct.TYPE_10__*) #1

declare dso_local i32 @dma_free_coherent(i32*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
