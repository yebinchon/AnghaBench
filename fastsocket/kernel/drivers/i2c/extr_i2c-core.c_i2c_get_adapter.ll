; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_get_adapter.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/i2c/extr_i2c-core.c_i2c_get_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i2c_adapter = type { i32 }

@core_lock = common dso_local global i32 0, align 4
@i2c_adapter_idr = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.i2c_adapter* @i2c_get_adapter(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.i2c_adapter*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call i32 @mutex_lock(i32* @core_lock)
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.i2c_adapter* @idr_find(i32* @i2c_adapter_idr, i32 %5)
  store %struct.i2c_adapter* %6, %struct.i2c_adapter** %3, align 8
  %7 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %8 = icmp ne %struct.i2c_adapter* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %1
  %10 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  %11 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @try_module_get(i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %9
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %3, align 8
  br label %16

16:                                               ; preds = %15, %9, %1
  %17 = call i32 @mutex_unlock(i32* @core_lock)
  %18 = load %struct.i2c_adapter*, %struct.i2c_adapter** %3, align 8
  ret %struct.i2c_adapter* %18
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.i2c_adapter* @idr_find(i32*, i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
