; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_mmu_emu.c_clear_context.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/m68k/sun3/extr_mmu_emu.c_clear_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { i32 }

@ctx_alloc = common dso_local global %struct.mm_struct** null, align 8
@.str = private unnamed_addr constant [38 x i8] c"clear_context: context not allocated\0A\00", align 1
@SUN3_INVALID_CONTEXT = common dso_local global i32 0, align 4
@ctx_avail = common dso_local global i32 0, align 4
@SUN3_INVALID_PMEG = common dso_local global i64 0, align 8
@pmeg_ctx = common dso_local global i64* null, align 8
@pmeg_alloc = common dso_local global i32* null, align 8
@pmeg_vaddr = common dso_local global i64* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @clear_context(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i8, align 1
  %4 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %5 = load i64, i64* %2, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %1
  %8 = load %struct.mm_struct**, %struct.mm_struct*** @ctx_alloc, align 8
  %9 = load i64, i64* %2, align 8
  %10 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %8, i64 %9
  %11 = load %struct.mm_struct*, %struct.mm_struct** %10, align 8
  %12 = icmp ne %struct.mm_struct* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %7
  %14 = call i32 @panic(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  br label %15

15:                                               ; preds = %13, %7
  %16 = load i32, i32* @SUN3_INVALID_CONTEXT, align 4
  %17 = load %struct.mm_struct**, %struct.mm_struct*** @ctx_alloc, align 8
  %18 = load i64, i64* %2, align 8
  %19 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %17, i64 %18
  %20 = load %struct.mm_struct*, %struct.mm_struct** %19, align 8
  %21 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %20, i32 0, i32 0
  store i32 %16, i32* %21, align 4
  %22 = load %struct.mm_struct**, %struct.mm_struct*** @ctx_alloc, align 8
  %23 = load i64, i64* %2, align 8
  %24 = getelementptr inbounds %struct.mm_struct*, %struct.mm_struct** %22, i64 %23
  store %struct.mm_struct* null, %struct.mm_struct** %24, align 8
  %25 = load i32, i32* @ctx_avail, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* @ctx_avail, align 4
  br label %27

27:                                               ; preds = %15, %1
  %28 = call zeroext i8 (...) @sun3_get_context()
  store i8 %28, i8* %3, align 1
  %29 = load i64, i64* %2, align 8
  %30 = trunc i64 %29 to i8
  %31 = call i32 @sun3_put_context(i8 zeroext %30)
  store i64 0, i64* %4, align 8
  br label %32

32:                                               ; preds = %66, %27
  %33 = load i64, i64* %4, align 8
  %34 = load i64, i64* @SUN3_INVALID_PMEG, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %69

36:                                               ; preds = %32
  %37 = load i64*, i64** @pmeg_ctx, align 8
  %38 = load i64, i64* %4, align 8
  %39 = getelementptr inbounds i64, i64* %37, i64 %38
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* %2, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %65

43:                                               ; preds = %36
  %44 = load i32*, i32** @pmeg_alloc, align 8
  %45 = load i64, i64* %4, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = icmp eq i32 %47, 1
  br i1 %48, label %49, label %65

49:                                               ; preds = %43
  %50 = load i64*, i64** @pmeg_vaddr, align 8
  %51 = load i64, i64* %4, align 8
  %52 = getelementptr inbounds i64, i64* %50, i64 %51
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @SUN3_INVALID_PMEG, align 8
  %55 = call i32 @sun3_put_segmap(i64 %53, i64 %54)
  %56 = load i64*, i64** @pmeg_ctx, align 8
  %57 = load i64, i64* %4, align 8
  %58 = getelementptr inbounds i64, i64* %56, i64 %57
  store i64 0, i64* %58, align 8
  %59 = load i32*, i32** @pmeg_alloc, align 8
  %60 = load i64, i64* %4, align 8
  %61 = getelementptr inbounds i32, i32* %59, i64 %60
  store i32 0, i32* %61, align 4
  %62 = load i64*, i64** @pmeg_vaddr, align 8
  %63 = load i64, i64* %4, align 8
  %64 = getelementptr inbounds i64, i64* %62, i64 %63
  store i64 0, i64* %64, align 8
  br label %65

65:                                               ; preds = %49, %43, %36
  br label %66

66:                                               ; preds = %65
  %67 = load i64, i64* %4, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %4, align 8
  br label %32

69:                                               ; preds = %32
  %70 = load i8, i8* %3, align 1
  %71 = call i32 @sun3_put_context(i8 zeroext %70)
  ret void
}

declare dso_local i32 @panic(i8*) #1

declare dso_local zeroext i8 @sun3_get_context(...) #1

declare dso_local i32 @sun3_put_context(i8 zeroext) #1

declare dso_local i32 @sun3_put_segmap(i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
