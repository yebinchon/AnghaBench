; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_coredump_extra_notes_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_coredump.c_spufs_coredump_extra_notes_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32* }
%struct.file = type { i32 }
%struct.spu_context = type { i32 }

@spufs_coredump_read = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spufs_coredump_extra_notes_write(%struct.file* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.file* %0, %struct.file** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %46, %2
  %11 = call %struct.spu_context* @coredump_next_context(i32* %7)
  store %struct.spu_context* %11, %struct.spu_context** %6, align 8
  %12 = icmp ne %struct.spu_context* %11, null
  br i1 %12, label %13, label %51

13:                                               ; preds = %10
  %14 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %15 = call i32 @spu_acquire_saved(%struct.spu_context* %14)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = load i32, i32* %9, align 4
  store i32 %19, i32* %3, align 4
  br label %52

20:                                               ; preds = %13
  store i32 0, i32* %8, align 4
  br label %21

21:                                               ; preds = %43, %20
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @spufs_coredump_read, align 8
  %23 = load i32, i32* %8, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %29, label %46

29:                                               ; preds = %21
  %30 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %31 = load i32, i32* %8, align 4
  %32 = load %struct.file*, %struct.file** %4, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %5, align 8
  %35 = call i32 @spufs_arch_write_note(%struct.spu_context* %30, i32 %31, %struct.file* %32, i32 %33, i32* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %42

38:                                               ; preds = %29
  %39 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %40 = call i32 @spu_release_saved(%struct.spu_context* %39)
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %52

42:                                               ; preds = %29
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %8, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %8, align 4
  br label %21

46:                                               ; preds = %21
  %47 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %48 = call i32 @spu_release_saved(%struct.spu_context* %47)
  %49 = load i32, i32* %7, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %7, align 4
  br label %10

51:                                               ; preds = %10
  store i32 0, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %38, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.spu_context* @coredump_next_context(i32*) #1

declare dso_local i32 @spu_acquire_saved(%struct.spu_context*) #1

declare dso_local i32 @spufs_arch_write_note(%struct.spu_context*, i32, %struct.file*, i32, i32*) #1

declare dso_local i32 @spu_release_saved(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
