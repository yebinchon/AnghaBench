; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/qla2xxx/extr_qla_gs.c_qla2x00_fdmi_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.qla_hw_data* }
%struct.qla_hw_data = type { i32 }

@QLA_FUNCTION_FAILED = common dso_local global i32 0, align 4
@QLA_ALREADY_REGISTERED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @qla2x00_fdmi_register(%struct.TYPE_7__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.qla_hw_data*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  %6 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %7 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %6, i32 0, i32 0
  %8 = load %struct.qla_hw_data*, %struct.qla_hw_data** %7, align 8
  store %struct.qla_hw_data* %8, %struct.qla_hw_data** %5, align 8
  %9 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %10 = call i64 @IS_QLA2100(%struct.qla_hw_data* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %20, label %12

12:                                               ; preds = %1
  %13 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %14 = call i64 @IS_QLA2200(%struct.qla_hw_data* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load %struct.qla_hw_data*, %struct.qla_hw_data** %5, align 8
  %18 = call i64 @IS_QLAFX00(%struct.qla_hw_data* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %16, %12, %1
  %21 = load i32, i32* @QLA_FUNCTION_FAILED, align 4
  store i32 %21, i32* %2, align 4
  br label %59

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %24 = call i32 @qla2x00_mgmt_svr_login(%struct.TYPE_7__* %23)
  store i32 %24, i32* %4, align 4
  %25 = load i32, i32* %4, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %4, align 4
  store i32 %28, i32* %2, align 4
  br label %59

29:                                               ; preds = %22
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %31 = call i32 @qla2x00_fdmi_rhba(%struct.TYPE_7__* %30)
  store i32 %31, i32* %4, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %55

34:                                               ; preds = %29
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @QLA_ALREADY_REGISTERED, align 4
  %37 = icmp ne i32 %35, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* %4, align 4
  store i32 %39, i32* %2, align 4
  br label %59

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %42 = call i32 @qla2x00_fdmi_dhba(%struct.TYPE_7__* %41)
  store i32 %42, i32* %4, align 4
  %43 = load i32, i32* %4, align 4
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %40
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %59

47:                                               ; preds = %40
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %49 = call i32 @qla2x00_fdmi_rhba(%struct.TYPE_7__* %48)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  store i32 %53, i32* %2, align 4
  br label %59

54:                                               ; preds = %47
  br label %55

55:                                               ; preds = %54, %29
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %57 = call i32 @qla2x00_fdmi_rpa(%struct.TYPE_7__* %56)
  store i32 %57, i32* %4, align 4
  %58 = load i32, i32* %4, align 4
  store i32 %58, i32* %2, align 4
  br label %59

59:                                               ; preds = %55, %52, %45, %38, %27, %20
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @IS_QLA2100(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLA2200(%struct.qla_hw_data*) #1

declare dso_local i64 @IS_QLAFX00(%struct.qla_hw_data*) #1

declare dso_local i32 @qla2x00_mgmt_svr_login(%struct.TYPE_7__*) #1

declare dso_local i32 @qla2x00_fdmi_rhba(%struct.TYPE_7__*) #1

declare dso_local i32 @qla2x00_fdmi_dhba(%struct.TYPE_7__*) #1

declare dso_local i32 @qla2x00_fdmi_rpa(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
