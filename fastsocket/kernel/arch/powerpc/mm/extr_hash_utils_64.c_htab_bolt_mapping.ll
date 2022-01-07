; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_utils_64.c_htab_bolt_mapping.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/mm/extr_hash_utils_64.c_htab_bolt_mapping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 (i64, i64, i64, i64, i32, i32, i32)* }

@mmu_psize_defs = common dso_local global %struct.TYPE_4__* null, align 8
@.str = private unnamed_addr constant [47 x i8] c"htab_bolt_mapping(%lx..%lx -> %lx (%lx,%d,%d)\0A\00", align 1
@HPTE_R_N = common dso_local global i64 0, align 8
@htab_hash_mask = common dso_local global i64 0, align 8
@HPTES_PER_GROUP = common dso_local global i64 0, align 8
@ppc_md = common dso_local global %struct.TYPE_3__ zeroinitializer, align 8
@HPTE_V_BOLTED = common dso_local global i32 0, align 4
@PAGE_SHIFT = common dso_local global i64 0, align 8
@linear_map_hash_count = common dso_local global i64 0, align 8
@linear_map_hash_slots = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @htab_bolt_mapping(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i64 %0, i64* %7, align 8
  store i64 %1, i64* %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %17, align 4
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** @mmu_psize_defs, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = shl i32 1, %29
  store i32 %30, i32* %15, align 4
  %31 = load i64, i64* %10, align 8
  %32 = call i64 @htab_convert_pte_flags(i64 %31)
  store i64 %32, i64* %10, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* %10, align 8
  %37 = load i32, i32* %11, align 4
  %38 = load i32, i32* %12, align 4
  %39 = call i32 @DBG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i64 %33, i64 %34, i64 %35, i64 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %7, align 8
  store i64 %40, i64* %13, align 8
  %41 = load i64, i64* %9, align 8
  store i64 %41, i64* %14, align 8
  br label %42

42:                                               ; preds = %95, %6
  %43 = load i64, i64* %13, align 8
  %44 = load i64, i64* %8, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %104

46:                                               ; preds = %42
  %47 = load i64, i64* %13, align 8
  %48 = load i32, i32* %12, align 4
  %49 = call i64 @get_kernel_vsid(i64 %47, i32 %48)
  store i64 %49, i64* %20, align 8
  %50 = load i64, i64* %13, align 8
  %51 = load i64, i64* %20, align 8
  %52 = load i32, i32* %12, align 4
  %53 = call i64 @hpt_va(i64 %50, i64 %51, i32 %52)
  store i64 %53, i64* %21, align 8
  %54 = load i64, i64* %10, align 8
  store i64 %54, i64* %22, align 8
  %55 = load i64, i64* %13, align 8
  %56 = load i64, i64* %13, align 8
  %57 = load i32, i32* %15, align 4
  %58 = zext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = call i64 @overlaps_kernel_text(i64 %55, i64 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %46
  %63 = load i64, i64* @HPTE_R_N, align 8
  %64 = xor i64 %63, -1
  %65 = load i64, i64* %22, align 8
  %66 = and i64 %65, %64
  store i64 %66, i64* %22, align 8
  br label %67

67:                                               ; preds = %62, %46
  %68 = load i64, i64* %21, align 8
  %69 = load i32, i32* %16, align 4
  %70 = load i32, i32* %12, align 4
  %71 = call i64 @hpt_hash(i64 %68, i32 %69, i32 %70)
  store i64 %71, i64* %18, align 8
  %72 = load i64, i64* %18, align 8
  %73 = load i64, i64* @htab_hash_mask, align 8
  %74 = and i64 %72, %73
  %75 = load i64, i64* @HPTES_PER_GROUP, align 8
  %76 = mul i64 %74, %75
  store i64 %76, i64* %19, align 8
  %77 = load i32 (i64, i64, i64, i64, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ppc_md, i32 0, i32 0), align 8
  %78 = icmp ne i32 (i64, i64, i64, i64, i32, i32, i32)* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @BUG_ON(i32 %80)
  %82 = load i32 (i64, i64, i64, i64, i32, i32, i32)*, i32 (i64, i64, i64, i64, i32, i32, i32)** getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @ppc_md, i32 0, i32 0), align 8
  %83 = load i64, i64* %19, align 8
  %84 = load i64, i64* %21, align 8
  %85 = load i64, i64* %14, align 8
  %86 = load i64, i64* %22, align 8
  %87 = load i32, i32* @HPTE_V_BOLTED, align 4
  %88 = load i32, i32* %11, align 4
  %89 = load i32, i32* %12, align 4
  %90 = call i32 %82(i64 %83, i64 %84, i64 %85, i64 %86, i32 %87, i32 %88, i32 %89)
  store i32 %90, i32* %17, align 4
  %91 = load i32, i32* %17, align 4
  %92 = icmp slt i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %67
  br label %104

94:                                               ; preds = %67
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %15, align 4
  %97 = zext i32 %96 to i64
  %98 = load i64, i64* %13, align 8
  %99 = add i64 %98, %97
  store i64 %99, i64* %13, align 8
  %100 = load i32, i32* %15, align 4
  %101 = zext i32 %100 to i64
  %102 = load i64, i64* %14, align 8
  %103 = add i64 %102, %101
  store i64 %103, i64* %14, align 8
  br label %42

104:                                              ; preds = %93, %42
  %105 = load i32, i32* %17, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %104
  %108 = load i32, i32* %17, align 4
  br label %110

109:                                              ; preds = %104
  br label %110

110:                                              ; preds = %109, %107
  %111 = phi i32 [ %108, %107 ], [ 0, %109 ]
  ret i32 %111
}

declare dso_local i64 @htab_convert_pte_flags(i64) #1

declare dso_local i32 @DBG(i8*, i64, i64, i64, i64, i32, i32) #1

declare dso_local i64 @get_kernel_vsid(i64, i32) #1

declare dso_local i64 @hpt_va(i64, i64, i32) #1

declare dso_local i64 @overlaps_kernel_text(i64, i64) #1

declare dso_local i64 @hpt_hash(i64, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
