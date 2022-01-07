; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_asm-offsets.c_output_thread_defines.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/mips/kernel/extr_asm-offsets.c_output_thread_defines.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"MIPS specific thread_struct offsets.\00", align 1
@THREAD_REG16 = common dso_local global i32 0, align 4
@task_struct = common dso_local global i32 0, align 4
@thread = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@THREAD_REG17 = common dso_local global i32 0, align 4
@THREAD_REG18 = common dso_local global i32 0, align 4
@THREAD_REG19 = common dso_local global i32 0, align 4
@THREAD_REG20 = common dso_local global i32 0, align 4
@THREAD_REG21 = common dso_local global i32 0, align 4
@THREAD_REG22 = common dso_local global i32 0, align 4
@THREAD_REG23 = common dso_local global i32 0, align 4
@THREAD_REG29 = common dso_local global i32 0, align 4
@THREAD_REG30 = common dso_local global i32 0, align 4
@THREAD_REG31 = common dso_local global i32 0, align 4
@THREAD_STATUS = common dso_local global i32 0, align 4
@THREAD_FPU = common dso_local global i32 0, align 4
@THREAD_BVADDR = common dso_local global i32 0, align 4
@THREAD_BUADDR = common dso_local global i32 0, align 4
@THREAD_ECODE = common dso_local global i32 0, align 4
@THREAD_TRAPNO = common dso_local global i32 0, align 4
@THREAD_TRAMP = common dso_local global i32 0, align 4
@THREAD_OLDCTX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_thread_defines() #0 {
  %1 = call i32 @COMMENT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  %2 = load i32, i32* @THREAD_REG16, align 4
  %3 = load i32, i32* @task_struct, align 4
  %4 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 18), align 4
  %5 = call i32 @OFFSET(i32 %2, i32 %3, i32 %4)
  %6 = load i32, i32* @THREAD_REG17, align 4
  %7 = load i32, i32* @task_struct, align 4
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 17), align 4
  %9 = call i32 @OFFSET(i32 %6, i32 %7, i32 %8)
  %10 = load i32, i32* @THREAD_REG18, align 4
  %11 = load i32, i32* @task_struct, align 4
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 16), align 4
  %13 = call i32 @OFFSET(i32 %10, i32 %11, i32 %12)
  %14 = load i32, i32* @THREAD_REG19, align 4
  %15 = load i32, i32* @task_struct, align 4
  %16 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 15), align 4
  %17 = call i32 @OFFSET(i32 %14, i32 %15, i32 %16)
  %18 = load i32, i32* @THREAD_REG20, align 4
  %19 = load i32, i32* @task_struct, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 14), align 4
  %21 = call i32 @OFFSET(i32 %18, i32 %19, i32 %20)
  %22 = load i32, i32* @THREAD_REG21, align 4
  %23 = load i32, i32* @task_struct, align 4
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 13), align 4
  %25 = call i32 @OFFSET(i32 %22, i32 %23, i32 %24)
  %26 = load i32, i32* @THREAD_REG22, align 4
  %27 = load i32, i32* @task_struct, align 4
  %28 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 12), align 4
  %29 = call i32 @OFFSET(i32 %26, i32 %27, i32 %28)
  %30 = load i32, i32* @THREAD_REG23, align 4
  %31 = load i32, i32* @task_struct, align 4
  %32 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 11), align 4
  %33 = call i32 @OFFSET(i32 %30, i32 %31, i32 %32)
  %34 = load i32, i32* @THREAD_REG29, align 4
  %35 = load i32, i32* @task_struct, align 4
  %36 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 10), align 4
  %37 = call i32 @OFFSET(i32 %34, i32 %35, i32 %36)
  %38 = load i32, i32* @THREAD_REG30, align 4
  %39 = load i32, i32* @task_struct, align 4
  %40 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 9), align 4
  %41 = call i32 @OFFSET(i32 %38, i32 %39, i32 %40)
  %42 = load i32, i32* @THREAD_REG31, align 4
  %43 = load i32, i32* @task_struct, align 4
  %44 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 8), align 4
  %45 = call i32 @OFFSET(i32 %42, i32 %43, i32 %44)
  %46 = load i32, i32* @THREAD_STATUS, align 4
  %47 = load i32, i32* @task_struct, align 4
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 7), align 4
  %49 = call i32 @OFFSET(i32 %46, i32 %47, i32 %48)
  %50 = load i32, i32* @THREAD_FPU, align 4
  %51 = load i32, i32* @task_struct, align 4
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 6), align 4
  %53 = call i32 @OFFSET(i32 %50, i32 %51, i32 %52)
  %54 = load i32, i32* @THREAD_BVADDR, align 4
  %55 = load i32, i32* @task_struct, align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 5), align 4
  %57 = call i32 @OFFSET(i32 %54, i32 %55, i32 %56)
  %58 = load i32, i32* @THREAD_BUADDR, align 4
  %59 = load i32, i32* @task_struct, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 4), align 4
  %61 = call i32 @OFFSET(i32 %58, i32 %59, i32 %60)
  %62 = load i32, i32* @THREAD_ECODE, align 4
  %63 = load i32, i32* @task_struct, align 4
  %64 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 3), align 4
  %65 = call i32 @OFFSET(i32 %62, i32 %63, i32 %64)
  %66 = load i32, i32* @THREAD_TRAPNO, align 4
  %67 = load i32, i32* @task_struct, align 4
  %68 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 2), align 4
  %69 = call i32 @OFFSET(i32 %66, i32 %67, i32 %68)
  %70 = load i32, i32* @THREAD_TRAMP, align 4
  %71 = load i32, i32* @task_struct, align 4
  %72 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 1), align 4
  %73 = call i32 @OFFSET(i32 %70, i32 %71, i32 %72)
  %74 = load i32, i32* @THREAD_OLDCTX, align 4
  %75 = load i32, i32* @task_struct, align 4
  %76 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @thread, i32 0, i32 0), align 4
  %77 = call i32 @OFFSET(i32 %74, i32 %75, i32 %76)
  %78 = call i32 (...) @BLANK()
  ret void
}

declare dso_local i32 @COMMENT(i8*) #1

declare dso_local i32 @OFFSET(i32, i32, i32) #1

declare dso_local i32 @BLANK(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
