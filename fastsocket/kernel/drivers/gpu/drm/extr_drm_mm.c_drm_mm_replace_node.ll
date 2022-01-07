; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_replace_node.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/extr_drm_mm.c_drm_mm_replace_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_mm_node = type { i32, i32, i32, i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_mm_replace_node(%struct.drm_mm_node* %0, %struct.drm_mm_node* %1) #0 {
  %3 = alloca %struct.drm_mm_node*, align 8
  %4 = alloca %struct.drm_mm_node*, align 8
  store %struct.drm_mm_node* %0, %struct.drm_mm_node** %3, align 8
  store %struct.drm_mm_node* %1, %struct.drm_mm_node** %4, align 8
  %5 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %6 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %5, i32 0, i32 7
  %7 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %8 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %7, i32 0, i32 7
  %9 = call i32 @list_replace(i32* %6, i32* %8)
  %10 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %11 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %10, i32 0, i32 6
  %12 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %13 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %12, i32 0, i32 6
  %14 = call i32 @list_replace(i32* %11, i32* %13)
  %15 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %16 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %15, i32 0, i32 5
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %19 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %18, i32 0, i32 5
  store i32 %17, i32* %19, align 4
  %20 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %21 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %24 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %23, i32 0, i32 4
  store i32 %22, i32* %24, align 4
  %25 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %26 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %25, i32 0, i32 3
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %29 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %28, i32 0, i32 3
  store i32 %27, i32* %29, align 4
  %30 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %31 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %34 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %33, i32 0, i32 2
  store i32 %32, i32* %34, align 4
  %35 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %36 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %39 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %38, i32 0, i32 1
  store i32 %37, i32* %39, align 4
  %40 = load %struct.drm_mm_node*, %struct.drm_mm_node** %3, align 8
  %41 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %40, i32 0, i32 0
  store i32 0, i32* %41, align 4
  %42 = load %struct.drm_mm_node*, %struct.drm_mm_node** %4, align 8
  %43 = getelementptr inbounds %struct.drm_mm_node, %struct.drm_mm_node* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  ret void
}

declare dso_local i32 @list_replace(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
