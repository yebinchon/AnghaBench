; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_parisc-agp.c_parisc_agp_remove_memory.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/agp/extr_parisc-agp.c_parisc_agp_remove_memory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._parisc_agp_info = type { i32, i32* }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 (%struct.agp_memory*)* }
%struct.agp_memory = type { i64, i32 }

@parisc_agp_info = common dso_local global %struct._parisc_agp_info zeroinitializer, align 8
@EINVAL = common dso_local global i32 0, align 4
@agp_bridge = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.agp_memory*, i32, i32)* @parisc_agp_remove_memory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parisc_agp_remove_memory(%struct.agp_memory* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.agp_memory*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._parisc_agp_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.agp_memory* %0, %struct.agp_memory** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct._parisc_agp_info* @parisc_agp_info, %struct._parisc_agp_info** %8, align 8
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %3
  %15 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %16 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %14, %3
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %4, align 4
  br label %63

22:                                               ; preds = %14
  %23 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %24 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* %6, align 4
  %27 = mul nsw i32 %25, %26
  store i32 %27, i32* %10, align 4
  %28 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %29 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %32 = getelementptr inbounds %struct.agp_memory, %struct.agp_memory* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* %10, align 4
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %52, %22
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = add nsw i32 %38, %39
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %55

42:                                               ; preds = %36
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct._parisc_agp_info*, %struct._parisc_agp_info** %8, align 8
  %47 = getelementptr inbounds %struct._parisc_agp_info, %struct._parisc_agp_info* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = load i32, i32* %9, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32, i32* %48, i64 %50
  store i32 %45, i32* %51, align 4
  br label %52

52:                                               ; preds = %42
  %53 = load i32, i32* %9, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %9, align 4
  br label %36

55:                                               ; preds = %36
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** @agp_bridge, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32 (%struct.agp_memory*)*, i32 (%struct.agp_memory*)** %59, align 8
  %61 = load %struct.agp_memory*, %struct.agp_memory** %5, align 8
  %62 = call i32 %60(%struct.agp_memory* %61)
  store i32 0, i32* %4, align 4
  br label %63

63:                                               ; preds = %55, %19
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
