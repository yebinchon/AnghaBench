; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_padmux.c_pmx_put.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-u300/extr_padmux.c_pmx_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32* }
%struct.device = type { i32 }
%struct.pmx = type { i64, %struct.device* }

@ENOENT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@pmx_mutex = common dso_local global i32 0, align 4
@pmx_settings = common dso_local global %struct.TYPE_3__** null, align 8
@.str = private unnamed_addr constant [66 x i8] c"padmux: cannot release handle as it is bound to another consumer\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pmx_put(%struct.device* %0, %struct.pmx* %1) #0 {
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
  br label %61

18:                                               ; preds = %12
  %19 = call i32 @mutex_lock(i32* @pmx_mutex)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %55, %18
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %23 = call i32 @ARRAY_SIZE(%struct.TYPE_3__** %22)
  %24 = icmp slt i32 %21, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %20
  %26 = load %struct.pmx*, %struct.pmx** %5, align 8
  %27 = getelementptr inbounds %struct.pmx, %struct.pmx* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %29, i64 %31
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %28, %35
  br i1 %36, label %37, label %54

37:                                               ; preds = %25
  %38 = load %struct.device*, %struct.device** %4, align 8
  %39 = load %struct.pmx*, %struct.pmx** %5, align 8
  %40 = getelementptr inbounds %struct.pmx, %struct.pmx* %39, i32 0, i32 1
  %41 = load %struct.device*, %struct.device** %40, align 8
  %42 = icmp ne %struct.device* %38, %41
  br i1 %42, label %43, label %47

43:                                               ; preds = %37
  %44 = call i32 @WARN(i32 1, i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %7, align 4
  br label %58

47:                                               ; preds = %37
  %48 = load %struct.TYPE_3__**, %struct.TYPE_3__*** @pmx_settings, align 8
  %49 = load i32, i32* %6, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_3__*, %struct.TYPE_3__** %48, i64 %50
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 1
  store i32* null, i32** %53, align 8
  store i32 0, i32* %7, align 4
  br label %58

54:                                               ; preds = %25
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %6, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %6, align 4
  br label %20

58:                                               ; preds = %47, %43, %20
  %59 = call i32 @mutex_unlock(i32* @pmx_mutex)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %58, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_3__**) #1

declare dso_local i32 @WARN(i32, i8*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
