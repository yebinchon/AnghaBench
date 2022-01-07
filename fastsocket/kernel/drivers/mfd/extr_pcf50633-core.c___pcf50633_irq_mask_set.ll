; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c___pcf50633_irq_mask_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/mfd/extr_pcf50633-core.c___pcf50633_irq_mask_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcf50633 = type { i32*, i32 }

@PCF50633_REG_INT1M = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcf50633*, i32, i32)* @__pcf50633_irq_mask_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__pcf50633_irq_mask_set(%struct.pcf50633* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcf50633*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.pcf50633* %0, %struct.pcf50633** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = ashr i32 %12, 3
  store i32 %13, i32* %11, align 4
  %14 = load i32, i32* @PCF50633_REG_INT1M, align 4
  %15 = load i32, i32* %11, align 4
  %16 = add nsw i32 %14, %15
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, 7
  %19 = shl i32 1, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %21 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %20, i32 0, i32 1
  %22 = call i32 @mutex_lock(i32* %21)
  %23 = load i32, i32* %6, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %62

25:                                               ; preds = %3
  %26 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @__pcf50633_read(%struct.pcf50633* %26, i32 %27, i32 1, i32* %9)
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %10, align 4
  %30 = icmp slt i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %25
  br label %92

32:                                               ; preds = %25
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  %36 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @__pcf50633_write(%struct.pcf50633* %36, i32 %37, i32 1, i32* %9)
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %32
  br label %92

42:                                               ; preds = %32
  %43 = load i32, i32* %8, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %46 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* %11, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %44
  store i32 %52, i32* %50, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %55 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %11, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  %60 = load i32, i32* %59, align 4
  %61 = or i32 %60, %53
  store i32 %61, i32* %59, align 4
  br label %91

62:                                               ; preds = %3
  %63 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %64 = load i32, i32* %7, align 4
  %65 = call i32 @__pcf50633_read(%struct.pcf50633* %63, i32 %64, i32 1, i32* %9)
  store i32 %65, i32* %10, align 4
  %66 = load i32, i32* %10, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %62
  br label %92

69:                                               ; preds = %62
  %70 = load i32, i32* %8, align 4
  %71 = xor i32 %70, -1
  %72 = load i32, i32* %9, align 4
  %73 = and i32 %72, %71
  store i32 %73, i32* %9, align 4
  %74 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %75 = load i32, i32* %7, align 4
  %76 = call i32 @__pcf50633_write(%struct.pcf50633* %74, i32 %75, i32 1, i32* %9)
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %69
  br label %92

80:                                               ; preds = %69
  %81 = load i32, i32* %8, align 4
  %82 = xor i32 %81, -1
  %83 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %84 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, %82
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %80, %42
  br label %92

92:                                               ; preds = %91, %79, %68, %41, %31
  %93 = load %struct.pcf50633*, %struct.pcf50633** %4, align 8
  %94 = getelementptr inbounds %struct.pcf50633, %struct.pcf50633* %93, i32 0, i32 1
  %95 = call i32 @mutex_unlock(i32* %94)
  %96 = load i32, i32* %10, align 4
  ret i32 %96
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @__pcf50633_read(%struct.pcf50633*, i32, i32, i32*) #1

declare dso_local i32 @__pcf50633_write(%struct.pcf50633*, i32, i32, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
