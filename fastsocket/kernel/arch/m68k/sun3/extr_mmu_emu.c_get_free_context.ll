; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_mmu_emu.c_get_free_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_mmu_emu.c_get_free_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@get_free_context.next_to_die = internal global i8 1, align 1
@ctx_avail = common dso_local global i32 0, align 4
@CONTEXTS_NUM = common dso_local global i64 0, align 8
@ctx_alloc = common dso_local global %struct.mm_struct** null, align 8
@.str = private unnamed_addr constant [46 x i8] c"get_free_context: failed to find free context\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @get_free_context(%struct.mm_struct* %0) #0 {
  %2 = alloca %struct.mm_struct*, align 8
  %3 = alloca i64, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %2, align 8
  store i64 1, i64* %3, align 8
  %4 = load i32, i32* @ctx_avail, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %22, label %6

6:                                                ; preds = %1
  %7 = load i8, i8* @get_free_context.next_to_die, align 1
  %8 = zext i8 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = call i32 @clear_context(i64 %9)
  %11 = load i8, i8* @get_free_context.next_to_die, align 1
  %12 = zext i8 %11 to i32
  %13 = add nsw i32 %12, 1
  %14 = and i32 %13, 7
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* @get_free_context.next_to_die, align 1
  %16 = load i8, i8* @get_free_context.next_to_die, align 1
  %17 = icmp ne i8 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %6
  %19 = load i8, i8* @get_free_context.next_to_die, align 1
  %20 = add i8 %19, 1
  store i8 %20, i8* @get_free_context.next_to_die, align 1
  br label %21

21:                                               ; preds = %18, %6
  br label %45

22:                                               ; preds = %1
  br label %23

23:                                               ; preds = %37, %22
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* @CONTEXTS_NUM, align 8
  %26 = icmp ult i64 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %23
  %28 = load %struct.mm_struct**, %struct.mm_struct*** @ctx_alloc, align 8
  %29 = load i64, i64* %3, align 8
  %30 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %28, i64 %29
  %31 = load %struct.mm_struct*, %struct.mm_struct** %30, align 8
  %32 = icmp ne %struct.mm_struct* %31, null
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i64, i64* %3, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %3, align 8
  br label %37

36:                                               ; preds = %27
  br label %38

37:                                               ; preds = %33
  br label %23

38:                                               ; preds = %36, %23
  %39 = load i64, i64* %3, align 8
  %40 = load i64, i64* @CONTEXTS_NUM, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = call i32 @panic(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %42, %38
  br label %45

45:                                               ; preds = %44, %21
  %46 = load %struct.mm_struct*, %struct.mm_struct** %2, align 8
  %47 = load %struct.mm_struct**, %struct.mm_struct*** @ctx_alloc, align 8
  %48 = load i64, i64* %3, align 8
  %49 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %47, i64 %48
  store %struct.mm_struct* %46, %struct.mm_struct** %49, align 8
  %50 = load i32, i32* @ctx_avail, align 4
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* @ctx_avail, align 4
  %52 = load i64, i64* %3, align 8
  ret i64 %52
}

declare dso_local i32 @clear_context(i64) #1

declare dso_local i32 @panic(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
