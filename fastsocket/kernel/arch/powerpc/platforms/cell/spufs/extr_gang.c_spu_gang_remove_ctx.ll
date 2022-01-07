; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_gang.c_spu_gang_remove_ctx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_gang.c_spu_gang_remove_ctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_gang = type { i32, i32, i32 }
%struct.spu_context = type { i32, i32, %struct.spu_gang* }

@AFF_OFFSETS_SET = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spu_gang_remove_ctx(%struct.spu_gang* %0, %struct.spu_context* %1) #0 {
  %3 = alloca %struct.spu_gang*, align 8
  %4 = alloca %struct.spu_context*, align 8
  store %struct.spu_gang* %0, %struct.spu_gang** %3, align 8
  store %struct.spu_context* %1, %struct.spu_context** %4, align 8
  %5 = load %struct.spu_gang*, %struct.spu_gang** %3, align 8
  %6 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %5, i32 0, i32 0
  %7 = call i32 @mutex_lock(i32* %6)
  %8 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %9 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %8, i32 0, i32 2
  %10 = load %struct.spu_gang*, %struct.spu_gang** %9, align 8
  %11 = load %struct.spu_gang*, %struct.spu_gang** %3, align 8
  %12 = icmp ne %struct.spu_gang* %10, %11
  %13 = zext i1 %12 to i32
  %14 = call i32 @WARN_ON(i32 %13)
  %15 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %16 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %15, i32 0, i32 1
  %17 = call i32 @list_empty(i32* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %29, label %19

19:                                               ; preds = %2
  %20 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %21 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %20, i32 0, i32 1
  %22 = call i32 @list_del_init(i32* %21)
  %23 = load i32, i32* @AFF_OFFSETS_SET, align 4
  %24 = xor i32 %23, -1
  %25 = load %struct.spu_gang*, %struct.spu_gang** %3, align 8
  %26 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %19, %2
  %30 = load %struct.spu_context*, %struct.spu_context** %4, align 8
  %31 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %30, i32 0, i32 0
  %32 = call i32 @list_del_init(i32* %31)
  %33 = load %struct.spu_gang*, %struct.spu_gang** %3, align 8
  %34 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = add nsw i32 %35, -1
  store i32 %36, i32* %34, align 4
  %37 = load %struct.spu_gang*, %struct.spu_gang** %3, align 8
  %38 = getelementptr inbounds %struct.spu_gang, %struct.spu_gang* %37, i32 0, i32 0
  %39 = call i32 @mutex_unlock(i32* %38)
  %40 = load %struct.spu_gang*, %struct.spu_gang** %3, align 8
  %41 = call i32 @put_spu_gang(%struct.spu_gang* %40)
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @put_spu_gang(%struct.spu_gang*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
