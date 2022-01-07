; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_set_psize.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_slice.c_slice_set_psize.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mm_struct = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@slice_convert_lock = common dso_local global i32 0, align 4
@SLICE_LOW_TOP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @slice_set_psize(%struct.mm_struct* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.mm_struct*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  store %struct.mm_struct* %0, %struct.mm_struct** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i64, i64* %8, align 8
  %11 = call i32 @spin_lock_irqsave(i32* @slice_convert_lock, i64 %10)
  %12 = load i64, i64* %5, align 8
  %13 = load i64, i64* @SLICE_LOW_TOP, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load i64, i64* %5, align 8
  %17 = call i64 @GET_LOW_SLICE_INDEX(i64 %16)
  store i64 %17, i64* %7, align 8
  %18 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %19 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* %20, i32** %9, align 8
  br label %27

21:                                               ; preds = %3
  %22 = load i64, i64* %5, align 8
  %23 = call i64 @GET_HIGH_SLICE_INDEX(i64 %22)
  store i64 %23, i64* %7, align 8
  %24 = load %struct.mm_struct*, %struct.mm_struct** %4, align 8
  %25 = getelementptr inbounds %struct.mm_struct, %struct.mm_struct* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  store i32* %26, i32** %9, align 8
  br label %27

27:                                               ; preds = %21, %15
  %28 = load i32*, i32** %9, align 8
  %29 = load i32, i32* %28, align 4
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = mul i64 %31, 4
  %33 = shl i64 15, %32
  %34 = xor i64 %33, -1
  %35 = and i64 %30, %34
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = load i64, i64* %7, align 8
  %39 = mul i64 %38, 4
  %40 = shl i64 %37, %39
  %41 = or i64 %35, %40
  %42 = trunc i64 %41 to i32
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  %44 = load i64, i64* %8, align 8
  %45 = call i32 @spin_unlock_irqrestore(i32* @slice_convert_lock, i64 %44)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @GET_LOW_SLICE_INDEX(i64) #1

declare dso_local i64 @GET_HIGH_SLICE_INDEX(i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
