; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_mthd_set_operation.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_mthd_set_operation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_object*, i32, i8*, i32)* @nv04_graph_mthd_set_operation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nv04_graph_mthd_set_operation(%struct.nouveau_object* %0, i32 %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nouveau_object*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %13 = call i32 @nv_ro32(%struct.nouveau_object* %12, i32 0)
  %14 = and i32 %13, 255
  store i32 %14, i32* %10, align 4
  %15 = load i8*, i8** %8, align 8
  %16 = bitcast i8* %15 to i32*
  %17 = load i32, i32* %16, align 4
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp sgt i32 %18, 5
  br i1 %19, label %20, label %21

20:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %35

21:                                               ; preds = %4
  %22 = load i32, i32* %11, align 4
  %23 = icmp sgt i32 %22, 2
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = load i32, i32* %10, align 4
  %26 = icmp slt i32 %25, 64
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 1, i32* %5, align 4
  br label %35

28:                                               ; preds = %24, %21
  %29 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %30 = load i32, i32* %11, align 4
  %31 = shl i32 %30, 15
  %32 = call i32 @nv04_graph_set_ctx1(%struct.nouveau_object* %29, i32 229376, i32 %31)
  %33 = load %struct.nouveau_object*, %struct.nouveau_object** %6, align 8
  %34 = call i32 @nv04_graph_set_ctx_val(%struct.nouveau_object* %33, i32 0, i32 0)
  store i32 0, i32* %5, align 4
  br label %35

35:                                               ; preds = %28, %27, %20
  %36 = load i32, i32* %5, align 4
  ret i32 %36
}

declare dso_local i32 @nv_ro32(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv04_graph_set_ctx1(%struct.nouveau_object*, i32, i32) #1

declare dso_local i32 @nv04_graph_set_ctx_val(%struct.nouveau_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
