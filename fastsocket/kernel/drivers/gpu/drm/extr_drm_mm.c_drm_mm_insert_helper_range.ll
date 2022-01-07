; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_insert_helper_range.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_insert_helper_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i64, i64, i64, i32, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32, i32 (%struct.drm_mm_node*, i64, i64*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_node*, %struct.drm_mm_node*, i64, i32, i64, i64, i64)* @drm_mm_insert_helper_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_mm_insert_helper_range(%struct.drm_mm_node* %0, %struct.drm_mm_node* %1, i64 %2, i32 %3, i64 %4, i64 %5, i64 %6) #0 {
  %8 = alloca %struct.drm_mm_node*, align 8
  %9 = alloca %struct.drm_mm_node*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.drm_mm*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %8, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64 %5, i64* %13, align 8
  store i64 %6, i64* %14, align 8
  %21 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %22 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %21, i32 0, i32 7
  %23 = load %struct.drm_mm*, %struct.drm_mm** %22, align 8
  store %struct.drm_mm* %23, %struct.drm_mm** %15, align 8
  %24 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %25 = call i64 @drm_mm_hole_node_start(%struct.drm_mm_node* %24)
  store i64 %25, i64* %16, align 8
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %27 = call i64 @drm_mm_hole_node_end(%struct.drm_mm_node* %26)
  store i64 %27, i64* %17, align 8
  %28 = load i64, i64* %16, align 8
  store i64 %28, i64* %18, align 8
  %29 = load i64, i64* %17, align 8
  store i64 %29, i64* %19, align 8
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %39

34:                                               ; preds = %7
  %35 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %36 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp ne i32 %37, 0
  br label %39

39:                                               ; preds = %34, %7
  %40 = phi i1 [ true, %7 ], [ %38, %34 ]
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load i64, i64* %18, align 8
  %44 = load i64, i64* %13, align 8
  %45 = icmp ult i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %39
  %47 = load i64, i64* %13, align 8
  store i64 %47, i64* %18, align 8
  br label %48

48:                                               ; preds = %46, %39
  %49 = load i64, i64* %19, align 8
  %50 = load i64, i64* %14, align 8
  %51 = icmp ugt i64 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %48
  %53 = load i64, i64* %14, align 8
  store i64 %53, i64* %19, align 8
  br label %54

54:                                               ; preds = %52, %48
  %55 = load %struct.drm_mm*, %struct.drm_mm** %15, align 8
  %56 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %55, i32 0, i32 1
  %57 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %56, align 8
  %58 = icmp ne i32 (%struct.drm_mm_node*, i64, i64*, i64*)* %57, null
  br i1 %58, label %59, label %66

59:                                               ; preds = %54
  %60 = load %struct.drm_mm*, %struct.drm_mm** %15, align 8
  %61 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %60, i32 0, i32 1
  %62 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %61, align 8
  %63 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %64 = load i64, i64* %12, align 8
  %65 = call i32 %62(%struct.drm_mm_node* %63, i64 %64, i64* %18, i64* %19)
  br label %66

66:                                               ; preds = %59, %54
  %67 = load i32, i32* %11, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %66
  %70 = load i64, i64* %18, align 8
  %71 = load i32, i32* %11, align 4
  %72 = zext i32 %71 to i64
  %73 = urem i64 %70, %72
  %74 = trunc i64 %73 to i32
  store i32 %74, i32* %20, align 4
  %75 = load i32, i32* %20, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %84

77:                                               ; preds = %69
  %78 = load i32, i32* %11, align 4
  %79 = load i32, i32* %20, align 4
  %80 = sub i32 %78, %79
  %81 = zext i32 %80 to i64
  %82 = load i64, i64* %18, align 8
  %83 = add i64 %82, %81
  store i64 %83, i64* %18, align 8
  br label %84

84:                                               ; preds = %77, %69
  br label %85

85:                                               ; preds = %84, %66
  %86 = load i64, i64* %18, align 8
  %87 = load i64, i64* %16, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %95

89:                                               ; preds = %85
  %90 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %91 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %90, i32 0, i32 0
  store i32 0, i32* %91, align 8
  %92 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %93 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %92, i32 0, i32 5
  %94 = call i32 @list_del(i32* %93)
  br label %95

95:                                               ; preds = %89, %85
  %96 = load i64, i64* %18, align 8
  %97 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %98 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %97, i32 0, i32 2
  store i64 %96, i64* %98, align 8
  %99 = load i64, i64* %10, align 8
  %100 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %101 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %100, i32 0, i32 3
  store i64 %99, i64* %101, align 8
  %102 = load %struct.drm_mm*, %struct.drm_mm** %15, align 8
  %103 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %104 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %103, i32 0, i32 7
  store %struct.drm_mm* %102, %struct.drm_mm** %104, align 8
  %105 = load i64, i64* %12, align 8
  %106 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %107 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %106, i32 0, i32 4
  store i64 %105, i64* %107, align 8
  %108 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %109 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %108, i32 0, i32 1
  store i32 1, i32* %109, align 4
  %110 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %111 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %110, i32 0, i32 5
  %112 = call i32 @INIT_LIST_HEAD(i32* %111)
  %113 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %114 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %113, i32 0, i32 6
  %115 = load %struct.drm_mm_node*, %struct.drm_mm_node** %8, align 8
  %116 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %115, i32 0, i32 6
  %117 = call i32 @list_add(i32* %114, i32* %116)
  %118 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %119 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %118, i32 0, i32 2
  %120 = load i64, i64* %119, align 8
  %121 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %122 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = add i64 %120, %123
  %125 = load i64, i64* %19, align 8
  %126 = icmp ugt i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @BUG_ON(i32 %127)
  %129 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %130 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %129, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %133 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = add i64 %131, %134
  %136 = load i64, i64* %14, align 8
  %137 = icmp ugt i64 %135, %136
  %138 = zext i1 %137 to i32
  %139 = call i32 @BUG_ON(i32 %138)
  %140 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %141 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %140, i32 0, i32 0
  store i32 0, i32* %141, align 8
  %142 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %143 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %142)
  %144 = load i64, i64* %17, align 8
  %145 = icmp ult i64 %143, %144
  br i1 %145, label %146, label %154

146:                                              ; preds = %95
  %147 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %148 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %147, i32 0, i32 5
  %149 = load %struct.drm_mm*, %struct.drm_mm** %15, align 8
  %150 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %149, i32 0, i32 0
  %151 = call i32 @list_add(i32* %148, i32* %150)
  %152 = load %struct.drm_mm_node*, %struct.drm_mm_node** %9, align 8
  %153 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %152, i32 0, i32 0
  store i32 1, i32* %153, align 8
  br label %154

154:                                              ; preds = %146, %95
  ret void
}

declare dso_local i64 @drm_mm_hole_node_start(%struct.drm_mm_node*) #1

declare dso_local i64 @drm_mm_hole_node_end(%struct.drm_mm_node*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i64 @__drm_mm_hole_node_start(%struct.drm_mm_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
