; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_padmux.c_pmx_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_padmux.c_pmx_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pmx = type { i32, i32, %struct.TYPE_2__*, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pmx_mutex = common dso_local global i32 0, align 4
@pmx_settings = common dso_local global %struct.pmx** null, align 8
@pmx_registers = common dso_local global %struct.pmx** null, align 8
@.str = private unnamed_addr constant [70 x i8] c"padmux: cannot activate setting. Bit conflict with an active setting\0A\00", align 1
@EUSERS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"padmux: setting nr %d is activated\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmx_activate(%struct.device* %0, %struct.pmx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pmx* %1, %struct.pmx** %5, align 8
  store i32 0, i32* %8, align 4
  %9 = load %struct.pmx*, %struct.pmx** %5, align 8
  %10 = icmp eq %struct.pmx* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.device*, %struct.device** %4, align 8
  %13 = icmp eq %struct.device* %12, null
  br i1 %13, label %14, label %17

14:                                               ; preds = %11, %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %96

17:                                               ; preds = %11
  %18 = call i32 @mutex_lock(i32* @pmx_mutex)
  store i32 0, i32* %6, align 4
  br label %19

19:                                               ; preds = %80, %17
  %20 = load i32, i32* %6, align 4
  %21 = load %struct.pmx**, %struct.pmx*** @pmx_settings, align 8
  %22 = call i32 @ARRAY_SIZE(%struct.pmx** %21)
  %23 = icmp slt i32 %20, %22
  br i1 %23, label %24, label %83

24:                                               ; preds = %19
  %25 = load %struct.pmx**, %struct.pmx*** @pmx_settings, align 8
  %26 = load i32, i32* %6, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.pmx*, %struct.pmx** %25, i64 %27
  %29 = load %struct.pmx*, %struct.pmx** %28, align 8
  %30 = getelementptr inbounds %struct.pmx, %struct.pmx* %29, i32 0, i32 3
  %31 = load i32*, i32** %30, align 8
  %32 = icmp eq i32* %31, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %24
  %34 = load %struct.pmx**, %struct.pmx*** @pmx_settings, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.pmx*, %struct.pmx** %34, i64 %36
  %38 = load %struct.pmx*, %struct.pmx** %37, align 8
  %39 = load %struct.pmx*, %struct.pmx** %5, align 8
  %40 = icmp eq %struct.pmx* %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %33, %24
  br label %80

42:                                               ; preds = %33
  store i32 0, i32* %7, align 4
  br label %43

43:                                               ; preds = %76, %42
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.pmx**, %struct.pmx*** @pmx_registers, align 8
  %46 = call i32 @ARRAY_SIZE(%struct.pmx** %45)
  %47 = icmp slt i32 %44, %46
  br i1 %47, label %48, label %79

48:                                               ; preds = %43
  %49 = load %struct.pmx**, %struct.pmx*** @pmx_settings, align 8
  %50 = load i32, i32* %6, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds %struct.pmx*, %struct.pmx** %49, i64 %51
  %53 = load %struct.pmx*, %struct.pmx** %52, align 8
  %54 = getelementptr inbounds %struct.pmx, %struct.pmx* %53, i32 0, i32 2
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = load i32, i32* %7, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.pmx*, %struct.pmx** %5, align 8
  %62 = getelementptr inbounds %struct.pmx, %struct.pmx* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = load i32, i32* %7, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = and i32 %60, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %48
  %72 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str, i64 0, i64 0))
  %73 = load i32, i32* @EUSERS, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %8, align 4
  br label %93

75:                                               ; preds = %48
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %7, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %7, align 4
  br label %43

79:                                               ; preds = %43
  br label %80

80:                                               ; preds = %79, %41
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %6, align 4
  br label %19

83:                                               ; preds = %19
  %84 = load %struct.pmx*, %struct.pmx** %5, align 8
  %85 = call i32 @update_registers(%struct.pmx* %84, i32 1)
  %86 = load %struct.pmx*, %struct.pmx** %5, align 8
  %87 = getelementptr inbounds %struct.pmx, %struct.pmx* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load %struct.device*, %struct.device** %4, align 8
  %89 = load %struct.pmx*, %struct.pmx** %5, align 8
  %90 = getelementptr inbounds %struct.pmx, %struct.pmx* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @dev_dbg(%struct.device* %88, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %91)
  br label %93

93:                                               ; preds = %83, %71
  %94 = call i32 @mutex_unlock(i32* @pmx_mutex)
  %95 = load i32, i32* %8, align 4
  store i32 %95, i32* %3, align 4
  br label %96

96:                                               ; preds = %93, %14
  %97 = load i32, i32* %3, align 4
  ret i32 %97
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.pmx**) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @update_registers(%struct.pmx*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
