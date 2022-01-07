; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_cm_build_mpa_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/nes/extr_nes_cm.c_cm_build_mpa_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nes_cm_node = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nes_cm_node*, i32**, i32*, i32*, i32)* @cm_build_mpa_frame to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cm_build_mpa_frame(%struct.nes_cm_node* %0, i32** %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca %struct.nes_cm_node*, align 8
  %7 = alloca i32**, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nes_cm_node* %0, %struct.nes_cm_node** %6, align 8
  store i32** %1, i32*** %7, align 8
  store i32* %2, i32** %8, align 8
  store i32* %3, i32** %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %12 = load i32*, i32** %9, align 8
  %13 = icmp ne i32* %12, null
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32*, i32** %9, align 8
  br label %21

16:                                               ; preds = %5
  %17 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  %18 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 0
  br label %21

21:                                               ; preds = %16, %14
  %22 = phi i32* [ %15, %14 ], [ %20, %16 ]
  %23 = load i32**, i32*** %7, align 8
  store i32* %22, i32** %23, align 8
  %24 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  %25 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  switch i32 %26, label %57 [
    i32 129, label %27
    i32 128, label %44
  ]

27:                                               ; preds = %21
  %28 = load i32**, i32*** %7, align 8
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = load i32**, i32*** %7, align 8
  store i32* %30, i32** %31, align 8
  %32 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  %33 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = add i64 4, %35
  %37 = trunc i64 %36 to i32
  %38 = load i32*, i32** %8, align 8
  store i32 %37, i32* %38, align 4
  %39 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  %40 = load i32**, i32*** %7, align 8
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @build_mpa_v1(%struct.nes_cm_node* %39, i32* %41, i32 %42)
  br label %60

44:                                               ; preds = %21
  %45 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  %46 = getelementptr inbounds %struct.nes_cm_node, %struct.nes_cm_node* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = add i64 4, %48
  %50 = trunc i64 %49 to i32
  %51 = load i32*, i32** %8, align 8
  store i32 %50, i32* %51, align 4
  %52 = load %struct.nes_cm_node*, %struct.nes_cm_node** %6, align 8
  %53 = load i32**, i32*** %7, align 8
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = call i32 @build_mpa_v2(%struct.nes_cm_node* %52, i32* %54, i32 %55)
  br label %60

57:                                               ; preds = %21
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %11, align 4
  br label %60

60:                                               ; preds = %57, %44, %27
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @build_mpa_v1(%struct.nes_cm_node*, i32*, i32) #1

declare dso_local i32 @build_mpa_v2(%struct.nes_cm_node*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
