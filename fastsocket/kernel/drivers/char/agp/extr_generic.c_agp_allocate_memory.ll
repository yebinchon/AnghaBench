; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_allocate_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_generic.c_agp_allocate_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.agp_memory = type { %struct.agp_bridge_data*, i32, %struct.page** }
%struct.page = type { i32 }
%struct.agp_bridge_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.page* (%struct.agp_bridge_data*)*, i64 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)*, %struct.agp_memory* (i64, i64)* }

@AGP_USER_TYPES = common dso_local global i64 0, align 8
@ENTRIES_PER_PAGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.agp_memory* @agp_allocate_memory(%struct.agp_bridge_data* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.agp_memory*, align 8
  %5 = alloca %struct.agp_bridge_data*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.agp_memory*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.page*, align 8
  store %struct.agp_bridge_data* %0, %struct.agp_bridge_data** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %14 = icmp ne %struct.agp_bridge_data* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %149

16:                                               ; preds = %3
  %17 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %18 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %17, i32 0, i32 2
  %19 = call i32 @atomic_read(i32* %18)
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %11, align 4
  %21 = sext i32 %20 to i64
  %22 = load i64, i64* %6, align 8
  %23 = add i64 %21, %22
  %24 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %25 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = icmp ugt i64 %23, %27
  br i1 %28, label %36, label %29

29:                                               ; preds = %16
  %30 = load i32, i32* %11, align 4
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %6, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %6, align 8
  %35 = icmp ult i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %29, %16
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %149

37:                                               ; preds = %29
  %38 = load i64, i64* %7, align 8
  %39 = load i64, i64* @AGP_USER_TYPES, align 8
  %40 = icmp sge i64 %38, %39
  br i1 %40, label %41, label %53

41:                                               ; preds = %37
  %42 = load i64, i64* %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = call %struct.agp_memory* @agp_generic_alloc_user(i64 %42, i64 %43)
  store %struct.agp_memory* %44, %struct.agp_memory** %9, align 8
  %45 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %46 = icmp ne %struct.agp_memory* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %41
  %48 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %49 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %50 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %49, i32 0, i32 0
  store %struct.agp_bridge_data* %48, %struct.agp_bridge_data** %50, align 8
  br label %51

51:                                               ; preds = %47, %41
  %52 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  store %struct.agp_memory* %52, %struct.agp_memory** %4, align 8
  br label %149

53:                                               ; preds = %37
  %54 = load i64, i64* %7, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %73

56:                                               ; preds = %53
  %57 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %58 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 2
  %61 = load %struct.agp_memory* (i64, i64)*, %struct.agp_memory* (i64, i64)** %60, align 8
  %62 = load i64, i64* %6, align 8
  %63 = load i64, i64* %7, align 8
  %64 = call %struct.agp_memory* %61(i64 %62, i64 %63)
  store %struct.agp_memory* %64, %struct.agp_memory** %9, align 8
  %65 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %66 = icmp ne %struct.agp_memory* %65, null
  br i1 %66, label %67, label %71

67:                                               ; preds = %56
  %68 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %69 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %70 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %69, i32 0, i32 0
  store %struct.agp_bridge_data* %68, %struct.agp_bridge_data** %70, align 8
  br label %71

71:                                               ; preds = %67, %56
  %72 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  store %struct.agp_memory* %72, %struct.agp_memory** %4, align 8
  br label %149

73:                                               ; preds = %53
  %74 = load i64, i64* %6, align 8
  %75 = load i64, i64* @ENTRIES_PER_PAGE, align 8
  %76 = add i64 %74, %75
  %77 = sub i64 %76, 1
  %78 = load i64, i64* @ENTRIES_PER_PAGE, align 8
  %79 = udiv i64 %77, %78
  %80 = trunc i64 %79 to i32
  store i32 %80, i32* %8, align 4
  %81 = load i32, i32* %8, align 4
  %82 = call %struct.agp_memory* @agp_create_memory(i32 %81)
  store %struct.agp_memory* %82, %struct.agp_memory** %9, align 8
  %83 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %84 = icmp eq %struct.agp_memory* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %73
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %149

86:                                               ; preds = %73
  %87 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %88 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %87, i32 0, i32 1
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)*, i64 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)** %90, align 8
  %92 = icmp ne i64 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)* %91, null
  br i1 %92, label %93, label %112

93:                                               ; preds = %86
  %94 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %95 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i64 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)*, i64 (%struct.agp_bridge_data*, %struct.agp_memory*, i64)** %97, align 8
  %99 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %100 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %101 = load i64, i64* %6, align 8
  %102 = call i64 %98(%struct.agp_bridge_data* %99, %struct.agp_memory* %100, i64 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %93
  %105 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %106 = call i32 @agp_free_memory(%struct.agp_memory* %105)
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %149

107:                                              ; preds = %93
  %108 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %109 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %110 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %109, i32 0, i32 0
  store %struct.agp_bridge_data* %108, %struct.agp_bridge_data** %110, align 8
  %111 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  store %struct.agp_memory* %111, %struct.agp_memory** %4, align 8
  br label %149

112:                                              ; preds = %86
  store i64 0, i64* %10, align 8
  br label %113

113:                                              ; preds = %141, %112
  %114 = load i64, i64* %10, align 8
  %115 = load i64, i64* %6, align 8
  %116 = icmp ult i64 %114, %115
  br i1 %116, label %117, label %144

117:                                              ; preds = %113
  %118 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %119 = getelementptr inbounds %struct.agp_bridge_data, %struct.agp_bridge_data* %118, i32 0, i32 1
  %120 = load %struct.TYPE_2__*, %struct.TYPE_2__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  %122 = load %struct.page* (%struct.agp_bridge_data*)*, %struct.page* (%struct.agp_bridge_data*)** %121, align 8
  %123 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %124 = call %struct.page* %122(%struct.agp_bridge_data* %123)
  store %struct.page* %124, %struct.page** %12, align 8
  %125 = load %struct.page*, %struct.page** %12, align 8
  %126 = icmp eq %struct.page* %125, null
  br i1 %126, label %127, label %130

127:                                              ; preds = %117
  %128 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %129 = call i32 @agp_free_memory(%struct.agp_memory* %128)
  store %struct.agp_memory* null, %struct.agp_memory** %4, align 8
  br label %149

130:                                              ; preds = %117
  %131 = load %struct.page*, %struct.page** %12, align 8
  %132 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %133 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %132, i32 0, i32 2
  %134 = load %struct.page**, %struct.page*** %133, align 8
  %135 = load i64, i64* %10, align 8
  %136 = getelementptr inbounds %struct.page*, %struct.page** %134, i64 %135
  store %struct.page* %131, %struct.page** %136, align 8
  %137 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %138 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = add nsw i32 %139, 1
  store i32 %140, i32* %138, align 8
  br label %141

141:                                              ; preds = %130
  %142 = load i64, i64* %10, align 8
  %143 = add i64 %142, 1
  store i64 %143, i64* %10, align 8
  br label %113

144:                                              ; preds = %113
  %145 = load %struct.agp_bridge_data*, %struct.agp_bridge_data** %5, align 8
  %146 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  %147 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %146, i32 0, i32 0
  store %struct.agp_bridge_data* %145, %struct.agp_bridge_data** %147, align 8
  %148 = load %struct.agp_memory*, %struct.agp_memory** %9, align 8
  store %struct.agp_memory* %148, %struct.agp_memory** %4, align 8
  br label %149

149:                                              ; preds = %144, %127, %107, %104, %85, %71, %51, %36, %15
  %150 = load %struct.agp_memory*, %struct.agp_memory** %4, align 8
  ret %struct.agp_memory* %150
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local %struct.agp_memory* @agp_generic_alloc_user(i64, i64) #1

declare dso_local %struct.agp_memory* @agp_create_memory(i32) #1

declare dso_local i32 @agp_free_memory(%struct.agp_memory*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
