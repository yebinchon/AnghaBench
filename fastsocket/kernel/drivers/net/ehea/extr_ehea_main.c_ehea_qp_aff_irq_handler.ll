; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_qp_aff_irq_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_qp_aff_irq_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_port = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ehea_qp* }
%struct.ehea_qp = type { i32 }
%struct.ehea_eqe = type { i32 }

@EHEA_EQE_QP_TOKEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"QP aff_err: entry=0x%llx, token=0x%x\00", align 1
@EHEA_AER_RESTYPE_QP = common dso_local global i64 0, align 8
@EHEA_AER_RESET_MASK = common dso_local global i64 0, align 8
@EHEA_AERR_RESET_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [15 x i8] c"Resetting port\00", align 1
@IRQ_HANDLED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @ehea_qp_aff_irq_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ehea_qp_aff_irq_handler(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ehea_port*, align 8
  %6 = alloca %struct.ehea_eqe*, align 8
  %7 = alloca %struct.ehea_qp*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = bitcast i8* %13 to %struct.ehea_port*
  store %struct.ehea_port* %14, %struct.ehea_port** %5, align 8
  store i32 0, i32* %12, align 4
  %15 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %16 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call %struct.ehea_eqe* @ehea_poll_eq(i32 %17)
  store %struct.ehea_eqe* %18, %struct.ehea_eqe** %6, align 8
  br label %19

19:                                               ; preds = %63, %2
  %20 = load %struct.ehea_eqe*, %struct.ehea_eqe** %6, align 8
  %21 = icmp ne %struct.ehea_eqe* %20, null
  br i1 %21, label %22, label %68

22:                                               ; preds = %19
  %23 = load i32, i32* @EHEA_EQE_QP_TOKEN, align 4
  %24 = load %struct.ehea_eqe*, %struct.ehea_eqe** %6, align 8
  %25 = getelementptr inbounds %struct.ehea_eqe, %struct.ehea_eqe* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @EHEA_BMASK_GET(i32 %23, i32 %26)
  store i64 %27, i64* %8, align 8
  %28 = load %struct.ehea_eqe*, %struct.ehea_eqe** %6, align 8
  %29 = getelementptr inbounds %struct.ehea_eqe, %struct.ehea_eqe* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i64, i64* %8, align 8
  %32 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %30, i64 %31)
  %33 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %34 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %33, i32 0, i32 2
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load %struct.ehea_qp*, %struct.ehea_qp** %38, align 8
  store %struct.ehea_qp* %39, %struct.ehea_qp** %7, align 8
  %40 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %41 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ehea_qp*, %struct.ehea_qp** %7, align 8
  %44 = getelementptr inbounds %struct.ehea_qp, %struct.ehea_qp* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ehea_error_data(i32 %42, i32 %45, i64* %10, i64* %11)
  store i64 %46, i64* %9, align 8
  %47 = load i64, i64* %9, align 8
  %48 = load i64, i64* @EHEA_AER_RESTYPE_QP, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %62

50:                                               ; preds = %22
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @EHEA_AER_RESET_MASK, align 8
  %53 = and i64 %51, %52
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %60, label %55

55:                                               ; preds = %50
  %56 = load i64, i64* %11, align 8
  %57 = load i64, i64* @EHEA_AERR_RESET_MASK, align 8
  %58 = and i64 %56, %57
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %55, %50
  store i32 1, i32* %12, align 4
  br label %61

61:                                               ; preds = %60, %55
  br label %63

62:                                               ; preds = %22
  store i32 1, i32* %12, align 4
  br label %63

63:                                               ; preds = %62, %61
  %64 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %65 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.ehea_eqe* @ehea_poll_eq(i32 %66)
  store %struct.ehea_eqe* %67, %struct.ehea_eqe** %6, align 8
  br label %19

68:                                               ; preds = %19
  %69 = load i32, i32* %12, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %68
  %72 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %73 = load %struct.ehea_port*, %struct.ehea_port** %5, align 8
  %74 = call i32 @ehea_schedule_port_reset(%struct.ehea_port* %73)
  br label %75

75:                                               ; preds = %71, %68
  %76 = load i32, i32* @IRQ_HANDLED, align 4
  ret i32 %76
}

declare dso_local %struct.ehea_eqe* @ehea_poll_eq(i32) #1

declare dso_local i64 @EHEA_BMASK_GET(i32, i32) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i64 @ehea_error_data(i32, i32, i64*, i64*) #1

declare dso_local i32 @ehea_schedule_port_reset(%struct.ehea_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
