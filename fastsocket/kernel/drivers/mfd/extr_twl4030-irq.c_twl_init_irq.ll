; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl_init_irq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_twl4030-irq.c_twl_init_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.irq_chip = type { i8*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.task_struct = type { i32 }

@twl_init_irq.twl4030_irq_chip = internal global %struct.irq_chip zeroinitializer, align 8
@twl_irq_line = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"twl4030-irqchip\00", align 1
@wq = common dso_local global i32* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"twl4030: workqueue FAIL\0A\00", align 1
@ESRCH = common dso_local global i32 0, align 4
@twl4030_irq_base = common dso_local global i32 0, align 4
@dummy_irq_chip = common dso_local global %struct.irq_chip zeroinitializer, align 8
@.str.2 = private unnamed_addr constant [8 x i8] c"twl4030\00", align 1
@twl4030_sih_irq_chip = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@handle_simple_irq = common dso_local global i32* null, align 8
@twl4030_irq_next = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"twl4030: %s (irq %d) chaining IRQs %d..%d\0A\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"PIH\00", align 1
@TWL4030_MODULE_INT = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [35 x i8] c"twl4030: sih_setup PWR INT --> %d\0A\00", align 1
@irq_event = common dso_local global i32 0, align 4
@handle_twl4030_pih = common dso_local global i32 0, align 4
@IRQF_DISABLED = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [12 x i8] c"TWL4030-PIH\00", align 1
@.str.7 = private unnamed_addr constant [36 x i8] c"twl4030: could not claim irq%d: %d\0A\00", align 1
@twl4030_irq_thread = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [12 x i8] c"twl4030-irq\00", align 1
@.str.9 = private unnamed_addr constant [42 x i8] c"twl4030: could not create irq %d thread!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @twl_init_irq(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.task_struct*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @twl_irq_line, align 4
  %12 = call i32 @twl4030_init_sih_modules(i32 %11)
  store i32 %12, i32* %8, align 4
  %13 = load i32, i32* %8, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %4, align 4
  br label %104

17:                                               ; preds = %3
  %18 = call i32* @create_singlethread_workqueue(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  store i32* %18, i32** @wq, align 8
  %19 = load i32*, i32** @wq, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %23 = load i32, i32* @ESRCH, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %4, align 4
  br label %104

25:                                               ; preds = %17
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* @twl4030_irq_base, align 4
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 bitcast (%struct.irq_chip* @twl_init_irq.twl4030_irq_chip to i8*), i8* align 8 bitcast (%struct.irq_chip* @dummy_irq_chip to i8*), i64 16, i1 false)
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i8** getelementptr inbounds (%struct.irq_chip, %struct.irq_chip* @twl_init_irq.twl4030_irq_chip, i32 0, i32 0), align 8
  %27 = load i32, i32* getelementptr inbounds (%struct.irq_chip, %struct.irq_chip* @dummy_irq_chip, i32 0, i32 1), align 8
  store i32 %27, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @twl4030_sih_irq_chip, i32 0, i32 0), align 4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %9, align 4
  br label %29

29:                                               ; preds = %39, %25
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %29
  %34 = load i32, i32* %9, align 4
  %35 = load i32*, i32** @handle_simple_irq, align 8
  %36 = call i32 @set_irq_chip_and_handler(i32 %34, %struct.irq_chip* @twl_init_irq.twl4030_irq_chip, i32* %35)
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @activate_irq(i32 %37)
  br label %39

39:                                               ; preds = %33
  %40 = load i32, i32* %9, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %9, align 4
  br label %29

42:                                               ; preds = %29
  %43 = load i32, i32* %9, align 4
  store i32 %43, i32* @twl4030_irq_next, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @twl4030_irq_next, align 4
  %47 = sub nsw i32 %46, 1
  %48 = call i32 @pr_info(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0), i32 %44, i32 %45, i32 %47)
  %49 = load i32, i32* @TWL4030_MODULE_INT, align 4
  %50 = call i32 @twl4030_sih_setup(i32 %49)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %8, align 4
  %55 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i32 %54)
  br label %88

56:                                               ; preds = %42
  %57 = call i32 @init_completion(i32* @irq_event)
  %58 = load i32, i32* %5, align 4
  %59 = load i32, i32* @handle_twl4030_pih, align 4
  %60 = load i32, i32* @IRQF_DISABLED, align 4
  %61 = call i32 @request_irq(i32 %58, i32 %59, i32 %60, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.6, i64 0, i64 0), i32* @irq_event)
  store i32 %61, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %56
  %65 = load i32, i32* %5, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.7, i64 0, i64 0), i32 %65, i32 %66)
  br label %87

68:                                               ; preds = %56
  %69 = load i32, i32* @twl4030_irq_thread, align 4
  %70 = load i32, i32* %5, align 4
  %71 = sext i32 %70 to i64
  %72 = inttoptr i64 %71 to i8*
  %73 = call %struct.task_struct* @kthread_run(i32 %69, i8* %72, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.8, i64 0, i64 0))
  store %struct.task_struct* %73, %struct.task_struct** %10, align 8
  %74 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %75 = call i64 @IS_ERR(%struct.task_struct* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %68
  %78 = load i32, i32* %5, align 4
  %79 = call i32 (i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.9, i64 0, i64 0), i32 %78)
  %80 = load %struct.task_struct*, %struct.task_struct** %10, align 8
  %81 = call i32 @PTR_ERR(%struct.task_struct* %80)
  store i32 %81, i32* %8, align 4
  br label %84

82:                                               ; preds = %68
  %83 = load i32, i32* %8, align 4
  store i32 %83, i32* %4, align 4
  br label %104

84:                                               ; preds = %77
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @free_irq(i32 %85, i32* @irq_event)
  br label %87

87:                                               ; preds = %84, %64
  br label %88

88:                                               ; preds = %87, %53
  %89 = load i32, i32* %6, align 4
  store i32 %89, i32* %9, align 4
  br label %90

90:                                               ; preds = %97, %88
  %91 = load i32, i32* %9, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ult i32 %91, %92
  br i1 %93, label %94, label %100

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = call i32 @set_irq_chip_and_handler(i32 %95, %struct.irq_chip* null, i32* null)
  br label %97

97:                                               ; preds = %94
  %98 = load i32, i32* %9, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %9, align 4
  br label %90

100:                                              ; preds = %90
  %101 = load i32*, i32** @wq, align 8
  %102 = call i32 @destroy_workqueue(i32* %101)
  store i32* null, i32** @wq, align 8
  %103 = load i32, i32* %8, align 4
  store i32 %103, i32* %4, align 4
  br label %104

104:                                              ; preds = %100, %82, %21, %15
  %105 = load i32, i32* %4, align 4
  ret i32 %105
}

declare dso_local i32 @twl4030_init_sih_modules(i32) #1

declare dso_local i32* @create_singlethread_workqueue(i8*) #1

declare dso_local i32 @pr_err(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @set_irq_chip_and_handler(i32, %struct.irq_chip*, i32*) #1

declare dso_local i32 @activate_irq(i32) #1

declare dso_local i32 @pr_info(i8*, i8*, i32, i32, i32) #1

declare dso_local i32 @twl4030_sih_setup(i32) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @request_irq(i32, i32, i32, i8*, i32*) #1

declare dso_local %struct.task_struct* @kthread_run(i32, i8*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.task_struct*) #1

declare dso_local i32 @PTR_ERR(%struct.task_struct*) #1

declare dso_local i32 @free_irq(i32, i32*) #1

declare dso_local i32 @destroy_workqueue(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
