; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/skas/extr_mem.c_run_syscall_stub.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/um/os-Linux/skas/extr_mem.c_run_syscall_stub.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_id = type { i32 }

@single_count = common dso_local global i32 0, align 4
@multi_op_count = common dso_local global i32 0, align 4
@UM_KERN_PAGE_MASK = common dso_local global i64 0, align 8
@UM_KERN_PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @run_syscall_stub(%struct.mm_id* %0, i32 %1, i64* %2, i64 %3, i8** %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca %struct.mm_id*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64*, align 8
  store %struct.mm_id* %0, %struct.mm_id** %8, align 8
  store i32 %1, i32* %9, align 4
  store i64* %2, i64** %10, align 8
  store i64 %3, i64* %11, align 8
  store i8** %4, i8*** %12, align 8
  store i32 %5, i32* %13, align 4
  %15 = load %struct.mm_id*, %struct.mm_id** %8, align 8
  %16 = load i8**, i8*** %12, align 8
  %17 = load i8*, i8** %16, align 8
  %18 = call i64* @check_init_stack(%struct.mm_id* %15, i8* %17)
  store i64* %18, i64** %14, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %28

21:                                               ; preds = %6
  %22 = load i8**, i8*** %12, align 8
  %23 = load i8*, i8** %22, align 8
  %24 = icmp eq i8* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @single_count, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* @single_count, align 4
  br label %28

28:                                               ; preds = %25, %21, %6
  %29 = load i64*, i64** %14, align 8
  %30 = load i64, i64* %29, align 8
  %31 = add i64 %30, 8
  store i64 %31, i64* %29, align 8
  %32 = load i64*, i64** %14, align 8
  %33 = load i64, i64* %32, align 8
  %34 = udiv i64 %33, 8
  %35 = load i64*, i64** %14, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 %34
  store i64* %36, i64** %14, align 8
  %37 = load i32, i32* %9, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64*, i64** %14, align 8
  %40 = getelementptr inbounds i64, i64* %39, i32 1
  store i64* %40, i64** %14, align 8
  store i64 %38, i64* %39, align 8
  %41 = load i64*, i64** %10, align 8
  %42 = getelementptr inbounds i64, i64* %41, i64 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64*, i64** %14, align 8
  %45 = getelementptr inbounds i64, i64* %44, i32 1
  store i64* %45, i64** %14, align 8
  store i64 %43, i64* %44, align 8
  %46 = load i64*, i64** %10, align 8
  %47 = getelementptr inbounds i64, i64* %46, i64 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64*, i64** %14, align 8
  %50 = getelementptr inbounds i64, i64* %49, i32 1
  store i64* %50, i64** %14, align 8
  store i64 %48, i64* %49, align 8
  %51 = load i64*, i64** %10, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = load i64*, i64** %14, align 8
  %55 = getelementptr inbounds i64, i64* %54, i32 1
  store i64* %55, i64** %14, align 8
  store i64 %53, i64* %54, align 8
  %56 = load i64*, i64** %10, align 8
  %57 = getelementptr inbounds i64, i64* %56, i64 3
  %58 = load i64, i64* %57, align 8
  %59 = load i64*, i64** %14, align 8
  %60 = getelementptr inbounds i64, i64* %59, i32 1
  store i64* %60, i64** %14, align 8
  store i64 %58, i64* %59, align 8
  %61 = load i64*, i64** %10, align 8
  %62 = getelementptr inbounds i64, i64* %61, i64 4
  %63 = load i64, i64* %62, align 8
  %64 = load i64*, i64** %14, align 8
  %65 = getelementptr inbounds i64, i64* %64, i32 1
  store i64* %65, i64** %14, align 8
  store i64 %63, i64* %64, align 8
  %66 = load i64*, i64** %10, align 8
  %67 = getelementptr inbounds i64, i64* %66, i64 5
  %68 = load i64, i64* %67, align 8
  %69 = load i64*, i64** %14, align 8
  %70 = getelementptr inbounds i64, i64* %69, i32 1
  store i64* %70, i64** %14, align 8
  store i64 %68, i64* %69, align 8
  %71 = load i64, i64* %11, align 8
  %72 = load i64*, i64** %14, align 8
  %73 = getelementptr inbounds i64, i64* %72, i32 1
  store i64* %73, i64** %14, align 8
  store i64 %71, i64* %72, align 8
  %74 = load i64*, i64** %14, align 8
  store i64 0, i64* %74, align 8
  %75 = load i32, i32* @multi_op_count, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* @multi_op_count, align 4
  %77 = load i32, i32* %13, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %93, label %79

79:                                               ; preds = %28
  %80 = load i64*, i64** %14, align 8
  %81 = ptrtoint i64* %80 to i64
  %82 = load i64, i64* @UM_KERN_PAGE_MASK, align 8
  %83 = xor i64 %82, -1
  %84 = and i64 %81, %83
  %85 = load i32, i32* @UM_KERN_PAGE_SIZE, align 4
  %86 = sext i32 %85 to i64
  %87 = sub i64 %86, 80
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %79
  %90 = load i64*, i64** %14, align 8
  %91 = bitcast i64* %90 to i8*
  %92 = load i8**, i8*** %12, align 8
  store i8* %91, i8** %92, align 8
  store i64 0, i64* %7, align 8
  br label %97

93:                                               ; preds = %79, %28
  %94 = load %struct.mm_id*, %struct.mm_id** %8, align 8
  %95 = load i8**, i8*** %12, align 8
  %96 = call i64 @do_syscall_stub(%struct.mm_id* %94, i8** %95)
  store i64 %96, i64* %7, align 8
  br label %97

97:                                               ; preds = %93, %89
  %98 = load i64, i64* %7, align 8
  ret i64 %98
}

declare dso_local i64* @check_init_stack(%struct.mm_id*, i8*) #1

declare dso_local i64 @do_syscall_stub(%struct.mm_id*, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
