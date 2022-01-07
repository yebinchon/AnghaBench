; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_reset_ownership.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_init.c_qla83xx_reset_ownership.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@QLA83XX_IDC_DRV_PRESENCE = common dso_local global i32 0, align 4
@QLA83XX_DEV_PARTINFO1 = common dso_local global i32 0, align 4
@QLA83XX_DEV_PARTINFO2 = common dso_local global i32 0, align 4
@QLA83XX_CLASS_TYPE_FCOE = common dso_local global i32 0, align 4
@ql_dbg_p3p = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"This host is Reset owner.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @qla83xx_reset_ownership(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca %struct.qla_hw_data*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  %14 = load %struct.qla_hw_data*, %struct.qla_hw_data** %13, align 8
  store %struct.qla_hw_data* %14, %struct.qla_hw_data** %3, align 8
  store i32 3, i32* %9, align 4
  store i32 65535, i32* %10, align 4
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %16 = load i32, i32* @QLA83XX_IDC_DRV_PRESENCE, align 4
  %17 = call i32 @qla83xx_rd_reg(%struct.TYPE_7__* %15, i32 %16, i32* %4)
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %19 = load i32, i32* @QLA83XX_DEV_PARTINFO1, align 4
  %20 = call i32 @qla83xx_rd_reg(%struct.TYPE_7__* %18, i32 %19, i32* %6)
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %22 = load i32, i32* @QLA83XX_DEV_PARTINFO2, align 4
  %23 = call i32 @qla83xx_rd_reg(%struct.TYPE_7__* %21, i32 %22, i32* %7)
  store i32 0, i32* %11, align 4
  br label %24

24:                                               ; preds = %46, %1
  %25 = load i32, i32* %11, align 4
  %26 = icmp slt i32 %25, 8
  br i1 %26, label %27, label %49

27:                                               ; preds = %24
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %11, align 4
  %30 = mul nsw i32 %29, 4
  %31 = ashr i32 %28, %30
  %32 = load i32, i32* %9, align 4
  %33 = and i32 %31, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @QLA83XX_CLASS_TYPE_FCOE, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %45

37:                                               ; preds = %27
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %40 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ne i32 %38, %41
  br i1 %42, label %43, label %45

43:                                               ; preds = %37
  %44 = load i32, i32* %11, align 4
  store i32 %44, i32* %10, align 4
  br label %49

45:                                               ; preds = %37, %27
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %24

49:                                               ; preds = %43, %24
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 65535
  br i1 %51, label %52, label %81

52:                                               ; preds = %49
  store i32 0, i32* %11, align 4
  br label %53

53:                                               ; preds = %77, %52
  %54 = load i32, i32* %11, align 4
  %55 = icmp slt i32 %54, 8
  br i1 %55, label %56, label %80

56:                                               ; preds = %53
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %11, align 4
  %59 = mul nsw i32 %58, 4
  %60 = ashr i32 %57, %59
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %60, %61
  store i32 %62, i32* %8, align 4
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @QLA83XX_CLASS_TYPE_FCOE, align 4
  %65 = icmp eq i32 %63, %64
  br i1 %65, label %66, label %76

66:                                               ; preds = %56
  %67 = load i32, i32* %11, align 4
  %68 = add nsw i32 %67, 8
  %69 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %70 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %68, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %66
  %74 = load i32, i32* %11, align 4
  %75 = add nsw i32 %74, 8
  store i32 %75, i32* %10, align 4
  br label %80

76:                                               ; preds = %66, %56
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %11, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %11, align 4
  br label %53

80:                                               ; preds = %73, %53
  br label %81

81:                                               ; preds = %80, %49
  %82 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %83 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 1, %84
  %86 = load i32, i32* %10, align 4
  %87 = icmp eq i32 %86, 65535
  br i1 %87, label %88, label %89

88:                                               ; preds = %81
  br label %92

89:                                               ; preds = %81
  %90 = load i32, i32* %10, align 4
  %91 = shl i32 1, %90
  br label %92

92:                                               ; preds = %89, %88
  %93 = phi i32 [ 0, %88 ], [ %91, %89 ]
  %94 = or i32 %85, %93
  %95 = xor i32 %94, -1
  store i32 %95, i32* %5, align 4
  %96 = load i32, i32* %4, align 4
  %97 = load i32, i32* %5, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %113, label %100

100:                                              ; preds = %92
  %101 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %102 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %10, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %113

106:                                              ; preds = %100
  %107 = load i32, i32* @ql_dbg_p3p, align 4
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %109 = call i32 @ql_dbg(i32 %107, %struct.TYPE_7__* %108, i32 45183, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %110 = load %struct.qla_hw_data*, %struct.qla_hw_data** %3, align 8
  %111 = getelementptr inbounds %struct.qla_hw_data, %struct.qla_hw_data* %110, i32 0, i32 1
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  store i32 1, i32* %112, align 4
  br label %113

113:                                              ; preds = %106, %100, %92
  ret void
}

declare dso_local i32 @qla83xx_rd_reg(%struct.TYPE_7__*, i32, i32*) #1

declare dso_local i32 @ql_dbg(i32, %struct.TYPE_7__*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
