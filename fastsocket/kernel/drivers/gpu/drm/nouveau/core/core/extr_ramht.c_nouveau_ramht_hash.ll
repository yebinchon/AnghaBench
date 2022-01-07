; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_ramht.c_nouveau_ramht_hash.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/core/extr_ramht.c_nouveau_ramht_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_ramht = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_ramht*, i32, i32)* @nouveau_ramht_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nouveau_ramht_hash(%struct.nouveau_ramht* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.nouveau_ramht*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nouveau_ramht* %0, %struct.nouveau_ramht** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %11, %3
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %26

11:                                               ; preds = %8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %4, align 8
  %14 = getelementptr inbounds %struct.nouveau_ramht, %struct.nouveau_ramht* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = shl i32 1, %15
  %17 = sub nsw i32 %16, 1
  %18 = and i32 %12, %17
  %19 = load i32, i32* %7, align 4
  %20 = xor i32 %19, %18
  store i32 %20, i32* %7, align 4
  %21 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %4, align 8
  %22 = getelementptr inbounds %struct.nouveau_ramht, %struct.nouveau_ramht* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = ashr i32 %24, %23
  store i32 %25, i32* %6, align 4
  br label %8

26:                                               ; preds = %8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.nouveau_ramht*, %struct.nouveau_ramht** %4, align 8
  %29 = getelementptr inbounds %struct.nouveau_ramht, %struct.nouveau_ramht* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 4
  %32 = shl i32 %27, %31
  %33 = load i32, i32* %7, align 4
  %34 = xor i32 %33, %32
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = shl i32 %35, 3
  store i32 %36, i32* %7, align 4
  %37 = load i32, i32* %7, align 4
  ret i32 %37
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
