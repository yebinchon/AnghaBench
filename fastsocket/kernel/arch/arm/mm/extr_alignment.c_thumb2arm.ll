; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_thumb2arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mm/extr_alignment.c_thumb2arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@thumb2arm.subset = internal constant [8 x i32] [i32 -411041792, i32 -511704912, i32 -406847488, i32 -510656304, i32 -409993216, i32 -510656336, i32 -405798912, i32 -510656272], align 16
@thumb2arm.subset.1 = internal constant [4 x i32] [i32 -382926848, i32 -382910464, i32 -390266880, i32 -390234112], align 16
@BAD_INSTR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32)* @thumb2arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @thumb2arm(i32 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = and i32 %7, 2048
  %9 = ashr i32 %8, 11
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %3, align 4
  %11 = and i32 %10, 63488
  %12 = ashr i32 %11, 11
  switch i32 %12, label %148 [
    i32 12, label %13
    i32 13, label %13
    i32 14, label %13
    i32 15, label %13
    i32 16, label %40
    i32 17, label %40
    i32 10, label %61
    i32 11, label %61
    i32 9, label %81
    i32 18, label %91
    i32 19, label %91
    i32 24, label %104
    i32 25, label %104
    i32 22, label %129
    i32 23, label %129
  ]

13:                                               ; preds = %1, %1, %1, %1
  %14 = load i32, i32* %3, align 4
  %15 = and i32 %14, 4096
  %16 = shl i32 %15, 10
  %17 = or i32 -444596224, %16
  %18 = load i32, i32* %4, align 4
  %19 = shl i32 %18, 20
  %20 = or i32 %17, %19
  %21 = load i32, i32* %3, align 4
  %22 = and i32 %21, 7
  %23 = shl i32 %22, 12
  %24 = or i32 %20, %23
  %25 = load i32, i32* %3, align 4
  %26 = and i32 %25, 56
  %27 = shl i32 %26, 13
  %28 = or i32 %24, %27
  %29 = load i32, i32* %3, align 4
  %30 = and i32 %29, 1984
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 4096
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 0, i32 2
  %36 = sub nsw i32 6, %35
  %37 = ashr i32 %30, %36
  %38 = or i32 %28, %37
  %39 = zext i32 %38 to i64
  store i64 %39, i64* %2, align 8
  br label %150

40:                                               ; preds = %1, %1
  %41 = load i32, i32* %4, align 4
  %42 = shl i32 %41, 20
  %43 = or i32 -507510608, %42
  %44 = load i32, i32* %3, align 4
  %45 = and i32 %44, 7
  %46 = shl i32 %45, 12
  %47 = or i32 %43, %46
  %48 = load i32, i32* %3, align 4
  %49 = and i32 %48, 56
  %50 = shl i32 %49, 13
  %51 = or i32 %47, %50
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 448
  %54 = ashr i32 %53, 5
  %55 = or i32 %51, %54
  %56 = load i32, i32* %3, align 4
  %57 = and i32 %56, 1536
  %58 = ashr i32 %57, 1
  %59 = or i32 %55, %58
  %60 = zext i32 %59 to i64
  store i64 %60, i64* %2, align 8
  br label %150

61:                                               ; preds = %1, %1
  %62 = load i32, i32* %3, align 4
  %63 = and i32 %62, 3584
  %64 = ashr i32 %63, 9
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds [8 x i32], [8 x i32]* @thumb2arm.subset, i64 0, i64 %65
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* %3, align 4
  %69 = and i32 %68, 7
  %70 = shl i32 %69, 12
  %71 = or i32 %67, %70
  %72 = load i32, i32* %3, align 4
  %73 = and i32 %72, 56
  %74 = shl i32 %73, 13
  %75 = or i32 %71, %74
  %76 = load i32, i32* %3, align 4
  %77 = and i32 %76, 448
  %78 = ashr i32 %77, 6
  %79 = or i32 %75, %78
  %80 = sext i32 %79 to i64
  store i64 %80, i64* %2, align 8
  br label %150

81:                                               ; preds = %1
  %82 = load i32, i32* %3, align 4
  %83 = and i32 %82, 1792
  %84 = shl i32 %83, 4
  %85 = or i32 -442564608, %84
  %86 = load i32, i32* %3, align 4
  %87 = and i32 %86, 255
  %88 = shl i32 %87, 2
  %89 = or i32 %85, %88
  %90 = zext i32 %89 to i64
  store i64 %90, i64* %2, align 8
  br label %150

91:                                               ; preds = %1, %1
  %92 = load i32, i32* %4, align 4
  %93 = shl i32 %92, 20
  %94 = or i32 -443744256, %93
  %95 = load i32, i32* %3, align 4
  %96 = and i32 %95, 1792
  %97 = shl i32 %96, 4
  %98 = or i32 %94, %97
  %99 = load i32, i32* %3, align 4
  %100 = and i32 %99, 255
  %101 = shl i32 %100, 2
  %102 = or i32 %98, %101
  %103 = zext i32 %102 to i64
  store i64 %103, i64* %2, align 8
  br label %150

104:                                              ; preds = %1, %1
  %105 = load i32, i32* %3, align 4
  %106 = and i32 %105, 1792
  %107 = ashr i32 %106, 8
  store i32 %107, i32* %5, align 4
  %108 = load i32, i32* %4, align 4
  %109 = load i32, i32* %5, align 4
  %110 = shl i32 %108, %109
  %111 = load i32, i32* %3, align 4
  %112 = and i32 %111, 255
  %113 = and i32 %110, %112
  %114 = icmp ne i32 %113, 0
  %115 = zext i1 %114 to i64
  %116 = select i1 %114, i32 0, i32 2097152
  store i32 %116, i32* %6, align 4
  %117 = load i32, i32* %6, align 4
  %118 = or i32 -394264576, %117
  %119 = load i32, i32* %4, align 4
  %120 = shl i32 %119, 20
  %121 = or i32 %118, %120
  %122 = load i32, i32* %5, align 4
  %123 = shl i32 %122, 16
  %124 = or i32 %121, %123
  %125 = load i32, i32* %3, align 4
  %126 = and i32 %125, 255
  %127 = or i32 %124, %126
  %128 = zext i32 %127 to i64
  store i64 %128, i64* %2, align 8
  br label %150

129:                                              ; preds = %1, %1
  %130 = load i32, i32* %3, align 4
  %131 = and i32 %130, 1536
  %132 = icmp eq i32 %131, 1024
  br i1 %132, label %133, label %147

133:                                              ; preds = %129
  %134 = load i32, i32* %4, align 4
  %135 = shl i32 %134, 1
  %136 = load i32, i32* %3, align 4
  %137 = and i32 %136, 256
  %138 = ashr i32 %137, 8
  %139 = or i32 %135, %138
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* @thumb2arm.subset.1, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = load i32, i32* %3, align 4
  %144 = and i32 %143, 255
  %145 = or i32 %142, %144
  %146 = sext i32 %145 to i64
  store i64 %146, i64* %2, align 8
  br label %150

147:                                              ; preds = %129
  br label %148

148:                                              ; preds = %1, %147
  %149 = load i64, i64* @BAD_INSTR, align 8
  store i64 %149, i64* %2, align 8
  br label %150

150:                                              ; preds = %148, %133, %104, %91, %81, %61, %40, %13
  %151 = load i64, i64* %2, align 8
  ret i64 %151
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
