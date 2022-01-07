; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_srm_env.c_srm_env_cleanup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/alpha/kernel/extr_srm_env.c_srm_env_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i32*, i32* }

@base_dir = common dso_local global i32* null, align 8
@named_dir = common dso_local global i32* null, align 8
@srm_named_entries = common dso_local global %struct.TYPE_4__* null, align 8
@NAMED_DIR = common dso_local global i32* null, align 8
@numbered_dir = common dso_local global i32* null, align 8
@srm_numbered_entries = common dso_local global %struct.TYPE_4__* null, align 8
@NUMBERED_DIR = common dso_local global i32* null, align 8
@BASE_DIR = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @srm_env_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @srm_env_cleanup() #0 {
  %1 = alloca %struct.TYPE_4__*, align 8
  %2 = alloca i64, align 8
  %3 = load i32*, i32** @base_dir, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %78

5:                                                ; preds = %0
  %6 = load i32*, i32** @named_dir, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %42

8:                                                ; preds = %5
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srm_named_entries, align 8
  store %struct.TYPE_4__* %9, %struct.TYPE_4__** %1, align 8
  br label %10

10:                                               ; preds = %35, %8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp ne i32* %13, null
  br i1 %14, label %15, label %20

15:                                               ; preds = %10
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10
  %21 = phi i1 [ false, %10 ], [ %19, %15 ]
  br i1 %21, label %22, label %38

22:                                               ; preds = %20
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 2
  %25 = load i32*, i32** %24, align 8
  %26 = icmp ne i32* %25, null
  br i1 %26, label %27, label %35

27:                                               ; preds = %22
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32*, i32** @named_dir, align 8
  %32 = call i32 @remove_proc_entry(i32* %30, i32* %31)
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 2
  store i32* null, i32** %34, align 8
  br label %35

35:                                               ; preds = %27, %22
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 1
  store %struct.TYPE_4__* %37, %struct.TYPE_4__** %1, align 8
  br label %10

38:                                               ; preds = %20
  %39 = load i32*, i32** @NAMED_DIR, align 8
  %40 = load i32*, i32** @base_dir, align 8
  %41 = call i32 @remove_proc_entry(i32* %39, i32* %40)
  br label %42

42:                                               ; preds = %38, %5
  %43 = load i32*, i32** @numbered_dir, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %45, label %75

45:                                               ; preds = %42
  store i64 0, i64* %2, align 8
  br label %46

46:                                               ; preds = %68, %45
  %47 = load i64, i64* %2, align 8
  %48 = icmp ule i64 %47, 255
  br i1 %48, label %49, label %71

49:                                               ; preds = %46
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** @srm_numbered_entries, align 8
  %51 = load i64, i64* %2, align 8
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i64 %51
  store %struct.TYPE_4__* %52, %struct.TYPE_4__** %1, align 8
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  %56 = icmp ne i32* %55, null
  br i1 %56, label %57, label %67

57:                                               ; preds = %49
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32*, i32** @numbered_dir, align 8
  %62 = call i32 @remove_proc_entry(i32* %60, i32* %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  store i32* null, i32** %64, align 8
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %1, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %57, %49
  br label %68

68:                                               ; preds = %67
  %69 = load i64, i64* %2, align 8
  %70 = add i64 %69, 1
  store i64 %70, i64* %2, align 8
  br label %46

71:                                               ; preds = %46
  %72 = load i32*, i32** @NUMBERED_DIR, align 8
  %73 = load i32*, i32** @base_dir, align 8
  %74 = call i32 @remove_proc_entry(i32* %72, i32* %73)
  br label %75

75:                                               ; preds = %71, %42
  %76 = load i32*, i32** @BASE_DIR, align 8
  %77 = call i32 @remove_proc_entry(i32* %76, i32* null)
  br label %78

78:                                               ; preds = %75, %0
  ret void
}

declare dso_local i32 @remove_proc_entry(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
