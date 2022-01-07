; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___map_bio.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm.c___map_bio.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_target = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 (%struct.dm_target*, %struct.bio*, i32*)* }
%struct.bio = type { %struct.dm_target_io*, i32*, i32, i32 }
%struct.dm_target_io = type { %struct.TYPE_8__*, i32 }
%struct.TYPE_8__ = type { %struct.mapped_device*, %struct.TYPE_7__*, i32 }
%struct.mapped_device = type { %struct.dm_target_io* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }

@clone_endio = common dso_local global i32* null, align 8
@DM_MAPIO_REMAPPED = common dso_local global i32 0, align 4
@DM_MAPIO_REQUEUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"unimplemented target map return value: %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dm_target*, %struct.bio*, %struct.dm_target_io*)* @__map_bio to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__map_bio(%struct.dm_target* %0, %struct.bio* %1, %struct.dm_target_io* %2) #0 {
  %4 = alloca %struct.dm_target*, align 8
  %5 = alloca %struct.bio*, align 8
  %6 = alloca %struct.dm_target_io*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mapped_device*, align 8
  store %struct.dm_target* %0, %struct.dm_target** %4, align 8
  store %struct.bio* %1, %struct.bio** %5, align 8
  store %struct.dm_target_io* %2, %struct.dm_target_io** %6, align 8
  %10 = load i32*, i32** @clone_endio, align 8
  %11 = load %struct.bio*, %struct.bio** %5, align 8
  %12 = getelementptr inbounds %struct.bio, %struct.bio* %11, i32 0, i32 1
  store i32* %10, i32** %12, align 8
  %13 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %14 = load %struct.bio*, %struct.bio** %5, align 8
  %15 = getelementptr inbounds %struct.bio, %struct.bio* %14, i32 0, i32 0
  store %struct.dm_target_io* %13, %struct.dm_target_io** %15, align 8
  %16 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %17 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 2
  %20 = call i32 @atomic_inc(i32* %19)
  %21 = load %struct.bio*, %struct.bio** %5, align 8
  %22 = getelementptr inbounds %struct.bio, %struct.bio* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 4
  store i32 %23, i32* %8, align 4
  %24 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %25 = getelementptr inbounds %struct.dm_target, %struct.dm_target* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32 (%struct.dm_target*, %struct.bio*, i32*)*, i32 (%struct.dm_target*, %struct.bio*, i32*)** %27, align 8
  %29 = load %struct.dm_target*, %struct.dm_target** %4, align 8
  %30 = load %struct.bio*, %struct.bio** %5, align 8
  %31 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %32 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %31, i32 0, i32 1
  %33 = call i32 %28(%struct.dm_target* %29, %struct.bio* %30, i32* %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = load i32, i32* @DM_MAPIO_REMAPPED, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %56

37:                                               ; preds = %3
  %38 = load %struct.bio*, %struct.bio** %5, align 8
  %39 = getelementptr inbounds %struct.bio, %struct.bio* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @bdev_get_queue(i32 %40)
  %42 = load %struct.bio*, %struct.bio** %5, align 8
  %43 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %44 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %43, i32 0, i32 0
  %45 = load %struct.TYPE_8__*, %struct.TYPE_8__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @trace_block_remap(i32 %41, %struct.bio* %42, i32 %51, i32 %52)
  %54 = load %struct.bio*, %struct.bio** %5, align 8
  %55 = call i32 @generic_make_request(%struct.bio* %54)
  br label %95

56:                                               ; preds = %3
  %57 = load i32, i32* %7, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @DM_MAPIO_REQUEUE, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %86

63:                                               ; preds = %59, %56
  %64 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %65 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %64, i32 0, i32 0
  %66 = load %struct.TYPE_8__*, %struct.TYPE_8__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = load %struct.mapped_device*, %struct.mapped_device** %67, align 8
  store %struct.mapped_device* %68, %struct.mapped_device** %9, align 8
  %69 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %70 = getelementptr inbounds %struct.dm_target_io, %struct.dm_target_io* %69, i32 0, i32 0
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @dec_pending(%struct.TYPE_8__* %71, i32 %72)
  %74 = load %struct.bio*, %struct.bio** %5, align 8
  %75 = getelementptr inbounds %struct.bio, %struct.bio* %74, i32 0, i32 1
  store i32* null, i32** %75, align 8
  %76 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %77 = getelementptr inbounds %struct.mapped_device, %struct.mapped_device* %76, i32 0, i32 0
  %78 = load %struct.dm_target_io*, %struct.dm_target_io** %77, align 8
  %79 = load %struct.bio*, %struct.bio** %5, align 8
  %80 = getelementptr inbounds %struct.bio, %struct.bio* %79, i32 0, i32 0
  store %struct.dm_target_io* %78, %struct.dm_target_io** %80, align 8
  %81 = load %struct.bio*, %struct.bio** %5, align 8
  %82 = call i32 @bio_put(%struct.bio* %81)
  %83 = load %struct.mapped_device*, %struct.mapped_device** %9, align 8
  %84 = load %struct.dm_target_io*, %struct.dm_target_io** %6, align 8
  %85 = call i32 @free_tio(%struct.mapped_device* %83, %struct.dm_target_io* %84)
  br label %94

86:                                               ; preds = %59
  %87 = load i32, i32* %7, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %93

89:                                               ; preds = %86
  %90 = load i32, i32* %7, align 4
  %91 = call i32 @DMWARN(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %90)
  %92 = call i32 (...) @BUG()
  br label %93

93:                                               ; preds = %89, %86
  br label %94

94:                                               ; preds = %93, %63
  br label %95

95:                                               ; preds = %94, %37
  ret void
}

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_block_remap(i32, %struct.bio*, i32, i32) #1

declare dso_local i32 @bdev_get_queue(i32) #1

declare dso_local i32 @generic_make_request(%struct.bio*) #1

declare dso_local i32 @dec_pending(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @bio_put(%struct.bio*) #1

declare dso_local i32 @free_tio(%struct.mapped_device*, %struct.dm_target_io*) #1

declare dso_local i32 @DMWARN(i8*, i32) #1

declare dso_local i32 @BUG(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
