; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_reg_mask_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx231xx/extr_cx231xx-core.c_cx231xx_reg_mask_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cx231xx = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cx231xx_reg_mask_write(%struct.cx231xx* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.cx231xx*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.cx231xx* %0, %struct.cx231xx** %9, align 8
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store i32 %6, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %18, align 4
  %20 = load i32, i32* %13, align 4
  %21 = load i32, i32* %11, align 4
  %22 = sub nsw i32 %21, 1
  %23 = icmp sgt i32 %20, %22
  br i1 %23, label %29, label %24

24:                                               ; preds = %7
  %25 = load i32, i32* %14, align 4
  %26 = load i32, i32* %11, align 4
  %27 = sub nsw i32 %26, 1
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %24, %7
  store i32 -1, i32* %8, align 4
  br label %106

30:                                               ; preds = %24
  %31 = load i32, i32* %11, align 4
  %32 = icmp eq i32 %31, 8
  br i1 %32, label %33, label %38

33:                                               ; preds = %30
  %34 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %35 = load i32, i32* %10, align 4
  %36 = load i32, i32* %12, align 4
  %37 = call i32 @cx231xx_read_i2c_data(%struct.cx231xx* %34, i32 %35, i32 %36, i32 2, i32* %17, i32 1)
  store i32 %37, i32* %16, align 4
  br label %43

38:                                               ; preds = %30
  %39 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %40 = load i32, i32* %10, align 4
  %41 = load i32, i32* %12, align 4
  %42 = call i32 @cx231xx_read_i2c_data(%struct.cx231xx* %39, i32 %40, i32 %41, i32 2, i32* %17, i32 4)
  store i32 %42, i32* %16, align 4
  br label %43

43:                                               ; preds = %38, %33
  %44 = load i32, i32* %16, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %43
  %47 = load i32, i32* %16, align 4
  store i32 %47, i32* %8, align 4
  br label %106

48:                                               ; preds = %43
  %49 = load i32, i32* %14, align 4
  %50 = shl i32 1, %49
  store i32 %50, i32* %18, align 4
  %51 = load i32, i32* %14, align 4
  store i32 %51, i32* %19, align 4
  br label %52

52:                                               ; preds = %67, %48
  %53 = load i32, i32* %19, align 4
  %54 = load i32, i32* %13, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %19, align 4
  %58 = icmp sgt i32 %57, 0
  br label %59

59:                                               ; preds = %56, %52
  %60 = phi i1 [ false, %52 ], [ %58, %56 ]
  br i1 %60, label %61, label %70

61:                                               ; preds = %59
  %62 = load i32, i32* %18, align 4
  %63 = load i32, i32* %19, align 4
  %64 = sub nsw i32 %63, 1
  %65 = shl i32 1, %64
  %66 = add nsw i32 %62, %65
  store i32 %66, i32* %18, align 4
  br label %67

67:                                               ; preds = %61
  %68 = load i32, i32* %19, align 4
  %69 = add nsw i32 %68, -1
  store i32 %69, i32* %19, align 4
  br label %52

70:                                               ; preds = %59
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* %15, align 4
  %73 = shl i32 %72, %71
  store i32 %73, i32* %15, align 4
  %74 = load i32, i32* %11, align 4
  %75 = icmp eq i32 %74, 8
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load i32, i32* %18, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %17, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %17, align 4
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %17, align 4
  %83 = or i32 %82, %81
  store i32 %83, i32* %17, align 4
  %84 = load i32, i32* %17, align 4
  %85 = and i32 %84, 255
  store i32 %85, i32* %17, align 4
  %86 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %87 = load i32, i32* %10, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %17, align 4
  %90 = call i32 @cx231xx_write_i2c_data(%struct.cx231xx* %86, i32 %87, i32 %88, i32 2, i32 %89, i32 1)
  store i32 %90, i32* %16, align 4
  br label %104

91:                                               ; preds = %70
  %92 = load i32, i32* %18, align 4
  %93 = xor i32 %92, -1
  %94 = load i32, i32* %17, align 4
  %95 = and i32 %94, %93
  store i32 %95, i32* %17, align 4
  %96 = load i32, i32* %15, align 4
  %97 = load i32, i32* %17, align 4
  %98 = or i32 %97, %96
  store i32 %98, i32* %17, align 4
  %99 = load %struct.cx231xx*, %struct.cx231xx** %9, align 8
  %100 = load i32, i32* %10, align 4
  %101 = load i32, i32* %12, align 4
  %102 = load i32, i32* %17, align 4
  %103 = call i32 @cx231xx_write_i2c_data(%struct.cx231xx* %99, i32 %100, i32 %101, i32 2, i32 %102, i32 4)
  store i32 %103, i32* %16, align 4
  br label %104

104:                                              ; preds = %91, %76
  %105 = load i32, i32* %16, align 4
  store i32 %105, i32* %8, align 4
  br label %106

106:                                              ; preds = %104, %46, %29
  %107 = load i32, i32* %8, align 4
  ret i32 %107
}

declare dso_local i32 @cx231xx_read_i2c_data(%struct.cx231xx*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @cx231xx_write_i2c_data(%struct.cx231xx*, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
