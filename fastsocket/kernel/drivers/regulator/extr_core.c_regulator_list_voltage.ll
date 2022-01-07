; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_list_voltage.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/regulator/extr_core.c_regulator_list_voltage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.regulator = type { %struct.regulator_dev* }
%struct.regulator_dev = type { %struct.TYPE_3__*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.regulator_ops* }
%struct.regulator_ops = type { i32 (%struct.regulator_dev.0*, i32)* }
%struct.regulator_dev.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @regulator_list_voltage(%struct.regulator* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.regulator*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.regulator_dev*, align 8
  %7 = alloca %struct.regulator_ops*, align 8
  %8 = alloca i32, align 4
  store %struct.regulator* %0, %struct.regulator** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.regulator*, %struct.regulator** %4, align 8
  %10 = getelementptr inbounds %struct.regulator, %struct.regulator* %9, i32 0, i32 0
  %11 = load %struct.regulator_dev*, %struct.regulator_dev** %10, align 8
  store %struct.regulator_dev* %11, %struct.regulator_dev** %6, align 8
  %12 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %13 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %12, i32 0, i32 2
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.regulator_ops*, %struct.regulator_ops** %15, align 8
  store %struct.regulator_ops* %16, %struct.regulator_ops** %7, align 8
  %17 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %18 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %17, i32 0, i32 0
  %19 = load i32 (%struct.regulator_dev.0*, i32)*, i32 (%struct.regulator_dev.0*, i32)** %18, align 8
  %20 = icmp ne i32 (%struct.regulator_dev.0*, i32)* %19, null
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %24 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %23, i32 0, i32 2
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp uge i32 %22, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %21, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %70

32:                                               ; preds = %21
  %33 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %34 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %33, i32 0, i32 1
  %35 = call i32 @mutex_lock(i32* %34)
  %36 = load %struct.regulator_ops*, %struct.regulator_ops** %7, align 8
  %37 = getelementptr inbounds %struct.regulator_ops, %struct.regulator_ops* %36, i32 0, i32 0
  %38 = load i32 (%struct.regulator_dev.0*, i32)*, i32 (%struct.regulator_dev.0*, i32)** %37, align 8
  %39 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %40 = bitcast %struct.regulator_dev* %39 to %struct.regulator_dev.0*
  %41 = load i32, i32* %5, align 4
  %42 = call i32 %38(%struct.regulator_dev.0* %40, i32 %41)
  store i32 %42, i32* %8, align 4
  %43 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %44 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %43, i32 0, i32 1
  %45 = call i32 @mutex_unlock(i32* %44)
  %46 = load i32, i32* %8, align 4
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %68

48:                                               ; preds = %32
  %49 = load i32, i32* %8, align 4
  %50 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %51 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = icmp slt i32 %49, %54
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %8, align 4
  br label %67

57:                                               ; preds = %48
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.regulator_dev*, %struct.regulator_dev** %6, align 8
  %60 = getelementptr inbounds %struct.regulator_dev, %struct.regulator_dev* %59, i32 0, i32 0
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = icmp sgt i32 %58, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %8, align 4
  br label %66

66:                                               ; preds = %65, %57
  br label %67

67:                                               ; preds = %66, %56
  br label %68

68:                                               ; preds = %67, %32
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %29
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
