; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/boot/compressed/extr_........libinflate.c_malloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/h8300/boot/compressed/extr_........libinflate.c_malloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Malloc error\00", align 1
@malloc_ptr = common dso_local global i32 0, align 4
@free_mem_ptr = common dso_local global i32 0, align 4
@free_mem_end_ptr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [14 x i8] c"Out of memory\00", align 1
@malloc_count = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @malloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @malloc(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = icmp slt i32 %4, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %1
  %7 = call i32 @error(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  br label %8

8:                                                ; preds = %6, %1
  %9 = load i32, i32* @malloc_ptr, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @free_mem_ptr, align 4
  store i32 %12, i32* @malloc_ptr, align 4
  br label %13

13:                                               ; preds = %11, %8
  %14 = load i32, i32* @malloc_ptr, align 4
  %15 = add nsw i32 %14, 3
  %16 = and i32 %15, -4
  store i32 %16, i32* @malloc_ptr, align 4
  %17 = load i32, i32* @malloc_ptr, align 4
  %18 = sext i32 %17 to i64
  %19 = inttoptr i64 %18 to i8*
  store i8* %19, i8** %3, align 8
  %20 = load i32, i32* %2, align 4
  %21 = load i32, i32* @malloc_ptr, align 4
  %22 = add nsw i32 %21, %20
  store i32 %22, i32* @malloc_ptr, align 4
  %23 = load i32, i32* @free_mem_end_ptr, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %13
  %26 = load i32, i32* @malloc_ptr, align 4
  %27 = load i32, i32* @free_mem_end_ptr, align 4
  %28 = icmp sge i32 %26, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %25
  %30 = call i32 @error(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %25, %13
  %32 = load i32, i32* @malloc_count, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @malloc_count, align 4
  %34 = load i8*, i8** %3, align 8
  ret i8* %34
}

declare dso_local i32 @error(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
