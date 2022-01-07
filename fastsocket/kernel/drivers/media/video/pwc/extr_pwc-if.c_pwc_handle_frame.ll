; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_handle_frame.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pwc/extr_pwc-if.c_pwc_handle_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pwc_device = type { i32, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.TYPE_2__* }

@.str = private unnamed_addr constant [31 x i8] c"Huh? Read frame still in use?\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Woops. No frames ready.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pwc_handle_frame(%struct.pwc_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pwc_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.pwc_device* %0, %struct.pwc_device** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %7 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %6, i32 0, i32 0
  %8 = load i64, i64* %5, align 8
  %9 = call i32 @spin_lock_irqsave(i32* %7, i64 %8)
  %10 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %11 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = icmp ne %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %1
  %15 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %17 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %16, i32 0, i32 0
  %18 = load i64, i64* %5, align 8
  %19 = call i32 @spin_unlock_irqrestore(i32* %17, i64 %18)
  %20 = load i32, i32* %4, align 4
  store i32 %20, i32* %2, align 4
  br label %98

21:                                               ; preds = %1
  %22 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %23 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %22, i32 0, i32 4
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = icmp eq %struct.TYPE_2__* %24, null
  br i1 %25, label %26, label %28

26:                                               ; preds = %21
  %27 = call i32 @PWC_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  br label %45

28:                                               ; preds = %21
  %29 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %30 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %29, i32 0, i32 4
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %33 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %32, i32 0, i32 1
  store %struct.TYPE_2__* %31, %struct.TYPE_2__** %33, align 8
  %34 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %35 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %34, i32 0, i32 4
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %40 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %39, i32 0, i32 4
  store %struct.TYPE_2__* %38, %struct.TYPE_2__** %40, align 8
  %41 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %42 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %41, i32 0, i32 1
  %43 = load %struct.TYPE_2__*, %struct.TYPE_2__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %44, align 8
  br label %45

45:                                               ; preds = %28, %26
  %46 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %47 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %46, i32 0, i32 1
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = icmp ne %struct.TYPE_2__* %48, null
  br i1 %49, label %50, label %92

50:                                               ; preds = %45
  %51 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %52 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %51, i32 0, i32 0
  %53 = load i64, i64* %5, align 8
  %54 = call i32 @spin_unlock_irqrestore(i32* %52, i64 %53)
  %55 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %56 = call i32 @pwc_decompress(%struct.pwc_device* %55)
  store i32 %56, i32* %4, align 4
  %57 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %58 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %57, i32 0, i32 0
  %59 = load i64, i64* %5, align 8
  %60 = call i32 @spin_lock_irqsave(i32* %58, i64 %59)
  %61 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %62 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %61, i32 0, i32 3
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp eq %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %76

65:                                               ; preds = %50
  %66 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %67 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %66, i32 0, i32 1
  %68 = load %struct.TYPE_2__*, %struct.TYPE_2__** %67, align 8
  %69 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %70 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %69, i32 0, i32 3
  store %struct.TYPE_2__* %68, %struct.TYPE_2__** %70, align 8
  %71 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %72 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %71, i32 0, i32 3
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %75 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %74, i32 0, i32 2
  store %struct.TYPE_2__* %73, %struct.TYPE_2__** %75, align 8
  br label %89

76:                                               ; preds = %50
  %77 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %78 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %77, i32 0, i32 1
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %81 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %80, i32 0, i32 2
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  store %struct.TYPE_2__* %79, %struct.TYPE_2__** %83, align 8
  %84 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %85 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %84, i32 0, i32 1
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %88 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %87, i32 0, i32 2
  store %struct.TYPE_2__* %86, %struct.TYPE_2__** %88, align 8
  br label %89

89:                                               ; preds = %76, %65
  %90 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %91 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %90, i32 0, i32 1
  store %struct.TYPE_2__* null, %struct.TYPE_2__** %91, align 8
  br label %92

92:                                               ; preds = %89, %45
  %93 = load %struct.pwc_device*, %struct.pwc_device** %3, align 8
  %94 = getelementptr inbounds %struct.pwc_device, %struct.pwc_device* %93, i32 0, i32 0
  %95 = load i64, i64* %5, align 8
  %96 = call i32 @spin_unlock_irqrestore(i32* %94, i64 %95)
  %97 = load i32, i32* %4, align 4
  store i32 %97, i32* %2, align 4
  br label %98

98:                                               ; preds = %92, %14
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @PWC_ERROR(i8*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @pwc_decompress(%struct.pwc_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
