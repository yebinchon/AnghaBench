; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca.c_mca_insert_tr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/kernel/extr_mca.c_mca_insert_tr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ia64_tr_entry = type { i32, i32, i32, i32 }

@IA64_TR_ALLOC_BASE = common dso_local global i32 0, align 4
@IA64_TR_ALLOC_MAX = common dso_local global i32 0, align 4
@__per_cpu_idtrs = common dso_local global %struct.ia64_tr_entry*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @mca_insert_tr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mca_insert_tr(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ia64_tr_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = call i32 (...) @smp_processor_id()
  store i32 %8, i32* %7, align 4
  %9 = call i64 (...) @ia64_clear_ic()
  store i64 %9, i64* %6, align 8
  %10 = load i32, i32* @IA64_TR_ALLOC_BASE, align 4
  store i32 %10, i32* %3, align 4
  br label %11

11:                                               ; preds = %114, %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @IA64_TR_ALLOC_MAX, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %117

15:                                               ; preds = %11
  %16 = load %struct.ia64_tr_entry***, %struct.ia64_tr_entry**** @__per_cpu_idtrs, align 8
  %17 = load i32, i32* %7, align 4
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds %struct.ia64_tr_entry**, %struct.ia64_tr_entry*** %16, i64 %18
  %20 = load %struct.ia64_tr_entry**, %struct.ia64_tr_entry*** %19, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sub nsw i32 %21, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %20, i64 %23
  %25 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %24, align 8
  %26 = load i32, i32* %3, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %25, i64 %27
  store %struct.ia64_tr_entry* %28, %struct.ia64_tr_entry** %5, align 8
  %29 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %30 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %113

34:                                               ; preds = %15
  %35 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ia64_get_rr(i32 %37)
  store i32 %38, i32* %4, align 4
  %39 = load i32, i32* %4, align 4
  %40 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %41 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %39, %42
  br i1 %43, label %44, label %53

44:                                               ; preds = %34
  %45 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %46 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %49 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @ia64_set_rr(i32 %47, i32 %50)
  %52 = call i32 (...) @ia64_srlz_d()
  br label %53

53:                                               ; preds = %44, %34
  %54 = load i32, i32* %2, align 4
  %55 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %56 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %59 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = ashr i32 %60, 2
  %62 = call i32 @ia64_ptr(i32 %54, i32 %57, i32 %61)
  %63 = call i32 (...) @ia64_srlz_i()
  %64 = load i32, i32* %2, align 4
  %65 = and i32 %64, 1
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %53
  %68 = load i32, i32* %3, align 4
  %69 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %70 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %73 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %76 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = ashr i32 %77, 2
  %79 = call i32 @ia64_itr(i32 1, i32 %68, i32 %71, i32 %74, i32 %78)
  %80 = call i32 (...) @ia64_srlz_i()
  br label %81

81:                                               ; preds = %67, %53
  %82 = load i32, i32* %2, align 4
  %83 = and i32 %82, 2
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %99

85:                                               ; preds = %81
  %86 = load i32, i32* %3, align 4
  %87 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %88 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %91 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %94 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = ashr i32 %95, 2
  %97 = call i32 @ia64_itr(i32 2, i32 %86, i32 %89, i32 %92, i32 %96)
  %98 = call i32 (...) @ia64_srlz_i()
  br label %99

99:                                               ; preds = %85, %81
  %100 = load i32, i32* %4, align 4
  %101 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %102 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp ne i32 %100, %103
  br i1 %104, label %105, label %112

105:                                              ; preds = %99
  %106 = load %struct.ia64_tr_entry*, %struct.ia64_tr_entry** %5, align 8
  %107 = getelementptr inbounds %struct.ia64_tr_entry, %struct.ia64_tr_entry* %106, i32 0, i32 3
  %108 = load i32, i32* %107, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @ia64_set_rr(i32 %108, i32 %109)
  %111 = call i32 (...) @ia64_srlz_d()
  br label %112

112:                                              ; preds = %105, %99
  br label %113

113:                                              ; preds = %112, %15
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %3, align 4
  %116 = add nsw i32 %115, 1
  store i32 %116, i32* %3, align 4
  br label %11

117:                                              ; preds = %11
  %118 = load i64, i64* %6, align 8
  %119 = call i32 @ia64_set_psr(i64 %118)
  ret void
}

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i64 @ia64_clear_ic(...) #1

declare dso_local i32 @ia64_get_rr(i32) #1

declare dso_local i32 @ia64_set_rr(i32, i32) #1

declare dso_local i32 @ia64_srlz_d(...) #1

declare dso_local i32 @ia64_ptr(i32, i32, i32) #1

declare dso_local i32 @ia64_srlz_i(...) #1

declare dso_local i32 @ia64_itr(i32, i32, i32, i32, i32) #1

declare dso_local i32 @ia64_set_psr(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
