; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_switch_log_open.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_switch_log_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32 }
%struct.spu_context = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i64, i64 }
%struct.TYPE_4__ = type { %struct.spu_context* }

@EBUSY = common dso_local global i32 0, align 4
@SWITCH_LOG_BUFSIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @spufs_switch_log_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @spufs_switch_log_open(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.file*, align 8
  %6 = alloca %struct.spu_context*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.file* %1, %struct.file** %5, align 8
  %8 = load %struct.inode*, %struct.inode** %4, align 8
  %9 = call %struct.TYPE_4__* @SPUFS_I(%struct.inode* %8)
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load %struct.spu_context*, %struct.spu_context** %10, align 8
  store %struct.spu_context* %11, %struct.spu_context** %6, align 8
  %12 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %13 = call i32 @spu_acquire(%struct.spu_context* %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %7, align 4
  store i32 %17, i32* %3, align 4
  br label %61

18:                                               ; preds = %2
  %19 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %20 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = icmp ne %struct.TYPE_3__* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EBUSY, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %7, align 4
  br label %57

26:                                               ; preds = %18
  %27 = load i32, i32* @SWITCH_LOG_BUFSIZE, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 4, %29
  %31 = trunc i64 %30 to i32
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.TYPE_3__* @kmalloc(i32 %31, i32 %32)
  %34 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %35 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %34, i32 0, i32 0
  store %struct.TYPE_3__* %33, %struct.TYPE_3__** %35, align 8
  %36 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %37 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %36, i32 0, i32 0
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %37, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %26
  %41 = load i32, i32* @ENOMEM, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %7, align 4
  br label %57

43:                                               ; preds = %26
  %44 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %45 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %49 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %48, i32 0, i32 0
  %50 = load %struct.TYPE_3__*, %struct.TYPE_3__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %50, i32 0, i32 2
  store i64 0, i64* %51, align 8
  %52 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %53 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %52, i32 0, i32 0
  %54 = load %struct.TYPE_3__*, %struct.TYPE_3__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %54, i32 0, i32 0
  %56 = call i32 @init_waitqueue_head(i32* %55)
  store i32 0, i32* %7, align 4
  br label %57

57:                                               ; preds = %43, %40, %23
  %58 = load %struct.spu_context*, %struct.spu_context** %6, align 8
  %59 = call i32 @spu_release(%struct.spu_context* %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %16
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.TYPE_4__* @SPUFS_I(%struct.inode*) #1

declare dso_local i32 @spu_acquire(%struct.spu_context*) #1

declare dso_local %struct.TYPE_3__* @kmalloc(i32, i32) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spu_release(%struct.spu_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
