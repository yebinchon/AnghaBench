; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_sp.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_iocb.c_qla2x00_start_sp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_22__ = type { i32, %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.TYPE_23__* }
%struct.TYPE_23__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, i32* }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"qla2x00_alloc_iocbs failed.\0A\00", align 1
@QLA_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_start_sp(%struct.TYPE_22__* %0) #0 {
  %2 = alloca %struct.TYPE_22__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.qla_hw_data*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %2, align 8
  %7 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %7, i32 0, i32 1
  %9 = load %struct.TYPE_21__*, %struct.TYPE_21__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_23__*, %struct.TYPE_23__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %11, i32 0, i32 0
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %12, align 8
  store %struct.qla_hw_data* %13, %struct.qla_hw_data** %4, align 8
  %14 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %14, i32* %3, align 4
  %15 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %16 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %20 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %19, i32 0, i32 1
  %21 = load %struct.TYPE_21__*, %struct.TYPE_21__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %21, i32 0, i32 0
  %23 = load %struct.TYPE_23__*, %struct.TYPE_23__** %22, align 8
  %24 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %25 = call i8* @qla2x00_alloc_iocbs(%struct.TYPE_23__* %23, %struct.TYPE_22__* %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %1
  %29 = load i32, i32* @ql_log_warn, align 4
  %30 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_21__*, %struct.TYPE_21__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_23__*, %struct.TYPE_23__** %33, align 8
  %35 = call i32 @ql_log(i32 %29, %struct.TYPE_23__* %34, i32 28684, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %137

36:                                               ; preds = %1
  %37 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %37, i32* %3, align 4
  %38 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %39 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  switch i32 %40, label %123 [
    i32 130, label %41
    i32 129, label %55
    i32 133, label %69
    i32 134, label %69
    i32 135, label %73
    i32 136, label %87
    i32 128, label %101
    i32 131, label %115
    i32 132, label %115
    i32 137, label %119
  ]

41:                                               ; preds = %36
  %42 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %43 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %41
  %46 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %47 = load i8*, i8** %5, align 8
  %48 = call i32 @qla24xx_login_iocb(%struct.TYPE_22__* %46, i8* %47)
  br label %53

49:                                               ; preds = %41
  %50 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call i32 @qla2x00_login_iocb(%struct.TYPE_22__* %50, i8* %51)
  br label %53

53:                                               ; preds = %49, %45
  %54 = phi i32 [ %48, %45 ], [ %52, %49 ]
  br label %124

55:                                               ; preds = %36
  %56 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %57 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %56)
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %55
  %60 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %61 = load i8*, i8** %5, align 8
  %62 = call i32 @qla24xx_logout_iocb(%struct.TYPE_22__* %60, i8* %61)
  br label %67

63:                                               ; preds = %55
  %64 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %65 = load i8*, i8** %5, align 8
  %66 = call i32 @qla2x00_logout_iocb(%struct.TYPE_22__* %64, i8* %65)
  br label %67

67:                                               ; preds = %63, %59
  %68 = phi i32 [ %62, %59 ], [ %66, %63 ]
  br label %124

69:                                               ; preds = %36, %36
  %70 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @qla24xx_els_iocb(%struct.TYPE_22__* %70, i8* %71)
  br label %124

73:                                               ; preds = %36
  %74 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %75 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %81

77:                                               ; preds = %73
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %79 = load i8*, i8** %5, align 8
  %80 = call i32 @qla24xx_ct_iocb(%struct.TYPE_22__* %78, i8* %79)
  br label %85

81:                                               ; preds = %73
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %83 = load i8*, i8** %5, align 8
  %84 = call i32 @qla2x00_ct_iocb(%struct.TYPE_22__* %82, i8* %83)
  br label %85

85:                                               ; preds = %81, %77
  %86 = phi i32 [ %80, %77 ], [ %84, %81 ]
  br label %124

87:                                               ; preds = %36
  %88 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %89 = call i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data* %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %95

91:                                               ; preds = %87
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @qla24xx_adisc_iocb(%struct.TYPE_22__* %92, i8* %93)
  br label %99

95:                                               ; preds = %87
  %96 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @qla2x00_adisc_iocb(%struct.TYPE_22__* %96, i8* %97)
  br label %99

99:                                               ; preds = %95, %91
  %100 = phi i32 [ %94, %91 ], [ %98, %95 ]
  br label %124

101:                                              ; preds = %36
  %102 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %103 = call i32 @IS_QLAFX00(%struct.qla_hw_data* %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %107 = load i8*, i8** %5, align 8
  %108 = call i32 @qlafx00_tm_iocb(%struct.TYPE_22__* %106, i8* %107)
  br label %113

109:                                              ; preds = %101
  %110 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @qla24xx_tm_iocb(%struct.TYPE_22__* %110, i8* %111)
  br label %113

113:                                              ; preds = %109, %105
  %114 = phi i32 [ %108, %105 ], [ %112, %109 ]
  br label %124

115:                                              ; preds = %36, %36
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %117 = load i8*, i8** %5, align 8
  %118 = call i32 @qlafx00_fxdisc_iocb(%struct.TYPE_22__* %116, i8* %117)
  br label %124

119:                                              ; preds = %36
  %120 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %121 = load i8*, i8** %5, align 8
  %122 = call i32 @qlafx00_abort_iocb(%struct.TYPE_22__* %120, i8* %121)
  br label %124

123:                                              ; preds = %36
  br label %124

124:                                              ; preds = %123, %119, %115, %113, %99, %85, %69, %67, %53
  %125 = call i32 (...) @wmb()
  %126 = load %struct.TYPE_22__*, %struct.TYPE_22__** %2, align 8
  %127 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %126, i32 0, i32 1
  %128 = load %struct.TYPE_21__*, %struct.TYPE_21__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %128, i32 0, i32 0
  %130 = load %struct.TYPE_23__*, %struct.TYPE_23__** %129, align 8
  %131 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %132 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %131, i32 0, i32 1
  %133 = load i32*, i32** %132, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = call i32 @qla2x00_start_iocbs(%struct.TYPE_23__* %130, i32 %135)
  br label %137

137:                                              ; preds = %124, %28
  %138 = load %struct.qla_hw_data*, %struct.qla_hw_data** %4, align 8
  %139 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %138, i32 0, i32 0
  %140 = load i64, i64* %6, align 8
  %141 = call i32 @spin_unlock_irqrestore(i32* %139, i64 %140)
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i8* @qla2x00_alloc_iocbs(%struct.TYPE_23__*, %struct.TYPE_22__*) #1

declare dso_local i32 @ql_log(i32, %struct.TYPE_23__*, i32, i8*) #1

declare dso_local i32 @IS_FWI2_CAPABLE(%struct.qla_hw_data*) #1

declare dso_local i32 @qla24xx_login_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla2x00_login_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla24xx_logout_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla2x00_logout_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla24xx_els_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla24xx_ct_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla2x00_ct_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla24xx_adisc_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla2x00_adisc_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qlafx00_tm_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qla24xx_tm_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qlafx00_fxdisc_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @qlafx00_abort_iocb(%struct.TYPE_22__*, i8*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @qla2x00_start_iocbs(%struct.TYPE_23__*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
