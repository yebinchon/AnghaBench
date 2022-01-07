; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_bad_prim_vertex_nr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_state.c_bad_prim_vertex_nr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@RADEON_PRIM_TYPE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @bad_prim_vertex_nr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bad_prim_vertex_nr(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @RADEON_PRIM_TYPE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %41 [
    i32 133, label %9
    i32 132, label %9
    i32 135, label %13
    i32 134, label %23
    i32 129, label %27
    i32 136, label %27
    i32 137, label %27
    i32 131, label %27
    i32 130, label %37
    i32 128, label %37
  ]

9:                                                ; preds = %2, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %10, 1
  %12 = zext i1 %11 to i32
  store i32 %12, i32* %3, align 4
  br label %42

13:                                               ; preds = %2
  %14 = load i32, i32* %5, align 4
  %15 = and i32 %14, 1
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %20, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br label %20

20:                                               ; preds = %17, %13
  %21 = phi i1 [ true, %13 ], [ %19, %17 ]
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %3, align 4
  br label %42

23:                                               ; preds = %2
  %24 = load i32, i32* %5, align 4
  %25 = icmp slt i32 %24, 2
  %26 = zext i1 %25 to i32
  store i32 %26, i32* %3, align 4
  br label %42

27:                                               ; preds = %2, %2, %2, %2
  %28 = load i32, i32* %5, align 4
  %29 = srem i32 %28, 3
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %27
  %32 = load i32, i32* %5, align 4
  %33 = icmp eq i32 %32, 0
  br label %34

34:                                               ; preds = %31, %27
  %35 = phi i1 [ true, %27 ], [ %33, %31 ]
  %36 = zext i1 %35 to i32
  store i32 %36, i32* %3, align 4
  br label %42

37:                                               ; preds = %2, %2
  %38 = load i32, i32* %5, align 4
  %39 = icmp slt i32 %38, 3
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %3, align 4
  br label %42

41:                                               ; preds = %2
  store i32 1, i32* %3, align 4
  br label %42

42:                                               ; preds = %41, %37, %34, %23, %20, %9
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
