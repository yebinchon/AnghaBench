; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_skip_src_int.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_atom.c_atom_skip_src_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32*)* @atom_skip_src_int to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @atom_skip_src_int(i32* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %5, align 4
  %10 = ashr i32 %9, 3
  %11 = and i32 %10, 7
  store i32 %11, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = and i32 %12, 7
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  switch i32 %14, label %38 [
    i32 137, label %15
    i32 142, label %15
    i32 139, label %19
    i32 140, label %19
    i32 138, label %19
    i32 136, label %19
    i32 143, label %19
    i32 141, label %23
  ]

15:                                               ; preds = %3, %3
  %16 = load i32*, i32** %6, align 8
  %17 = load i32, i32* %16, align 4
  %18 = add nsw i32 %17, 2
  store i32 %18, i32* %16, align 4
  br label %38

19:                                               ; preds = %3, %3, %3, %3, %3
  %20 = load i32*, i32** %6, align 8
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  br label %38

23:                                               ; preds = %3
  %24 = load i32, i32* %7, align 4
  switch i32 %24, label %37 [
    i32 131, label %25
    i32 130, label %29
    i32 128, label %29
    i32 129, label %29
    i32 135, label %33
    i32 132, label %33
    i32 134, label %33
    i32 133, label %33
  ]

25:                                               ; preds = %23
  %26 = load i32*, i32** %6, align 8
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 4
  store i32 %28, i32* %26, align 4
  br label %38

29:                                               ; preds = %23, %23, %23
  %30 = load i32*, i32** %6, align 8
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 2
  store i32 %32, i32* %30, align 4
  br label %38

33:                                               ; preds = %23, %23, %23, %23
  %34 = load i32*, i32** %6, align 8
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %34, align 4
  br label %38

37:                                               ; preds = %23
  br label %38

38:                                               ; preds = %25, %29, %33, %37, %3, %19, %15
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
