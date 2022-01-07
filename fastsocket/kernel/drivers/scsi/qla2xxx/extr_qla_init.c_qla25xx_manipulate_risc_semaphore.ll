; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla25xx_manipulate_risc_semaphore.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla25xx_manipulate_risc_semaphore.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@TIMEOUT_SEMAPHORE = common dso_local global i64 0, align 8
@RISC_SEMAPHORE_SET = common dso_local global i32 0, align 4
@RISC_SEMAPHORE = common dso_local global i32 0, align 4
@TIMEOUT_TOTAL_ELAPSED = common dso_local global i64 0, align 8
@RISC_SEMAPHORE_FORCE = common dso_local global i32 0, align 4
@RISC_SEMAPHORE_CLR = common dso_local global i32 0, align 4
@TIMEOUT_SEMAPHORE_FORCE = common dso_local global i64 0, align 8
@RISC_SEMAPHORE_FORCE_CLR = common dso_local global i32 0, align 4
@RISC_SEMAPHORE_FORCE_SET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_5__*)* @qla25xx_manipulate_risc_semaphore to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qla25xx_manipulate_risc_semaphore(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %10, align 8
  store %struct.qla_hw_data* %11, %struct.qla_hw_data** %3, align 8
  store i32 0, i32* %4, align 4
  store i64 100, i64* %5, align 8
  store i64 0, i64* %6, align 8
  %12 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %13 = call i32 @IS_QLA25XX(%struct.qla_hw_data* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %20, label %15

15:                                               ; preds = %1
  %16 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %17 = call i32 @IS_QLA2031(%struct.qla_hw_data* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %110

20:                                               ; preds = %15, %1
  br label %21

21:                                               ; preds = %104, %20
  %22 = load i64, i64* @TIMEOUT_SEMAPHORE, align 8
  store i64 %22, i64* %7, align 8
  %23 = load i64, i64* %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = sdiv i64 %23, %24
  store i64 %25, i64* %8, align 8
  br label %26

26:                                               ; preds = %51, %21
  %27 = load i64, i64* %8, align 8
  %28 = add nsw i64 %27, -1
  store i64 %28, i64* %8, align 8
  %29 = icmp ne i64 %27, 0
  br i1 %29, label %30, label %52

30:                                               ; preds = %26
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %32 = load i32, i32* @RISC_SEMAPHORE_SET, align 4
  %33 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_5__* %31, i32 %32)
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %35 = call i32 @qla25xx_read_risc_sema_reg(%struct.TYPE_5__* %34, i32* %4)
  %36 = load i32, i32* %4, align 4
  %37 = load i32, i32* @RISC_SEMAPHORE, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %30
  br label %52

41:                                               ; preds = %30
  %42 = load i64, i64* %5, align 8
  %43 = call i32 @msleep(i64 %42)
  %44 = load i64, i64* %5, align 8
  %45 = load i64, i64* %6, align 8
  %46 = add nsw i64 %45, %44
  store i64 %46, i64* %6, align 8
  %47 = load i64, i64* %6, align 8
  %48 = load i64, i64* @TIMEOUT_TOTAL_ELAPSED, align 8
  %49 = icmp sgt i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %41
  br label %105

51:                                               ; preds = %41
  br label %26

52:                                               ; preds = %40, %26
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @RISC_SEMAPHORE, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %52
  br label %105

58:                                               ; preds = %52
  %59 = load i32, i32* %4, align 4
  %60 = load i32, i32* @RISC_SEMAPHORE_FORCE, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %64, label %63

63:                                               ; preds = %58
  br label %109

64:                                               ; preds = %58
  %65 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %66 = load i32, i32* @RISC_SEMAPHORE_CLR, align 4
  %67 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_5__* %65, i32 %66)
  %68 = load i64, i64* @TIMEOUT_SEMAPHORE_FORCE, align 8
  store i64 %68, i64* %7, align 8
  %69 = load i64, i64* %7, align 8
  %70 = load i64, i64* %5, align 8
  %71 = sdiv i64 %69, %70
  store i64 %71, i64* %8, align 8
  br label %72

72:                                               ; preds = %94, %64
  %73 = load i64, i64* %8, align 8
  %74 = add nsw i64 %73, -1
  store i64 %74, i64* %8, align 8
  %75 = icmp ne i64 %73, 0
  br i1 %75, label %76, label %95

76:                                               ; preds = %72
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %78 = call i32 @qla25xx_read_risc_sema_reg(%struct.TYPE_5__* %77, i32* %4)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @RISC_SEMAPHORE_FORCE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %76
  br label %95

84:                                               ; preds = %76
  %85 = load i64, i64* %5, align 8
  %86 = call i32 @msleep(i64 %85)
  %87 = load i64, i64* %5, align 8
  %88 = load i64, i64* %6, align 8
  %89 = add nsw i64 %88, %87
  store i64 %89, i64* %6, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load i64, i64* @TIMEOUT_TOTAL_ELAPSED, align 8
  %92 = icmp sgt i64 %90, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %84
  br label %105

94:                                               ; preds = %84
  br label %72

95:                                               ; preds = %83, %72
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* @RISC_SEMAPHORE_FORCE, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %104

100:                                              ; preds = %95
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %102 = load i32, i32* @RISC_SEMAPHORE_FORCE_CLR, align 4
  %103 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_5__* %101, i32 %102)
  br label %104

104:                                              ; preds = %100, %95
  br label %21

105:                                              ; preds = %93, %57, %50
  %106 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %107 = load i32, i32* @RISC_SEMAPHORE_FORCE_SET, align 4
  %108 = call i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_5__* %106, i32 %107)
  br label %109

109:                                              ; preds = %105, %63
  br label %110

110:                                              ; preds = %109, %19
  ret void
}

declare dso_local i32 @IS_QLA25XX(%struct.qla_hw_data*) #1

declare dso_local i32 @IS_QLA2031(%struct.qla_hw_data*) #1

declare dso_local i32 @qla25xx_write_risc_sema_reg(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @qla25xx_read_risc_sema_reg(%struct.TYPE_5__*, i32*) #1

declare dso_local i32 @msleep(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
