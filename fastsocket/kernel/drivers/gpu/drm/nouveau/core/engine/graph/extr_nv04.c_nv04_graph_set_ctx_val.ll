; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_set_ctx_val.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_set_ctx_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_object = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nouveau_object*, i32, i32)* @nv04_graph_set_ctx_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nv04_graph_set_ctx_val(%struct.nouveau_object* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_object*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nouveau_object* %0, %struct.nouveau_object** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 1, i32* %9, align 4
  %12 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %13 = call i32 @nv_ro32(%struct.nouveau_object* %12, i32 0)
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = and i32 %14, 255
  store i32 %15, i32* %7, align 4
  %16 = load i32, i32* %11, align 4
  %17 = ashr i32 %16, 15
  %18 = and i32 %17, 7
  store i32 %18, i32* %8, align 4
  %19 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %20 = call i32 @nv_ro32(%struct.nouveau_object* %19, i32 12)
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %5, align 4
  %22 = xor i32 %21, -1
  %23 = load i32, i32* %10, align 4
  %24 = and i32 %23, %22
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %10, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %10, align 4
  %28 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %29 = load i32, i32* %10, align 4
  %30 = call i32 @nv_wo32(%struct.nouveau_object* %28, i32 12, i32 %29)
  %31 = load i32, i32* %10, align 4
  %32 = and i32 %31, 33554432
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %35

35:                                               ; preds = %34, %3
  %36 = load i32, i32* %7, align 4
  %37 = icmp eq i32 %36, 31
  br i1 %37, label %41, label %38

38:                                               ; preds = %35
  %39 = load i32, i32* %7, align 4
  %40 = icmp eq i32 %39, 72
  br i1 %40, label %41, label %46

41:                                               ; preds = %38, %35
  %42 = load i32, i32* %10, align 4
  %43 = and i32 %42, 67108864
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %41
  store i32 0, i32* %9, align 4
  br label %46

46:                                               ; preds = %45, %41, %38
  %47 = load i32, i32* %8, align 4
  switch i32 %47, label %67 [
    i32 0, label %48
    i32 3, label %48
    i32 1, label %49
    i32 2, label %55
    i32 4, label %61
    i32 5, label %61
  ]

48:                                               ; preds = %46, %46
  br label %67

49:                                               ; preds = %46
  %50 = load i32, i32* %10, align 4
  %51 = and i32 %50, 402653184
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %49
  store i32 0, i32* %9, align 4
  br label %54

54:                                               ; preds = %53, %49
  br label %67

55:                                               ; preds = %46
  %56 = load i32, i32* %10, align 4
  %57 = and i32 %56, 536870912
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %60, label %59

59:                                               ; preds = %55
  store i32 0, i32* %9, align 4
  br label %60

60:                                               ; preds = %59, %55
  br label %67

61:                                               ; preds = %46, %46
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 1073741824
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %61
  store i32 0, i32* %9, align 4
  br label %66

66:                                               ; preds = %65, %61
  br label %67

67:                                               ; preds = %46, %66, %60, %54, %48
  %68 = load %struct.nouveau_object*, %struct.nouveau_object** %4, align 8
  %69 = load i32, i32* %9, align 4
  %70 = shl i32 %69, 24
  %71 = call i32 @nv04_graph_set_ctx1(%struct.nouveau_object* %68, i32 16777216, i32 %70)
  ret void
}

declare dso_local i32 @nv_ro32(%struct.nouveau_object*, i32) #1

declare dso_local i32 @nv_wo32(%struct.nouveau_object*, i32, i32) #1

declare dso_local i32 @nv04_graph_set_ctx1(%struct.nouveau_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
