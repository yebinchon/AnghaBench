; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_xlbd_reserve_minors.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_xen-blkfront.c_xlbd_reserve_minors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@nr_minors = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@minor_lock = common dso_local global i32 0, align 4
@minors = common dso_local global i64* null, align 8
@BITS_PER_LONG = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @xlbd_reserve_minors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xlbd_reserve_minors(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64*, align 8
  %9 = alloca i64*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = add i32 %10, %11
  store i32 %12, i32* %6, align 4
  %13 = load i32, i32* %6, align 4
  %14 = load i32, i32* @nr_minors, align 4
  %15 = icmp ugt i32 %13, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @BITS_TO_LONGS(i32 %17)
  %19 = sext i32 %18 to i64
  %20 = mul i64 %19, 8
  %21 = trunc i64 %20 to i32
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i64* @kzalloc(i32 %21, i32 %22)
  store i64* %23, i64** %8, align 8
  %24 = load i64*, i64** %8, align 8
  %25 = icmp eq i64* %24, null
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %82

29:                                               ; preds = %16
  %30 = call i32 @spin_lock(i32* @minor_lock)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @nr_minors, align 4
  %33 = icmp ugt i32 %31, %32
  br i1 %33, label %34, label %49

34:                                               ; preds = %29
  %35 = load i64*, i64** @minors, align 8
  store i64* %35, i64** %9, align 8
  %36 = load i64*, i64** %8, align 8
  %37 = load i64*, i64** @minors, align 8
  %38 = load i32, i32* @nr_minors, align 4
  %39 = call i32 @BITS_TO_LONGS(i32 %38)
  %40 = sext i32 %39 to i64
  %41 = mul i64 %40, 8
  %42 = trunc i64 %41 to i32
  %43 = call i32 @memcpy(i64* %36, i64* %37, i32 %42)
  %44 = load i64*, i64** %8, align 8
  store i64* %44, i64** @minors, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @BITS_TO_LONGS(i32 %45)
  %47 = load i32, i32* @BITS_PER_LONG, align 4
  %48 = mul nsw i32 %46, %47
  store i32 %48, i32* @nr_minors, align 4
  br label %51

49:                                               ; preds = %29
  %50 = load i64*, i64** %8, align 8
  store i64* %50, i64** %9, align 8
  br label %51

51:                                               ; preds = %49, %34
  %52 = call i32 @spin_unlock(i32* @minor_lock)
  %53 = load i64*, i64** %9, align 8
  %54 = call i32 @kfree(i64* %53)
  br label %55

55:                                               ; preds = %51, %2
  %56 = call i32 @spin_lock(i32* @minor_lock)
  %57 = load i64*, i64** @minors, align 8
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @find_next_bit(i64* %57, i32 %58, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = icmp uge i32 %60, %61
  br i1 %62, label %63, label %76

63:                                               ; preds = %55
  br label %64

64:                                               ; preds = %72, %63
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ult i32 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i64*, i64** @minors, align 8
  %71 = call i32 @__set_bit(i32 %69, i64* %70)
  br label %72

72:                                               ; preds = %68
  %73 = load i32, i32* %4, align 4
  %74 = add i32 %73, 1
  store i32 %74, i32* %4, align 4
  br label %64

75:                                               ; preds = %64
  store i32 0, i32* %7, align 4
  br label %79

76:                                               ; preds = %55
  %77 = load i32, i32* @EBUSY, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %7, align 4
  br label %79

79:                                               ; preds = %76, %75
  %80 = call i32 @spin_unlock(i32* @minor_lock)
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %79, %26
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local i64* @kzalloc(i32, i32) #1

declare dso_local i32 @BITS_TO_LONGS(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(i64*) #1

declare dso_local i32 @find_next_bit(i64*, i32, i32) #1

declare dso_local i32 @__set_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
