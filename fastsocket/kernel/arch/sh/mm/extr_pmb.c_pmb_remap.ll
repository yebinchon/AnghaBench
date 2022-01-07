; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_remap.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/sh/mm/extr_pmb.c_pmb_remap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32 }
%struct.pmb_entry = type { %struct.pmb_entry* }

@_PAGE_CACHABLE = common dso_local global i64 0, align 8
@_PAGE_WT = common dso_local global i64 0, align 8
@PMB_WT = common dso_local global i32 0, align 4
@PMB_C = common dso_local global i32 0, align 4
@PMB_UB = common dso_local global i32 0, align 4
@pmb_sizes = common dso_local global %struct.TYPE_3__* null, align 8
@EBUSY = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @pmb_remap(i64 %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.pmb_entry*, align 8
  %11 = alloca %struct.pmb_entry*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %17 = load i64, i64* %9, align 8
  %18 = load i64, i64* @_PAGE_CACHABLE, align 8
  %19 = and i64 %17, %18
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %31

21:                                               ; preds = %4
  %22 = load i64, i64* %9, align 8
  %23 = load i64, i64* @_PAGE_WT, align 8
  %24 = and i64 %22, %23
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = load i32, i32* @PMB_WT, align 4
  store i32 %27, i32* %13, align 4
  br label %30

28:                                               ; preds = %21
  %29 = load i32, i32* @PMB_C, align 4
  store i32 %29, i32* %13, align 4
  br label %30

30:                                               ; preds = %28, %26
  br label %35

31:                                               ; preds = %4
  %32 = load i32, i32* @PMB_WT, align 4
  %33 = load i32, i32* @PMB_UB, align 4
  %34 = or i32 %32, %33
  store i32 %34, i32* %13, align 4
  br label %35

35:                                               ; preds = %31, %30
  store %struct.pmb_entry* null, %struct.pmb_entry** %10, align 8
  %36 = load i64, i64* %8, align 8
  store i64 %36, i64* %12, align 8
  br label %37

37:                                               ; preds = %123, %35
  store i32 0, i32* %14, align 4
  br label %38

38:                                               ; preds = %117, %37
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %41 = call i32 @ARRAY_SIZE(%struct.TYPE_3__* %40)
  %42 = icmp slt i32 %39, %41
  br i1 %42, label %43, label %120

43:                                               ; preds = %38
  %44 = load i64, i64* %8, align 8
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %46 = load i32, i32* %14, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp ult i64 %44, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %43
  br label %117

53:                                               ; preds = %43
  %54 = load i64, i64* %6, align 8
  %55 = load i64, i64* %7, align 8
  %56 = load i32, i32* %13, align 4
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %58 = load i32, i32* %14, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = or i32 %56, %62
  %64 = call %struct.pmb_entry* @pmb_alloc(i64 %54, i64 %55, i32 %63)
  store %struct.pmb_entry* %64, %struct.pmb_entry** %11, align 8
  %65 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %66 = call i64 @IS_ERR(%struct.pmb_entry* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %53
  %69 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %70 = call i64 @PTR_ERR(%struct.pmb_entry* %69)
  store i64 %70, i64* %15, align 8
  br label %128

71:                                               ; preds = %53
  %72 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %73 = call i32 @set_pmb_entry(%struct.pmb_entry* %72)
  store i32 %73, i32* %16, align 4
  %74 = load i32, i32* %16, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %71
  %77 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %78 = call i32 @pmb_free(%struct.pmb_entry* %77)
  %79 = load i64, i64* @EBUSY, align 8
  %80 = sub nsw i64 0, %79
  store i64 %80, i64* %15, align 8
  br label %128

81:                                               ; preds = %71
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %83 = load i32, i32* %14, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* %7, align 8
  %89 = add i64 %88, %87
  store i64 %89, i64* %7, align 8
  %90 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = load i64, i64* %6, align 8
  %97 = add i64 %96, %95
  store i64 %97, i64* %6, align 8
  %98 = load %struct.TYPE_3__*, %struct.TYPE_3__** @pmb_sizes, align 8
  %99 = load i32, i32* %14, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %98, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %8, align 8
  %105 = sub i64 %104, %103
  store i64 %105, i64* %8, align 8
  %106 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %107 = call i64 @likely(%struct.pmb_entry* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %81
  %110 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  %111 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %112 = getelementptr inbounds %struct.pmb_entry, %struct.pmb_entry* %111, i32 0, i32 0
  store %struct.pmb_entry* %110, %struct.pmb_entry** %112, align 8
  br label %113

113:                                              ; preds = %109, %81
  %114 = load %struct.pmb_entry*, %struct.pmb_entry** %11, align 8
  store %struct.pmb_entry* %114, %struct.pmb_entry** %10, align 8
  %115 = load i32, i32* %14, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %14, align 4
  br label %117

117:                                              ; preds = %113, %52
  %118 = load i32, i32* %14, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %14, align 4
  br label %38

120:                                              ; preds = %38
  %121 = load i64, i64* %8, align 8
  %122 = icmp uge i64 %121, 16777216
  br i1 %122, label %123, label %124

123:                                              ; preds = %120
  br label %37

124:                                              ; preds = %120
  %125 = load i64, i64* %12, align 8
  %126 = load i64, i64* %8, align 8
  %127 = sub i64 %125, %126
  store i64 %127, i64* %5, align 8
  br label %136

128:                                              ; preds = %76, %68
  %129 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %130 = icmp ne %struct.pmb_entry* %129, null
  br i1 %130, label %131, label %134

131:                                              ; preds = %128
  %132 = load %struct.pmb_entry*, %struct.pmb_entry** %10, align 8
  %133 = call i32 @__pmb_unmap(%struct.pmb_entry* %132)
  br label %134

134:                                              ; preds = %131, %128
  %135 = load i64, i64* %15, align 8
  store i64 %135, i64* %5, align 8
  br label %136

136:                                              ; preds = %134, %124
  %137 = load i64, i64* %5, align 8
  ret i64 %137
}

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__*) #1

declare dso_local %struct.pmb_entry* @pmb_alloc(i64, i64, i32) #1

declare dso_local i64 @IS_ERR(%struct.pmb_entry*) #1

declare dso_local i64 @PTR_ERR(%struct.pmb_entry*) #1

declare dso_local i32 @set_pmb_entry(%struct.pmb_entry*) #1

declare dso_local i32 @pmb_free(%struct.pmb_entry*) #1

declare dso_local i64 @likely(%struct.pmb_entry*) #1

declare dso_local i32 @__pmb_unmap(%struct.pmb_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
