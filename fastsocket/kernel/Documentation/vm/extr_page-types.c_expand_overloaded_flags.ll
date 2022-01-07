; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_expand_overloaded_flags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/vm/extr_page-types.c_expand_overloaded_flags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SLAB = common dso_local global i32 0, align 4
@PRIVATE = common dso_local global i32 0, align 4
@SLOB_FREE = common dso_local global i32 0, align 4
@ACTIVE = common dso_local global i32 0, align 4
@SLUB_FROZEN = common dso_local global i32 0, align 4
@ERROR = common dso_local global i32 0, align 4
@SLUB_DEBUG = common dso_local global i32 0, align 4
@RECLAIM = common dso_local global i32 0, align 4
@WRITEBACK = common dso_local global i32 0, align 4
@READAHEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @expand_overloaded_flags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @expand_overloaded_flags(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* %2, align 4
  %4 = load i32, i32* @SLAB, align 4
  %5 = call i32 @BIT(i32 %4)
  %6 = and i32 %3, %5
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %51

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = load i32, i32* @PRIVATE, align 4
  %11 = call i32 @BIT(i32 %10)
  %12 = and i32 %9, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %8
  %15 = load i32, i32* @PRIVATE, align 4
  %16 = call i32 @BIT(i32 %15)
  %17 = load i32, i32* @SLOB_FREE, align 4
  %18 = call i32 @BIT(i32 %17)
  %19 = or i32 %16, %18
  %20 = load i32, i32* %2, align 4
  %21 = xor i32 %20, %19
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %14, %8
  %23 = load i32, i32* %2, align 4
  %24 = load i32, i32* @ACTIVE, align 4
  %25 = call i32 @BIT(i32 %24)
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %22
  %29 = load i32, i32* @ACTIVE, align 4
  %30 = call i32 @BIT(i32 %29)
  %31 = load i32, i32* @SLUB_FROZEN, align 4
  %32 = call i32 @BIT(i32 %31)
  %33 = or i32 %30, %32
  %34 = load i32, i32* %2, align 4
  %35 = xor i32 %34, %33
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %28, %22
  %37 = load i32, i32* %2, align 4
  %38 = load i32, i32* @ERROR, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = and i32 %37, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %50

42:                                               ; preds = %36
  %43 = load i32, i32* @ERROR, align 4
  %44 = call i32 @BIT(i32 %43)
  %45 = load i32, i32* @SLUB_DEBUG, align 4
  %46 = call i32 @BIT(i32 %45)
  %47 = or i32 %44, %46
  %48 = load i32, i32* %2, align 4
  %49 = xor i32 %48, %47
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %42, %36
  br label %51

51:                                               ; preds = %50, %1
  %52 = load i32, i32* %2, align 4
  %53 = load i32, i32* @RECLAIM, align 4
  %54 = call i32 @BIT(i32 %53)
  %55 = load i32, i32* @WRITEBACK, align 4
  %56 = call i32 @BIT(i32 %55)
  %57 = or i32 %54, %56
  %58 = and i32 %52, %57
  %59 = load i32, i32* @RECLAIM, align 4
  %60 = call i32 @BIT(i32 %59)
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %70

62:                                               ; preds = %51
  %63 = load i32, i32* @RECLAIM, align 4
  %64 = call i32 @BIT(i32 %63)
  %65 = load i32, i32* @READAHEAD, align 4
  %66 = call i32 @BIT(i32 %65)
  %67 = or i32 %64, %66
  %68 = load i32, i32* %2, align 4
  %69 = xor i32 %68, %67
  store i32 %69, i32* %2, align 4
  br label %70

70:                                               ; preds = %62, %51
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
