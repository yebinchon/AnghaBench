; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_read_proc_proc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/staging/android/extr_binder.c_binder_read_proc_proc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.binder_proc = type { i32 }

@binder_debug_no_lock = common dso_local global i32 0, align 4
@binder_lock = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"binder proc state:\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**, i32, i32, i32*, i8*)* @binder_read_proc_proc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @binder_read_proc_proc(i8* %0, i8** %1, i32 %2, i32 %3, i32* %4, i8* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca %struct.binder_proc*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %8, align 8
  store i8** %1, i8*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i8* %5, i8** %13, align 8
  %18 = load i8*, i8** %13, align 8
  %19 = bitcast i8* %18 to %struct.binder_proc*
  store %struct.binder_proc* %19, %struct.binder_proc** %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i8*, i8** %8, align 8
  store i8* %20, i8** %16, align 8
  %21 = load i32, i32* @binder_debug_no_lock, align 4
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %17, align 4
  %25 = load i32, i32* %10, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %93

28:                                               ; preds = %6
  %29 = load i32, i32* %17, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 @mutex_lock(i32* @binder_lock)
  br label %33

33:                                               ; preds = %31, %28
  %34 = load i8*, i8** %16, align 8
  %35 = load i32, i32* @PAGE_SIZE, align 4
  %36 = call i32 @snprintf(i8* %34, i32 %35, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %37 = load i8*, i8** %16, align 8
  %38 = sext i32 %36 to i64
  %39 = getelementptr inbounds i8, i8* %37, i64 %38
  store i8* %39, i8** %16, align 8
  %40 = load i8*, i8** %16, align 8
  %41 = load i8*, i8** %8, align 8
  %42 = load i32, i32* @PAGE_SIZE, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load %struct.binder_proc*, %struct.binder_proc** %14, align 8
  %46 = call i8* @print_binder_proc(i8* %40, i8* %44, %struct.binder_proc* %45, i32 1)
  store i8* %46, i8** %16, align 8
  %47 = load i32, i32* %17, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %33
  %50 = call i32 @mutex_unlock(i32* @binder_lock)
  br label %51

51:                                               ; preds = %49, %33
  %52 = load i8*, i8** %16, align 8
  %53 = load i8*, i8** %8, align 8
  %54 = load i32, i32* @PAGE_SIZE, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i8, i8* %53, i64 %55
  %57 = icmp ugt i8* %52, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %51
  %59 = load i8*, i8** %8, align 8
  %60 = load i32, i32* @PAGE_SIZE, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, i8* %59, i64 %61
  store i8* %62, i8** %16, align 8
  br label %63

63:                                               ; preds = %58, %51
  %64 = load i8*, i8** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i8, i8* %64, i64 %66
  %68 = load i8**, i8*** %9, align 8
  store i8* %67, i8** %68, align 8
  %69 = load i8*, i8** %16, align 8
  %70 = load i8*, i8** %8, align 8
  %71 = ptrtoint i8* %69 to i64
  %72 = ptrtoint i8* %70 to i64
  %73 = sub i64 %71, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %15, align 4
  %75 = load i32, i32* %15, align 4
  %76 = load i32, i32* %10, align 4
  %77 = icmp sgt i32 %75, %76
  br i1 %77, label %78, label %82

78:                                               ; preds = %63
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %15, align 4
  %81 = sub nsw i32 %80, %79
  store i32 %81, i32* %15, align 4
  br label %83

82:                                               ; preds = %63
  store i32 0, i32* %15, align 4
  br label %83

83:                                               ; preds = %82, %78
  %84 = load i32, i32* %15, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp slt i32 %84, %85
  br i1 %86, label %87, label %89

87:                                               ; preds = %83
  %88 = load i32, i32* %15, align 4
  br label %91

89:                                               ; preds = %83
  %90 = load i32, i32* %11, align 4
  br label %91

91:                                               ; preds = %89, %87
  %92 = phi i32 [ %88, %87 ], [ %90, %89 ]
  store i32 %92, i32* %7, align 4
  br label %93

93:                                               ; preds = %91, %27
  %94 = load i32, i32* %7, align 4
  ret i32 %94
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snprintf(i8*, i32, i8*) #1

declare dso_local i8* @print_binder_proc(i8*, i8*, %struct.binder_proc*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
