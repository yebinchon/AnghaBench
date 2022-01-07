; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_visemul.c_array.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sparc/kernel/extr_visemul.c_array.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pt_regs*, i32, i32)* @array to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @array(%struct.pt_regs* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pt_regs*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pt_regs* %0, %struct.pt_regs** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @RS1(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @RS2(i32 %14)
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @RD(i32 %16)
  %18 = call i32 @maybe_flush_windows(i32 %13, i32 %15, i32 %17, i32 0)
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @RS1(i32 %19)
  %21 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %22 = call i64 @fetch_reg(i32 %20, %struct.pt_regs* %21)
  store i64 %22, i64* %7, align 8
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @RS2(i32 %23)
  %25 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %26 = call i64 @fetch_reg(i32 %24, %struct.pt_regs* %25)
  store i64 %26, i64* %8, align 8
  %27 = load i64, i64* %8, align 8
  %28 = icmp ugt i64 %27, 5
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  br label %32

30:                                               ; preds = %3
  %31 = load i64, i64* %8, align 8
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i64 [ 5, %29 ], [ %31, %30 ]
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = shl i64 1, %36
  %38 = sub i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %11, align 4
  %40 = load i64, i64* %7, align 8
  %41 = lshr i64 %40, 11
  %42 = and i64 %41, 3
  %43 = shl i64 %42, 0
  %44 = load i64, i64* %7, align 8
  %45 = lshr i64 %44, 33
  %46 = and i64 %45, 3
  %47 = shl i64 %46, 2
  %48 = or i64 %43, %47
  %49 = load i64, i64* %7, align 8
  %50 = lshr i64 %49, 55
  %51 = and i64 %50, 1
  %52 = shl i64 %51, 4
  %53 = or i64 %48, %52
  %54 = load i64, i64* %7, align 8
  %55 = lshr i64 %54, 13
  %56 = and i64 %55, 15
  %57 = shl i64 %56, 5
  %58 = or i64 %53, %57
  %59 = load i64, i64* %7, align 8
  %60 = lshr i64 %59, 35
  %61 = and i64 %60, 15
  %62 = shl i64 %61, 9
  %63 = or i64 %58, %62
  %64 = load i64, i64* %7, align 8
  %65 = lshr i64 %64, 56
  %66 = and i64 %65, 15
  %67 = shl i64 %66, 13
  %68 = or i64 %63, %67
  %69 = load i64, i64* %7, align 8
  %70 = lshr i64 %69, 17
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = and i64 %70, %72
  %74 = shl i64 %73, 17
  %75 = or i64 %68, %74
  %76 = load i64, i64* %7, align 8
  %77 = lshr i64 %76, 39
  %78 = load i32, i32* %11, align 4
  %79 = zext i32 %78 to i64
  %80 = and i64 %77, %79
  %81 = load i32, i32* %10, align 4
  %82 = add i32 17, %81
  %83 = zext i32 %82 to i64
  %84 = shl i64 %80, %83
  %85 = or i64 %75, %84
  %86 = load i64, i64* %7, align 8
  %87 = lshr i64 %86, 60
  %88 = and i64 %87, 15
  %89 = load i32, i32* %10, align 4
  %90 = mul i32 2, %89
  %91 = add i32 17, %90
  %92 = zext i32 %91 to i64
  %93 = shl i64 %88, %92
  %94 = or i64 %85, %93
  store i64 %94, i64* %9, align 8
  %95 = load i32, i32* %6, align 4
  switch i32 %95, label %102 [
    i32 129, label %96
    i32 128, label %99
  ]

96:                                               ; preds = %32
  %97 = load i64, i64* %9, align 8
  %98 = shl i64 %97, 1
  store i64 %98, i64* %9, align 8
  br label %102

99:                                               ; preds = %32
  %100 = load i64, i64* %9, align 8
  %101 = shl i64 %100, 2
  store i64 %101, i64* %9, align 8
  br label %102

102:                                              ; preds = %99, %32, %96
  %103 = load %struct.pt_regs*, %struct.pt_regs** %4, align 8
  %104 = load i64, i64* %9, align 8
  %105 = load i32, i32* %5, align 4
  %106 = call i32 @RD(i32 %105)
  %107 = call i32 @store_reg(%struct.pt_regs* %103, i64 %104, i32 %106)
  ret void
}

declare dso_local i32 @maybe_flush_windows(i32, i32, i32, i32) #1

declare dso_local i32 @RS1(i32) #1

declare dso_local i32 @RS2(i32) #1

declare dso_local i32 @RD(i32) #1

declare dso_local i64 @fetch_reg(i32, %struct.pt_regs*) #1

declare dso_local i32 @store_reg(%struct.pt_regs*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
