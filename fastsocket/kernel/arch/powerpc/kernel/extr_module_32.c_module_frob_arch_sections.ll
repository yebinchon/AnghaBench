; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_module_frob_arch_sections.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_module_32.c_module_frob_arch_sections.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i8* }
%struct.module = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32 }

@.str = private unnamed_addr constant [10 x i8] c".init.plt\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c".plt\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"Module doesn't contain .plt or .init.plt sections.\0A\00", align 1
@ENOEXEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @module_frob_arch_sections(%struct.TYPE_10__* %0, %struct.TYPE_9__* %1, i8* %2, %struct.module* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_9__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.module*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %7, align 8
  store i8* %2, i8** %8, align 8
  store %struct.module* %3, %struct.module** %9, align 8
  store i32 0, i32* %10, align 4
  br label %11

11:                                               ; preds = %53, %4
  %12 = load i32, i32* %10, align 4
  %13 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp ult i32 %12, %15
  br i1 %16, label %17, label %56

17:                                               ; preds = %11
  %18 = load i8*, i8** %8, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %20 = load i32, i32* %10, align 4
  %21 = zext i32 %20 to i64
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i8, i8* %18, i64 %25
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %17
  %30 = load i32, i32* %10, align 4
  %31 = load %struct.module*, %struct.module** %9, align 8
  %32 = getelementptr inbounds %struct.module, %struct.module* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  store i32 %30, i32* %33, align 4
  br label %52

34:                                               ; preds = %17
  %35 = load i8*, i8** %8, align 8
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %37 = load i32, i32* %10, align 4
  %38 = zext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %35, i64 %42
  %44 = call i64 @strcmp(i8* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %34
  %47 = load i32, i32* %10, align 4
  %48 = load %struct.module*, %struct.module** %9, align 8
  %49 = getelementptr inbounds %struct.module, %struct.module* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 1
  store i32 %47, i32* %50, align 4
  br label %51

51:                                               ; preds = %46, %34
  br label %52

52:                                               ; preds = %51, %29
  br label %53

53:                                               ; preds = %52
  %54 = load i32, i32* %10, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %10, align 4
  br label %11

56:                                               ; preds = %11
  %57 = load %struct.module*, %struct.module** %9, align 8
  %58 = getelementptr inbounds %struct.module, %struct.module* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %56
  %63 = load %struct.module*, %struct.module** %9, align 8
  %64 = getelementptr inbounds %struct.module, %struct.module* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62, %56
  %69 = call i32 @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %70 = load i32, i32* @ENOEXEC, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %97

72:                                               ; preds = %62
  %73 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %75 = load i8*, i8** %8, align 8
  %76 = call i8* @get_plt_size(%struct.TYPE_10__* %73, %struct.TYPE_9__* %74, i8* %75, i32 0)
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %78 = load %struct.module*, %struct.module** %9, align 8
  %79 = getelementptr inbounds %struct.module, %struct.module* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 1
  store i8* %76, i8** %84, align 8
  %85 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %86 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %87 = load i8*, i8** %8, align 8
  %88 = call i8* @get_plt_size(%struct.TYPE_10__* %85, %struct.TYPE_9__* %86, i8* %87, i32 1)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %7, align 8
  %90 = load %struct.module*, %struct.module** %9, align 8
  %91 = getelementptr inbounds %struct.module, %struct.module* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i64 %94
  %96 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %95, i32 0, i32 1
  store i8* %88, i8** %96, align 8
  store i32 0, i32* %5, align 4
  br label %97

97:                                               ; preds = %72, %68
  %98 = load i32, i32* %5, align 4
  ret i32 %98
}

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @printk(i8*) #1

declare dso_local i8* @get_plt_size(%struct.TYPE_10__*, %struct.TYPE_9__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
