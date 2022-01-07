; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_sgbuf2.c_sg_dwiter_get_next_block.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/cb710/extr_sgbuf2.c_sg_dwiter_get_next_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sg_mapping_iter = type { i64, i64, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sg_mapping_iter*, i32**)* @sg_dwiter_get_next_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sg_dwiter_get_next_block(%struct.sg_mapping_iter* %0, i32** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sg_mapping_iter*, align 8
  %5 = alloca i32**, align 8
  %6 = alloca i64, align 8
  store %struct.sg_mapping_iter* %0, %struct.sg_mapping_iter** %4, align 8
  store i32** %1, i32*** %5, align 8
  %7 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %8 = call i64 @sg_dwiter_is_at_end(%struct.sg_mapping_iter* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %51

11:                                               ; preds = %2
  %12 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %13 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %16 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = sub i64 %14, %17
  store i64 %18, i64* %6, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp uge i64 %19, 4
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %23 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %26 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = getelementptr inbounds i32, i32* %24, i64 %27
  %29 = call i32 @needs_unaligned_copy(i32* %28)
  %30 = icmp ne i32 %29, 0
  %31 = xor i1 %30, true
  br label %32

32:                                               ; preds = %21, %11
  %33 = phi i1 [ false, %11 ], [ %31, %21 ]
  %34 = zext i1 %33 to i32
  %35 = call i64 @likely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %39 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %42 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32**, i32*** %5, align 8
  store i32* %44, i32** %45, align 8
  %46 = load %struct.sg_mapping_iter*, %struct.sg_mapping_iter** %4, align 8
  %47 = getelementptr inbounds %struct.sg_mapping_iter, %struct.sg_mapping_iter* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = add i64 %48, 4
  store i64 %49, i64* %47, align 8
  store i32 1, i32* %3, align 4
  br label %51

50:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %50, %37, %10
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i64 @sg_dwiter_is_at_end(%struct.sg_mapping_iter*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @needs_unaligned_copy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
