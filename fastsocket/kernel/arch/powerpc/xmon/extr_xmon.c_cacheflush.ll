; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_cacheflush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/xmon/extr_xmon.c_cacheflush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@termch = common dso_local global i8 0, align 1
@adrs = common dso_local global i64 0, align 8
@L1_CACHE_BYTES = common dso_local global i64 0, align 8
@bus_error_jmp = common dso_local global i32 0, align 4
@catch_memory_errors = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cacheflush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cacheflush() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = call i32 (...) @inchar()
  store i32 %3, i32* %1, align 4
  %4 = load i32, i32* %1, align 4
  %5 = icmp ne i32 %4, 105
  br i1 %5, label %6, label %9

6:                                                ; preds = %0
  %7 = load i32, i32* %1, align 4
  %8 = trunc i32 %7 to i8
  store i8 %8, i8* @termch, align 1
  br label %9

9:                                                ; preds = %6, %0
  %10 = call i32 @scanhex(i64* @adrs)
  %11 = load i8, i8* @termch, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 10
  br i1 %13, label %14, label %15

14:                                               ; preds = %9
  store i8 0, i8* @termch, align 1
  br label %15

15:                                               ; preds = %14, %9
  store i64 1, i64* %2, align 8
  %16 = call i32 @scanhex(i64* %2)
  %17 = load i64, i64* %2, align 8
  %18 = load i64, i64* @L1_CACHE_BYTES, align 8
  %19 = add i64 %17, %18
  %20 = sub i64 %19, 1
  %21 = load i64, i64* @L1_CACHE_BYTES, align 8
  %22 = udiv i64 %20, %21
  store i64 %22, i64* %2, align 8
  %23 = load i32, i32* @bus_error_jmp, align 4
  %24 = call i64 @setjmp(i32 %23) #3
  %25 = icmp eq i64 %24, 0
  br i1 %25, label %26, label %63

26:                                               ; preds = %15
  store i32 1, i32* @catch_memory_errors, align 4
  %27 = call i32 (...) @sync()
  %28 = load i32, i32* %1, align 4
  %29 = icmp ne i32 %28, 105
  br i1 %29, label %30, label %45

30:                                               ; preds = %26
  br label %31

31:                                               ; preds = %38, %30
  %32 = load i64, i64* %2, align 8
  %33 = icmp ugt i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %31
  %35 = load i64, i64* @adrs, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = call i32 @cflush(i8* %36)
  br label %38

38:                                               ; preds = %34
  %39 = load i64, i64* %2, align 8
  %40 = add i64 %39, -1
  store i64 %40, i64* %2, align 8
  %41 = load i64, i64* @L1_CACHE_BYTES, align 8
  %42 = load i64, i64* @adrs, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* @adrs, align 8
  br label %31

44:                                               ; preds = %31
  br label %60

45:                                               ; preds = %26
  br label %46

46:                                               ; preds = %53, %45
  %47 = load i64, i64* %2, align 8
  %48 = icmp ugt i64 %47, 0
  br i1 %48, label %49, label %59

49:                                               ; preds = %46
  %50 = load i64, i64* @adrs, align 8
  %51 = inttoptr i64 %50 to i8*
  %52 = call i32 @cinval(i8* %51)
  br label %53

53:                                               ; preds = %49
  %54 = load i64, i64* %2, align 8
  %55 = add i64 %54, -1
  store i64 %55, i64* %2, align 8
  %56 = load i64, i64* @L1_CACHE_BYTES, align 8
  %57 = load i64, i64* @adrs, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* @adrs, align 8
  br label %46

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %44
  %61 = call i32 (...) @sync()
  %62 = call i32 @__delay(i32 200)
  br label %63

63:                                               ; preds = %60, %15
  store i32 0, i32* @catch_memory_errors, align 4
  ret void
}

declare dso_local i32 @inchar(...) #1

declare dso_local i32 @scanhex(i64*) #1

; Function Attrs: returns_twice
declare dso_local i64 @setjmp(i32) #2

declare dso_local i32 @sync(...) #1

declare dso_local i32 @cflush(i8*) #1

declare dso_local i32 @cinval(i8*) #1

declare dso_local i32 @__delay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { returns_twice "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { returns_twice }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
