; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_set_bitmap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/persistent-data/extr_dm-space-map-common.c_sm_set_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@ENTRIES_SHIFT = common dso_local global i32 0, align 4
@ENTRIES_PER_WORD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32, i32)* @sm_set_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sm_set_bitmap(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i8*, i8** %4, align 8
  %10 = bitcast i8* %9 to i32*
  store i32* %10, i32** %7, align 8
  %11 = load i32*, i32** %7, align 8
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @ENTRIES_SHIFT, align 4
  %14 = lshr i32 %12, %13
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds i32, i32* %11, i64 %15
  store i32* %16, i32** %8, align 8
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* @ENTRIES_PER_WORD, align 4
  %19 = sub nsw i32 %18, 1
  %20 = and i32 %17, %19
  %21 = shl i32 %20, 1
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %6, align 4
  %23 = and i32 %22, 2
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %30

25:                                               ; preds = %3
  %26 = load i32, i32* %5, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = call i32 @__set_bit_le(i32 %26, i8* %28)
  br label %35

30:                                               ; preds = %3
  %31 = load i32, i32* %5, align 4
  %32 = load i32*, i32** %8, align 8
  %33 = bitcast i32* %32 to i8*
  %34 = call i32 @__clear_bit_le(i32 %31, i8* %33)
  br label %35

35:                                               ; preds = %30, %25
  %36 = load i32, i32* %6, align 4
  %37 = and i32 %36, 1
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %35
  %40 = load i32, i32* %5, align 4
  %41 = add i32 %40, 1
  %42 = load i32*, i32** %8, align 8
  %43 = bitcast i32* %42 to i8*
  %44 = call i32 @__set_bit_le(i32 %41, i8* %43)
  br label %51

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = add i32 %46, 1
  %48 = load i32*, i32** %8, align 8
  %49 = bitcast i32* %48 to i8*
  %50 = call i32 @__clear_bit_le(i32 %47, i8* %49)
  br label %51

51:                                               ; preds = %45, %39
  ret void
}

declare dso_local i32 @__set_bit_le(i32, i8*) #1

declare dso_local i32 @__clear_bit_le(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
