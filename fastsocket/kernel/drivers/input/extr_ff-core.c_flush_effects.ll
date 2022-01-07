; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_flush_effects.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_ff-core.c_flush_effects.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { %struct.ff_device* }
%struct.ff_device = type { i32, i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [13 x i8] c"flushing now\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, %struct.file*)* @flush_effects to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_effects(%struct.input_dev* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.input_dev*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.ff_device*, align 8
  %6 = alloca i32, align 4
  store %struct.input_dev* %0, %struct.input_dev** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %8 = getelementptr inbounds %struct.input_dev, %struct.input_dev* %7, i32 0, i32 0
  %9 = load %struct.ff_device*, %struct.ff_device** %8, align 8
  store %struct.ff_device* %9, %struct.ff_device** %5, align 8
  %10 = call i32 @debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %12 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %11, i32 0, i32 1
  %13 = call i32 @mutex_lock(i32* %12)
  store i32 0, i32* %6, align 4
  br label %14

14:                                               ; preds = %25, %2
  %15 = load i32, i32* %6, align 4
  %16 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %17 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %28

20:                                               ; preds = %14
  %21 = load %struct.input_dev*, %struct.input_dev** %3, align 8
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.file*, %struct.file** %4, align 8
  %24 = call i32 @erase_effect(%struct.input_dev* %21, i32 %22, %struct.file* %23)
  br label %25

25:                                               ; preds = %20
  %26 = load i32, i32* %6, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %6, align 4
  br label %14

28:                                               ; preds = %14
  %29 = load %struct.ff_device*, %struct.ff_device** %5, align 8
  %30 = getelementptr inbounds %struct.ff_device, %struct.ff_device* %29, i32 0, i32 1
  %31 = call i32 @mutex_unlock(i32* %30)
  ret i32 0
}

declare dso_local i32 @debug(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @erase_effect(%struct.input_dev*, i32, %struct.file*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
