; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_fcp_prio_cfg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_sup.c_qla24xx_read_fcp_prio_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_16__*, %struct.TYPE_14__, %struct.TYPE_13__* }
%struct.TYPE_16__ = type { i32, i32* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32 (%struct.TYPE_15__*, i32*, i32, i32)* }

@FCP_PRIO_CFG_SIZE = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [54 x i8] c"Unable to allocate memory for fcp priorty data (%x).\0A\00", align 1
@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@FCP_PRIO_CFG_HDR_SIZE = common dso_local global i32 0, align 4
@FCP_PRIO_CFG_ENTRY_SIZE = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla24xx_read_fcp_prio_cfg(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %8 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %8, i32 0, i32 0
  %10 = load %struct.qla_hw_data*, %struct.qla_hw_data** %9, align 8
  store %struct.qla_hw_data* %10, %struct.qla_hw_data** %7, align 8
  %11 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %12 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %11, i32 0, i32 1
  %13 = load %struct.TYPE_16__*, %struct.TYPE_16__** %12, align 8
  %14 = icmp ne %struct.TYPE_16__* %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %17 = call %struct.TYPE_16__* @vmalloc(i32 %16)
  %18 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %19 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %18, i32 0, i32 1
  store %struct.TYPE_16__* %17, %struct.TYPE_16__** %19, align 8
  %20 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %21 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %20, i32 0, i32 1
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %21, align 8
  %23 = icmp ne %struct.TYPE_16__* %22, null
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = load i32, i32* @ql_log_warn, align 4
  %26 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %27 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %28 = call i32 @ql_log(i32 %25, %struct.TYPE_15__* %26, i32 213, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %29, i32* %2, align 4
  br label %120

30:                                               ; preds = %15
  br label %31

31:                                               ; preds = %30, %1
  %32 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %33 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %32, i32 0, i32 1
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %33, align 8
  %35 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %36 = call i32 @memset(%struct.TYPE_16__* %34, i32 0, i32 %35)
  %37 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %38 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %6, align 4
  %40 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %41 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %40, i32 0, i32 3
  %42 = load %struct.TYPE_13__*, %struct.TYPE_13__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %42, i32 0, i32 0
  %44 = load i32 (%struct.TYPE_15__*, i32*, i32, i32)*, i32 (%struct.TYPE_15__*, i32*, i32, i32)** %43, align 8
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %46 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %47 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %46, i32 0, i32 1
  %48 = load %struct.TYPE_16__*, %struct.TYPE_16__** %47, align 8
  %49 = bitcast %struct.TYPE_16__* %48 to i32*
  %50 = load i32, i32* %6, align 4
  %51 = shl i32 %50, 2
  %52 = load i32, i32* @FCP_PRIO_CFG_HDR_SIZE, align 4
  %53 = call i32 %44(%struct.TYPE_15__* %45, i32* %49, i32 %51, i32 %52)
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %55 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %56 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %55, i32 0, i32 1
  %57 = load %struct.TYPE_16__*, %struct.TYPE_16__** %56, align 8
  %58 = call i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_15__* %54, %struct.TYPE_16__* %57, i32 0)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %61, label %60

60:                                               ; preds = %31
  br label %112

61:                                               ; preds = %31
  %62 = load i32, i32* @FCP_PRIO_CFG_HDR_SIZE, align 4
  %63 = ashr i32 %62, 2
  %64 = load i32, i32* %6, align 4
  %65 = add nsw i32 %64, %63
  store i32 %65, i32* %6, align 4
  %66 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %67 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %66, i32 0, i32 1
  %68 = load %struct.TYPE_16__*, %struct.TYPE_16__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @FCP_PRIO_CFG_ENTRY_SIZE, align 4
  %72 = mul nsw i32 %70, %71
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* @FCP_PRIO_CFG_SIZE, align 4
  %74 = load i32, i32* @FCP_PRIO_CFG_HDR_SIZE, align 4
  %75 = sub nsw i32 %73, %74
  store i32 %75, i32* %5, align 4
  %76 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %77 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %76, i32 0, i32 3
  %78 = load %struct.TYPE_13__*, %struct.TYPE_13__** %77, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %78, i32 0, i32 0
  %80 = load i32 (%struct.TYPE_15__*, i32*, i32, i32)*, i32 (%struct.TYPE_15__*, i32*, i32, i32)** %79, align 8
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 1
  %84 = load %struct.TYPE_16__*, %struct.TYPE_16__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %6, align 4
  %89 = shl i32 %88, 2
  %90 = load i32, i32* %4, align 4
  %91 = load i32, i32* %5, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %95

93:                                               ; preds = %61
  %94 = load i32, i32* %4, align 4
  br label %97

95:                                               ; preds = %61
  %96 = load i32, i32* %5, align 4
  br label %97

97:                                               ; preds = %95, %93
  %98 = phi i32 [ %94, %93 ], [ %96, %95 ]
  %99 = call i32 %80(%struct.TYPE_15__* %81, i32* %87, i32 %89, i32 %98)
  %100 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 1
  %103 = load %struct.TYPE_16__*, %struct.TYPE_16__** %102, align 8
  %104 = call i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_15__* %100, %struct.TYPE_16__* %103, i32 1)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %97
  br label %112

107:                                              ; preds = %97
  %108 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %109 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %109, i32 0, i32 0
  store i32 1, i32* %110, align 8
  %111 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %111, i32* %2, align 4
  br label %120

112:                                              ; preds = %106, %60
  %113 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %114 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %113, i32 0, i32 1
  %115 = load %struct.TYPE_16__*, %struct.TYPE_16__** %114, align 8
  %116 = call i32 @vfree(%struct.TYPE_16__* %115)
  %117 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  %118 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %117, i32 0, i32 1
  store %struct.TYPE_16__* null, %struct.TYPE_16__** %118, align 8
  %119 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %119, i32* %2, align 4
  br label %120

120:                                              ; preds = %112, %107, %24
  %121 = load i32, i32* %2, align 4
  ret i32 %121
}

declare dso_local %struct.TYPE_16__* @vmalloc(i32) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_15__*, i32, i8*, i32) #1

declare dso_local i32 @memset(%struct.TYPE_16__*, i32, i32) #1

declare dso_local i32 @qla24xx_fcp_prio_cfg_valid(%struct.TYPE_15__*, %struct.TYPE_16__*, i32) #1

declare dso_local i32 @vfree(%struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
