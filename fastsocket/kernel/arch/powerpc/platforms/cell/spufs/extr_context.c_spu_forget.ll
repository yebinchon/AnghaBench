; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_context.c_spu_forget.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_context.c_spu_forget.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { i64, %struct.mm_struct*, i32 }
%struct.mm_struct = type { i32 }

@SPU_STATE_SAVED = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_forget(%struct.spu_context* %0) #0 {
  %2 = alloca %struct.spu_context*, align 8
  %3 = alloca %struct.mm_struct*, align 8
  store %struct.spu_context* %0, %struct.spu_context** %2, align 8
  %4 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %5 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %4, i32 0, i32 2
  %6 = call i32 @mutex_lock(i32* %5)
  %7 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %8 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SPU_STATE_SAVED, align 8
  %11 = icmp ne i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %1
  %13 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %14 = call i32 @spu_deactivate(%struct.spu_context* %13)
  br label %15

15:                                               ; preds = %12, %1
  %16 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %17 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %16, i32 0, i32 1
  %18 = load %struct.mm_struct*, %struct.mm_struct** %17, align 8
  store %struct.mm_struct* %18, %struct.mm_struct** %3, align 8
  %19 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 1
  store %struct.mm_struct* null, %struct.mm_struct** %20, align 8
  %21 = load %struct.mm_struct*, %struct.mm_struct** %3, align 8
  %22 = call i32 @mmput(%struct.mm_struct* %21)
  %23 = load %struct.spu_context*, %struct.spu_context** %2, align 8
  %24 = call i32 @spu_release(%struct.spu_context* %23)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @spu_deactivate(%struct.spu_context*) #1

declare dso_local i32 @mmput(%struct.mm_struct*) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
