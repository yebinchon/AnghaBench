; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_ate.c_find_free_ate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/ia64/sn/pci/pcibr/extr_pcibr_ate.c_find_free_ate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ate_resource = type { i32, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ate_resource*, i32, i32)* @find_free_ate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @find_free_ate(%struct.ate_resource* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ate_resource*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ate_resource* %0, %struct.ate_resource** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %13 = load %struct.ate_resource*, %struct.ate_resource** %5, align 8
  %14 = getelementptr inbounds %struct.ate_resource, %struct.ate_resource* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %8, align 8
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %72, %3
  %18 = load i32, i32* %9, align 4
  %19 = load %struct.ate_resource*, %struct.ate_resource** %5, align 8
  %20 = getelementptr inbounds %struct.ate_resource, %struct.ate_resource* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp slt i32 %18, %21
  br i1 %22, label %23, label %73

23:                                               ; preds = %17
  %24 = load i32*, i32** %8, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = load i32, i32* %27, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %69, label %30

30:                                               ; preds = %23
  store i32 0, i32* %12, align 4
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  store i32 %32, i32* %11, align 4
  br label %33

33:                                               ; preds = %58, %30
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.ate_resource*, %struct.ate_resource** %5, align 8
  %36 = getelementptr inbounds %struct.ate_resource, %struct.ate_resource* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp slt i32 %34, %37
  br i1 %38, label %39, label %61

39:                                               ; preds = %33
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i32, i32* %40, i64 %42
  %44 = load i32, i32* %43, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %54, label %46

46:                                               ; preds = %39
  %47 = load i32, i32* %12, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %12, align 4
  %49 = load i32, i32* %7, align 4
  %50 = icmp eq i32 %48, %49
  br i1 %50, label %51, label %53

51:                                               ; preds = %46
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %74

53:                                               ; preds = %46
  br label %57

54:                                               ; preds = %39
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %9, align 4
  br label %61

57:                                               ; preds = %53
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %33

61:                                               ; preds = %54, %33
  %62 = load i32, i32* %11, align 4
  %63 = load %struct.ate_resource*, %struct.ate_resource** %5, align 8
  %64 = getelementptr inbounds %struct.ate_resource, %struct.ate_resource* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = icmp sge i32 %62, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %61
  store i32 -1, i32* %4, align 4
  br label %74

68:                                               ; preds = %61
  br label %72

69:                                               ; preds = %23
  %70 = load i32, i32* %9, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %9, align 4
  br label %72

72:                                               ; preds = %69, %68
  br label %17

73:                                               ; preds = %17
  store i32 -1, i32* %4, align 4
  br label %74

74:                                               ; preds = %73, %67, %51
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
