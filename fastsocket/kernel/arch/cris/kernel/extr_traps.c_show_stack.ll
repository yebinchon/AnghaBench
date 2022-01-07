; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/cris/kernel/extr_traps.c_show_stack.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/cris/kernel/extr_traps.c_show_stack.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.task_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [27 x i8] c"\0AStack from %08lx:\0A       \00", align 1
@kstack_depth_to_print = common dso_local global i32 0, align 4
@THREAD_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"\0A       \00", align 1
@.str.2 = private unnamed_addr constant [23 x i8] c"Failing address 0x%lx\0A\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"%08lx \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @show_stack(%struct.task_struct* %0, i64* %1) #0 {
  %3 = alloca %struct.task_struct*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.task_struct* %0, %struct.task_struct** %3, align 8
  store i64* %1, i64** %4, align 8
  %8 = load i64*, i64** %4, align 8
  %9 = icmp eq i64* %8, null
  br i1 %9, label %10, label %23

10:                                               ; preds = %2
  %11 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %12 = icmp ne %struct.task_struct* %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %10
  %14 = load %struct.task_struct*, %struct.task_struct** %3, align 8
  %15 = getelementptr inbounds %struct.task_struct, %struct.task_struct* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to i64*
  store i64* %18, i64** %4, align 8
  br label %22

19:                                               ; preds = %10
  %20 = call i64 (...) @rdsp()
  %21 = inttoptr i64 %20 to i64*
  store i64* %21, i64** %4, align 8
  br label %22

22:                                               ; preds = %19, %13
  br label %23

23:                                               ; preds = %22, %2
  %24 = load i64*, i64** %4, align 8
  store i64* %24, i64** %5, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = ptrtoint i64* %25 to i64
  %27 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %26)
  store i32 0, i32* %7, align 4
  br label %28

28:                                               ; preds = %64, %23
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @kstack_depth_to_print, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %67

32:                                               ; preds = %28
  %33 = load i64*, i64** %5, align 8
  %34 = ptrtoint i64* %33 to i64
  %35 = load i32, i32* @THREAD_SIZE, align 4
  %36 = sub nsw i32 %35, 1
  %37 = sext i32 %36 to i64
  %38 = and i64 %34, %37
  %39 = icmp eq i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %67

41:                                               ; preds = %32
  %42 = load i32, i32* %7, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %7, align 4
  %46 = srem i32 %45, 8
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %44
  %49 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %50

50:                                               ; preds = %48, %44, %41
  %51 = load i64, i64* %6, align 8
  %52 = load i64*, i64** %5, align 8
  %53 = call i64 @__get_user(i64 %51, i64* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %50
  %56 = load i64*, i64** %5, align 8
  %57 = ptrtoint i64* %56 to i64
  %58 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.2, i64 0, i64 0), i64 %57)
  br label %67

59:                                               ; preds = %50
  %60 = load i64*, i64** %5, align 8
  %61 = getelementptr inbounds i64, i64* %60, i32 1
  store i64* %61, i64** %5, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0), i64 %62)
  br label %64

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %7, align 4
  br label %28

67:                                               ; preds = %55, %40, %28
  %68 = load i64*, i64** %4, align 8
  %69 = call i32 @show_trace(i64* %68)
  ret void
}

declare dso_local i64 @rdsp(...) #1

declare dso_local i32 @printk(i8*, ...) #1

declare dso_local i64 @__get_user(i64, i64*) #1

declare dso_local i32 @show_trace(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
