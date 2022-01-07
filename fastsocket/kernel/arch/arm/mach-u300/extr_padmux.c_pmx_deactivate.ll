; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_padmux.c_pmx_deactivate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_padmux.c_pmx_deactivate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.device = type { i32 }
%struct.pmx = type { i64, i32, %struct.device* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pmx_mutex = common dso_local global i32 0, align 4
@pmx_settings = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [79 x i8] c"padmux: cannot deactivate pmx setting as it was activated by another consumer\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"padmux: setting nr %d is deactivated\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmx_deactivate(%struct.device* %0, %struct.pmx* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.pmx*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.pmx* %1, %struct.pmx** %5, align 8
  %8 = load i32, i32* @ENOENT, align 4
  %9 = sub nsw i32 0, %8
  store i32 %9, i32* %7, align 4
  %10 = load %struct.pmx*, %struct.pmx** %5, align 8
  %11 = icmp eq %struct.pmx* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load %struct.device*, %struct.device** %4, align 8
  %14 = icmp eq %struct.device* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %80

18:                                               ; preds = %12
  %19 = call i32 @mutex_lock(i32* @pmx_mutex)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %74, %18
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_3__** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %77

25:                                               ; preds = %20
  %26 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %27 = load i32, i32* %6, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %26, i64 %28
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %25
  br label %74

35:                                               ; preds = %25
  %36 = load %struct.pmx*, %struct.pmx** %5, align 8
  %37 = getelementptr inbounds %struct.pmx, %struct.pmx* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %40 = load i32, i32* %6, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %39, i64 %41
  %43 = load %struct.TYPE_3__*, %struct.TYPE_3__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %38, %45
  br i1 %46, label %47, label %73

47:                                               ; preds = %35
  %48 = load %struct.device*, %struct.device** %4, align 8
  %49 = load %struct.pmx*, %struct.pmx** %5, align 8
  %50 = getelementptr inbounds %struct.pmx, %struct.pmx* %49, i32 0, i32 2
  %51 = load %struct.device*, %struct.device** %50, align 8
  %52 = icmp ne %struct.device* %48, %51
  br i1 %52, label %53, label %57

53:                                               ; preds = %47
  %54 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %7, align 4
  br label %74

57:                                               ; preds = %47
  %58 = load %struct.pmx*, %struct.pmx** %5, align 8
  %59 = call i32 @update_registers(%struct.pmx* %58, i32 0)
  %60 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %60, i64 %62
  %64 = load %struct.TYPE_3__*, %struct.TYPE_3__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %64, i32 0, i32 1
  store i32* null, i32** %65, align 8
  %66 = load %struct.pmx*, %struct.pmx** %5, align 8
  %67 = getelementptr inbounds %struct.pmx, %struct.pmx* %66, i32 0, i32 1
  store i32 0, i32* %67, align 8
  store i32 0, i32* %7, align 4
  %68 = load %struct.device*, %struct.device** %4, align 8
  %69 = load %struct.pmx*, %struct.pmx** %5, align 8
  %70 = getelementptr inbounds %struct.pmx, %struct.pmx* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = call i32 @dev_dbg(%struct.device* %68, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %71)
  br label %77

73:                                               ; preds = %35
  br label %74

74:                                               ; preds = %73, %53, %34
  %75 = load i32, i32* %6, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %6, align 4
  br label %20

77:                                               ; preds = %57, %20
  %78 = call i32 @mutex_unlock(i32* @pmx_mutex)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %77, %15
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__**) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @update_registers(%struct.pmx*, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i64) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
