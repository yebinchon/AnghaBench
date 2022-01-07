; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_get_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_ucma.c_ucma_get_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ucma_context = type { i32 }
%struct.ucma_file = type { i32 }

@mut = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ucma_context* (%struct.ucma_file*, i32)* @ucma_get_ctx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ucma_context* @ucma_get_ctx(%struct.ucma_file* %0, i32 %1) #0 {
  %3 = alloca %struct.ucma_file*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ucma_context*, align 8
  store %struct.ucma_file* %0, %struct.ucma_file** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = call i32 @mutex_lock(i32* @mut)
  %7 = load i32, i32* %4, align 4
  %8 = load %struct.ucma_file*, %struct.ucma_file** %3, align 8
  %9 = call %struct.ucma_context* @_ucma_find_context(i32 %7, %struct.ucma_file* %8)
  store %struct.ucma_context* %9, %struct.ucma_context** %5, align 8
  %10 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %11 = call i32 @IS_ERR(%struct.ucma_context* %10)
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %2
  %14 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  %15 = getelementptr inbounds %struct.ucma_context, %struct.ucma_context* %14, i32 0, i32 0
  %16 = call i32 @atomic_inc(i32* %15)
  br label %17

17:                                               ; preds = %13, %2
  %18 = call i32 @mutex_unlock(i32* @mut)
  %19 = load %struct.ucma_context*, %struct.ucma_context** %5, align 8
  ret %struct.ucma_context* %19
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ucma_context* @_ucma_find_context(i32, %struct.ucma_file*) #1

declare dso_local i32 @IS_ERR(%struct.ucma_context*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
