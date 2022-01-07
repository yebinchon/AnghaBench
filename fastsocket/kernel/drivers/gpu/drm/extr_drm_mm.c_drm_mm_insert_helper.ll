; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_insert_helper.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_insert_helper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i64, i64, i64, i32, i32, %struct.drm_mm* }
%struct.drm_mm = type { i32, i32 (%struct.drm_mm_node*, i64, i64*, i64*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.drm_mm_node*, %struct.drm_mm_node*, i64, i32, i64)* @drm_mm_insert_helper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @drm_mm_insert_helper(%struct.drm_mm_node* %0, %struct.drm_mm_node* %1, i64 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.drm_mm_node*, align 8
  %7 = alloca %struct.drm_mm_node*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca %struct.drm_mm*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %6, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %17 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %18 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %17, i32 0, i32 7
  %19 = load %struct.drm_mm*, %struct.drm_mm** %18, align 8
  store %struct.drm_mm* %19, %struct.drm_mm** %11, align 8
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %21 = call i64 @drm_mm_hole_node_start(%struct.drm_mm_node* %20)
  store i64 %21, i64* %12, align 8
  %22 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %23 = call i64 @drm_mm_hole_node_end(%struct.drm_mm_node* %22)
  store i64 %23, i64* %13, align 8
  %24 = load i64, i64* %12, align 8
  store i64 %24, i64* %14, align 8
  %25 = load i64, i64* %13, align 8
  store i64 %25, i64* %15, align 8
  %26 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %27 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %31 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %30, i32 0, i32 1
  %32 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %31, align 8
  %33 = icmp ne i32 (%struct.drm_mm_node*, i64, i64*, i64*)* %32, null
  br i1 %33, label %34, label %41

34:                                               ; preds = %5
  %35 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %36 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %35, i32 0, i32 1
  %37 = load i32 (%struct.drm_mm_node*, i64, i64*, i64*)*, i32 (%struct.drm_mm_node*, i64, i64*, i64*)** %36, align 8
  %38 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %39 = load i64, i64* %10, align 8
  %40 = call i32 %37(%struct.drm_mm_node* %38, i64 %39, i64* %14, i64* %15)
  br label %41

41:                                               ; preds = %34, %5
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %60

44:                                               ; preds = %41
  %45 = load i64, i64* %14, align 8
  %46 = load i32, i32* %9, align 4
  %47 = zext i32 %46 to i64
  %48 = urem i64 %45, %47
  %49 = trunc i64 %48 to i32
  store i32 %49, i32* %16, align 4
  %50 = load i32, i32* %16, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %44
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* %16, align 4
  %55 = sub i32 %53, %54
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* %14, align 8
  %58 = add i64 %57, %56
  store i64 %58, i64* %14, align 8
  br label %59

59:                                               ; preds = %52, %44
  br label %60

60:                                               ; preds = %59, %41
  %61 = load i64, i64* %14, align 8
  %62 = load i64, i64* %12, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %60
  %65 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %66 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %65, i32 0, i32 1
  store i32 0, i32* %66, align 4
  %67 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %68 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %67, i32 0, i32 5
  %69 = call i32 @list_del(i32* %68)
  br label %70

70:                                               ; preds = %64, %60
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %73 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %72, i32 0, i32 2
  store i64 %71, i64* %73, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %76 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %75, i32 0, i32 3
  store i64 %74, i64* %76, align 8
  %77 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %78 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %79 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %78, i32 0, i32 7
  store %struct.drm_mm* %77, %struct.drm_mm** %79, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %82 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %81, i32 0, i32 4
  store i64 %80, i64* %82, align 8
  %83 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %84 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %83, i32 0, i32 0
  store i32 1, i32* %84, align 8
  %85 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %86 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %85, i32 0, i32 5
  %87 = call i32 @INIT_LIST_HEAD(i32* %86)
  %88 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %89 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %88, i32 0, i32 6
  %90 = load %struct.drm_mm_node*, %struct.drm_mm_node** %6, align 8
  %91 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %90, i32 0, i32 6
  %92 = call i32 @list_add(i32* %89, i32* %91)
  %93 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %94 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %93, i32 0, i32 2
  %95 = load i64, i64* %94, align 8
  %96 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %97 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %96, i32 0, i32 3
  %98 = load i64, i64* %97, align 8
  %99 = add i64 %95, %98
  %100 = load i64, i64* %15, align 8
  %101 = icmp ugt i64 %99, %100
  %102 = zext i1 %101 to i32
  %103 = call i32 @BUG_ON(i32 %102)
  %104 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %105 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %104, i32 0, i32 1
  store i32 0, i32* %105, align 4
  %106 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %107 = call i64 @__drm_mm_hole_node_start(%struct.drm_mm_node* %106)
  %108 = load i64, i64* %13, align 8
  %109 = icmp ult i64 %107, %108
  br i1 %109, label %110, label %118

110:                                              ; preds = %70
  %111 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %112 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %111, i32 0, i32 5
  %113 = load %struct.drm_mm*, %struct.drm_mm** %11, align 8
  %114 = getelementptr inbounds %struct.drm_mm, %struct.drm_mm* %113, i32 0, i32 0
  %115 = call i32 @list_add(i32* %112, i32* %114)
  %116 = load %struct.drm_mm_node*, %struct.drm_mm_node** %7, align 8
  %117 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %116, i32 0, i32 1
  store i32 1, i32* %117, align 4
  br label %118

118:                                              ; preds = %110, %70
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
