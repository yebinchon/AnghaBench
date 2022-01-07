; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mspec.c_mspec_zero_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_mspec.c_mspec_zero_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@is_sn2 = common dso_local global i64 0, align 8
@scratch_page = common dso_local global i32* null, align 8
@SH2_AMO_CACHE_ENTRIES = common dso_local global i32 0, align 4
@FETCHOP_LOAD = common dso_local global i32 0, align 4
@FETCHOP_VAR_SIZE = common dso_local global i32 0, align 4
@__IA64_UNCACHED_OFFSET = common dso_local global i64 0, align 8
@BTE_WACQUIRE = common dso_local global i32 0, align 4
@BTE_ZERO_FILL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i32)* @mspec_zero_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mspec_zero_block(i64 %0, i32 %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i64, i64* @is_sn2, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %2
  %12 = call i64 (...) @is_shub2()
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %11
  %15 = load i64, i64* %3, align 8
  %16 = call i32 @__pa(i64 %15)
  %17 = call i32 @get_node_number(i32 %16)
  %18 = call i32 @nasid_to_cnodeid(i32 %17)
  store i32 %18, i32* %6, align 4
  %19 = load i32*, i32** @scratch_page, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds i32, i32* %19, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @TO_AMO(i32 %23)
  %25 = inttoptr i64 %24 to i8*
  store i8* %25, i8** %7, align 8
  store i32 0, i32* %8, align 4
  br label %26

26:                                               ; preds = %38, %14
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @SH2_AMO_CACHE_ENTRIES, align 4
  %29 = icmp slt i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %26
  %31 = load i8*, i8** %7, align 8
  %32 = load i32, i32* @FETCHOP_LOAD, align 4
  %33 = call i32 @FETCHOP_LOAD_OP(i8* %31, i32 %32)
  %34 = load i32, i32* @FETCHOP_VAR_SIZE, align 4
  %35 = load i8*, i8** %7, align 8
  %36 = sext i32 %34 to i64
  %37 = getelementptr i8, i8* %35, i64 %36
  store i8* %37, i8** %7, align 8
  br label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %8, align 4
  br label %26

41:                                               ; preds = %26
  br label %42

42:                                               ; preds = %41, %11
  %43 = load i64, i64* %3, align 8
  %44 = load i64, i64* @__IA64_UNCACHED_OFFSET, align 8
  %45 = xor i64 %44, -1
  %46 = and i64 %43, %45
  %47 = load i32, i32* %4, align 4
  %48 = load i32, i32* @BTE_WACQUIRE, align 4
  %49 = load i32, i32* @BTE_ZERO_FILL, align 4
  %50 = or i32 %48, %49
  %51 = call i32 @bte_copy(i32 0, i64 %46, i32 %47, i32 %50, i32* null)
  store i32 %51, i32* %5, align 4
  br label %57

52:                                               ; preds = %2
  %53 = load i64, i64* %3, align 8
  %54 = inttoptr i64 %53 to i8*
  %55 = load i32, i32* %4, align 4
  %56 = call i32 @memset(i8* %54, i32 0, i32 %55)
  store i32 0, i32* %5, align 4
  br label %57

57:                                               ; preds = %52, %42
  %58 = load i32, i32* %5, align 4
  ret i32 %58
}

declare dso_local i64 @is_shub2(...) #1

declare dso_local i32 @nasid_to_cnodeid(i32) #1

declare dso_local i32 @get_node_number(i32) #1

declare dso_local i32 @__pa(i64) #1

declare dso_local i64 @TO_AMO(i32) #1

declare dso_local i32 @FETCHOP_LOAD_OP(i8*, i32) #1

declare dso_local i32 @bte_copy(i32, i64, i32, i32, i32*) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
