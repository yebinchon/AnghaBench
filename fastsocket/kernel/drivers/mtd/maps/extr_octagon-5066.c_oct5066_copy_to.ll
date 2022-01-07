; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_octagon-5066.c_oct5066_copy_to.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mtd/maps/extr_octagon-5066.c_oct5066_copy_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.map_info = type { i32 }

@WINDOW_LENGTH = common dso_local global i64 0, align 8
@WINDOW_MASK = common dso_local global i64 0, align 8
@oct5066_spin = common dso_local global i32 0, align 4
@iomapadr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.map_info*, i64, i8*, i64)* @oct5066_copy_to to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oct5066_copy_to(%struct.map_info* %0, i64 %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.map_info*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.map_info* %0, %struct.map_info** %5, align 8
  store i64 %1, i64* %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  br label %10

10:                                               ; preds = %28, %4
  %11 = load i64, i64* %8, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %49

13:                                               ; preds = %10
  %14 = load i64, i64* %8, align 8
  store i64 %14, i64* %9, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i64, i64* @WINDOW_LENGTH, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load i64, i64* @WINDOW_MASK, align 8
  %19 = and i64 %17, %18
  %20 = sub i64 %16, %19
  %21 = icmp ugt i64 %15, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %13
  %23 = load i64, i64* @WINDOW_LENGTH, align 8
  %24 = load i64, i64* %6, align 8
  %25 = load i64, i64* @WINDOW_MASK, align 8
  %26 = and i64 %24, %25
  %27 = sub i64 %23, %26
  store i64 %27, i64* %9, align 8
  br label %28

28:                                               ; preds = %22, %13
  %29 = call i32 @spin_lock(i32* @oct5066_spin)
  %30 = load %struct.map_info*, %struct.map_info** %5, align 8
  %31 = load i64, i64* %6, align 8
  %32 = call i32 @oct5066_page(%struct.map_info* %30, i64 %31)
  %33 = load i64, i64* @iomapadr, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %33, %34
  %36 = load i8*, i8** %7, align 8
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @memcpy_toio(i64 %35, i8* %36, i64 %37)
  %39 = call i32 @spin_unlock(i32* @oct5066_spin)
  %40 = load i64, i64* %9, align 8
  %41 = load i64, i64* %6, align 8
  %42 = add i64 %41, %40
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %9, align 8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr i8, i8* %44, i64 %43
  store i8* %45, i8** %7, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* %8, align 8
  %48 = sub i64 %47, %46
  store i64 %48, i64* %8, align 8
  br label %10

49:                                               ; preds = %10
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @oct5066_page(%struct.map_info*, i64) #1

declare dso_local i32 @memcpy_toio(i64, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
