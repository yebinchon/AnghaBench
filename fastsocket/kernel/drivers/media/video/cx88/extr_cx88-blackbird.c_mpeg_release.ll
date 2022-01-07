; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_mpeg_release.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/cx88/extr_cx88-blackbird.c_mpeg_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { %struct.cx8802_fh* }
%struct.cx8802_fh = type { i32, %struct.cx8802_dev* }
%struct.cx8802_dev = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.cx8802_driver = type { i32 (%struct.cx8802_driver*)* }

@CX88_MPEG_BLACKBIRD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*)* @mpeg_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mpeg_release(%struct.file* %0) #0 {
  %2 = alloca %struct.file*, align 8
  %3 = alloca %struct.cx8802_fh*, align 8
  %4 = alloca %struct.cx8802_dev*, align 8
  %5 = alloca %struct.cx8802_driver*, align 8
  store %struct.file* %0, %struct.file** %2, align 8
  %6 = load %struct.file*, %struct.file** %2, align 8
  %7 = getelementptr inbounds %struct.file, %struct.file* %6, i32 0, i32 0
  %8 = load %struct.cx8802_fh*, %struct.cx8802_fh** %7, align 8
  store %struct.cx8802_fh* %8, %struct.cx8802_fh** %3, align 8
  %9 = load %struct.cx8802_fh*, %struct.cx8802_fh** %3, align 8
  %10 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %9, i32 0, i32 1
  %11 = load %struct.cx8802_dev*, %struct.cx8802_dev** %10, align 8
  store %struct.cx8802_dev* %11, %struct.cx8802_dev** %4, align 8
  store %struct.cx8802_driver* null, %struct.cx8802_driver** %5, align 8
  %12 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %13 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %26

16:                                               ; preds = %1
  %17 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %18 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = call i32 @atomic_read(i32* %20)
  %22 = icmp eq i32 %21, 1
  br i1 %22, label %23, label %26

23:                                               ; preds = %16
  %24 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %25 = call i32 @blackbird_stop_codec(%struct.cx8802_dev* %24)
  br label %26

26:                                               ; preds = %23, %16, %1
  %27 = load %struct.cx8802_fh*, %struct.cx8802_fh** %3, align 8
  %28 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %27, i32 0, i32 1
  %29 = load %struct.cx8802_dev*, %struct.cx8802_dev** %28, align 8
  %30 = call i32 @cx8802_cancel_buffers(%struct.cx8802_dev* %29)
  %31 = load %struct.cx8802_fh*, %struct.cx8802_fh** %3, align 8
  %32 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %31, i32 0, i32 0
  %33 = call i32 @videobuf_stop(i32* %32)
  %34 = load %struct.cx8802_fh*, %struct.cx8802_fh** %3, align 8
  %35 = getelementptr inbounds %struct.cx8802_fh, %struct.cx8802_fh* %34, i32 0, i32 0
  %36 = call i32 @videobuf_mmap_free(i32* %35)
  %37 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %38 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 1
  %41 = call i32 @mutex_lock(i32* %40)
  %42 = load %struct.file*, %struct.file** %2, align 8
  %43 = getelementptr inbounds %struct.file, %struct.file* %42, i32 0, i32 0
  store %struct.cx8802_fh* null, %struct.cx8802_fh** %43, align 8
  %44 = load %struct.cx8802_fh*, %struct.cx8802_fh** %3, align 8
  %45 = call i32 @kfree(%struct.cx8802_fh* %44)
  %46 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %47 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = call i32 @mutex_unlock(i32* %49)
  %51 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %52 = load i32, i32* @CX88_MPEG_BLACKBIRD, align 4
  %53 = call %struct.cx8802_driver* @cx8802_get_driver(%struct.cx8802_dev* %51, i32 %52)
  store %struct.cx8802_driver* %53, %struct.cx8802_driver** %5, align 8
  %54 = load %struct.cx8802_driver*, %struct.cx8802_driver** %5, align 8
  %55 = icmp ne %struct.cx8802_driver* %54, null
  br i1 %55, label %56, label %62

56:                                               ; preds = %26
  %57 = load %struct.cx8802_driver*, %struct.cx8802_driver** %5, align 8
  %58 = getelementptr inbounds %struct.cx8802_driver, %struct.cx8802_driver* %57, i32 0, i32 0
  %59 = load i32 (%struct.cx8802_driver*)*, i32 (%struct.cx8802_driver*)** %58, align 8
  %60 = load %struct.cx8802_driver*, %struct.cx8802_driver** %5, align 8
  %61 = call i32 %59(%struct.cx8802_driver* %60)
  br label %62

62:                                               ; preds = %56, %26
  %63 = load %struct.cx8802_dev*, %struct.cx8802_dev** %4, align 8
  %64 = getelementptr inbounds %struct.cx8802_dev, %struct.cx8802_dev* %63, i32 0, i32 0
  %65 = load %struct.TYPE_2__*, %struct.TYPE_2__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  %67 = call i32 @atomic_dec(i32* %66)
  ret i32 0
}

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @blackbird_stop_codec(%struct.cx8802_dev*) #1

declare dso_local i32 @cx8802_cancel_buffers(%struct.cx8802_dev*) #1

declare dso_local i32 @videobuf_stop(i32*) #1

declare dso_local i32 @videobuf_mmap_free(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kfree(%struct.cx8802_fh*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local %struct.cx8802_driver* @cx8802_get_driver(%struct.cx8802_dev*, i32) #1

declare dso_local i32 @atomic_dec(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
