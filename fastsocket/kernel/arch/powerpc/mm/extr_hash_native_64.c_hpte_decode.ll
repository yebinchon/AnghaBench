; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_hpte_decode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_native_64.c_hpte_decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.hash_pte = type { i64, i64 }

@HPTE_V_LARGE = common dso_local global i64 0, align 8
@MMU_PAGE_4K = common dso_local global i32 0, align 4
@LP_BITS = common dso_local global i32 0, align 4
@LP_SHIFT = common dso_local global i64 0, align 8
@MMU_PAGE_COUNT = common dso_local global i32 0, align 4
@mmu_psize_defs = common dso_local global %struct.TYPE_2__* null, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@HPTE_V_SECONDARY = common dso_local global i64 0, align 8
@HPTE_V_SSIZE_SHIFT = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hash_pte*, i64, i32*, i32*, i64*)* @hpte_decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hpte_decode(%struct.hash_pte* %0, i64 %1, i32* %2, i32* %3, i64* %4) #0 {
  %6 = alloca %struct.hash_pte*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  store %struct.hash_pte* %0, %struct.hash_pte** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i64* %4, i64** %10, align 8
  %21 = load %struct.hash_pte*, %struct.hash_pte** %6, align 8
  %22 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  store i64 %23, i64* %11, align 8
  %24 = load %struct.hash_pte*, %struct.hash_pte** %6, align 8
  %25 = getelementptr inbounds %struct.hash_pte, %struct.hash_pte* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %12, align 8
  %28 = load i64, i64* @HPTE_V_LARGE, align 8
  %29 = and i64 %27, %28
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %5
  %32 = load i32, i32* @MMU_PAGE_4K, align 4
  store i32 %32, i32* %15, align 4
  br label %93

33:                                               ; preds = %5
  store i32 0, i32* %14, align 4
  br label %34

34:                                               ; preds = %50, %33
  %35 = load i32, i32* %14, align 4
  %36 = load i32, i32* @LP_BITS, align 4
  %37 = icmp slt i32 %35, %36
  br i1 %37, label %38, label %53

38:                                               ; preds = %34
  %39 = load i64, i64* %11, align 8
  %40 = load i32, i32* %14, align 4
  %41 = add nsw i32 %40, 1
  %42 = call i64 @LP_MASK(i32 %41)
  %43 = and i64 %39, %42
  %44 = load i32, i32* %14, align 4
  %45 = add nsw i32 %44, 1
  %46 = call i64 @LP_MASK(i32 %45)
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %53

49:                                               ; preds = %38
  br label %50

50:                                               ; preds = %49
  %51 = load i32, i32* %14, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %14, align 4
  br label %34

53:                                               ; preds = %48, %34
  %54 = load i32, i32* %14, align 4
  %55 = add nsw i32 %54, 1
  %56 = call i64 @LP_MASK(i32 %55)
  %57 = load i64, i64* @LP_SHIFT, align 8
  %58 = lshr i64 %56, %57
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %17, align 4
  store i32 0, i32* %15, align 4
  br label %60

60:                                               ; preds = %89, %53
  %61 = load i32, i32* %15, align 4
  %62 = load i32, i32* @MMU_PAGE_COUNT, align 4
  %63 = icmp slt i32 %61, %62
  br i1 %63, label %64, label %92

64:                                               ; preds = %60
  %65 = load i32, i32* %15, align 4
  %66 = load i32, i32* @MMU_PAGE_4K, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64
  br label %89

69:                                               ; preds = %64
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %71 = load i32, i32* %15, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %69
  br label %89

78:                                               ; preds = %69
  %79 = load i32, i32* %17, align 4
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %81 = load i32, i32* %15, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp eq i32 %79, %85
  br i1 %86, label %87, label %88

87:                                               ; preds = %78
  br label %92

88:                                               ; preds = %78
  br label %89

89:                                               ; preds = %88, %77, %68
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  br label %60

92:                                               ; preds = %87, %60
  br label %93

93:                                               ; preds = %92, %31
  %94 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %95 = load i32, i32* %15, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  store i32 %99, i32* %16, align 4
  %100 = load i64, i64* %12, align 8
  %101 = call i32 @HPTE_V_AVPN_VAL(i64 %100)
  %102 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %103 = load i32, i32* %15, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = xor i32 %107, -1
  %109 = and i32 %101, %108
  %110 = shl i32 %109, 23
  %111 = sext i32 %110 to i64
  store i64 %111, i64* %13, align 8
  %112 = load i32, i32* %16, align 4
  %113 = icmp slt i32 %112, 23
  br i1 %113, label %114, label %160

114:                                              ; preds = %93
  %115 = load i64, i64* %7, align 8
  %116 = load i64, i64* @HPTES_PER_GROUP, align 8
  %117 = udiv i64 %115, %116
  store i64 %117, i64* %20, align 8
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* @HPTE_V_SECONDARY, align 8
  %120 = and i64 %118, %119
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %114
  %123 = load i64, i64* %20, align 8
  %124 = xor i64 %123, -1
  store i64 %124, i64* %20, align 8
  br label %125

125:                                              ; preds = %122, %114
  %126 = load i64, i64* %12, align 8
  %127 = load i64, i64* @HPTE_V_SSIZE_SHIFT, align 8
  %128 = lshr i64 %126, %127
  switch i64 %128, label %147 [
    i64 128, label %129
    i64 129, label %136
  ]

129:                                              ; preds = %125
  %130 = load i64, i64* %13, align 8
  %131 = lshr i64 %130, 28
  %132 = load i64, i64* %20, align 8
  %133 = xor i64 %131, %132
  %134 = load i64, i64* @htab_hash_mask, align 8
  %135 = and i64 %133, %134
  store i64 %135, i64* %18, align 8
  br label %148

136:                                              ; preds = %125
  %137 = load i64, i64* %13, align 8
  %138 = lshr i64 %137, 40
  store i64 %138, i64* %19, align 8
  %139 = load i64, i64* %19, align 8
  %140 = load i64, i64* %19, align 8
  %141 = shl i64 %140, 25
  %142 = xor i64 %139, %141
  %143 = load i64, i64* %20, align 8
  %144 = xor i64 %142, %143
  %145 = load i64, i64* @htab_hash_mask, align 8
  %146 = and i64 %144, %145
  store i64 %146, i64* %18, align 8
  br label %148

147:                                              ; preds = %125
  store i32 0, i32* %15, align 4
  store i64 0, i64* %18, align 8
  store i64 0, i64* %13, align 8
  br label %148

148:                                              ; preds = %147, %136, %129
  %149 = load i64, i64* %18, align 8
  %150 = load %struct.TYPE_2__*, %struct.TYPE_2__** @mmu_psize_defs, align 8
  %151 = load i32, i32* %15, align 4
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %150, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 4
  %156 = zext i32 %155 to i64
  %157 = shl i64 %149, %156
  %158 = load i64, i64* %13, align 8
  %159 = or i64 %158, %157
  store i64 %159, i64* %13, align 8
  br label %160

160:                                              ; preds = %148, %93
  %161 = load i64, i64* %13, align 8
  %162 = load i64*, i64** %10, align 8
  store i64 %161, i64* %162, align 8
  %163 = load i32, i32* %15, align 4
  %164 = load i32*, i32** %8, align 8
  store i32 %163, i32* %164, align 4
  %165 = load i64, i64* %12, align 8
  %166 = load i64, i64* @HPTE_V_SSIZE_SHIFT, align 8
  %167 = lshr i64 %165, %166
  %168 = trunc i64 %167 to i32
  %169 = load i32*, i32** %9, align 8
  store i32 %168, i32* %169, align 4
  ret void
}

declare dso_local i64 @LP_MASK(i32) #1

declare dso_local i32 @HPTE_V_AVPN_VAL(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
