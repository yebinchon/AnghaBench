; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_close_end_session.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/zoran/extr_zoran_driver.c_zoran_close_end_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zoran_fh = type { i64, i64, %struct.TYPE_6__, %struct.zoran* }
%struct.TYPE_6__ = type { i64, i64 }
%struct.zoran = type { i64, %struct.TYPE_5__, i32, %struct.TYPE_4__, i32*, i32, i64 }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64, i64 }

@ZORAN_FREE = common dso_local global i64 0, align 8
@ZORAN_MAP_MODE_RAW = common dso_local global i64 0, align 8
@BUZ_MODE_IDLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zoran_fh*)* @zoran_close_end_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zoran_close_end_session(%struct.zoran_fh* %0) #0 {
  %2 = alloca %struct.zoran_fh*, align 8
  %3 = alloca %struct.zoran*, align 8
  %4 = alloca i64, align 8
  store %struct.zoran_fh* %0, %struct.zoran_fh** %2, align 8
  %5 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %6 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %5, i32 0, i32 3
  %7 = load %struct.zoran*, %struct.zoran** %6, align 8
  store %struct.zoran* %7, %struct.zoran** %3, align 8
  %8 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %9 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ZORAN_FREE, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %1
  %14 = load i64, i64* @ZORAN_FREE, align 8
  %15 = load %struct.zoran*, %struct.zoran** %3, align 8
  %16 = getelementptr inbounds %struct.zoran, %struct.zoran* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %18 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %17, i32 0, i32 0
  store i64 %14, i64* %18, align 8
  %19 = load %struct.zoran*, %struct.zoran** %3, align 8
  %20 = getelementptr inbounds %struct.zoran, %struct.zoran* %19, i32 0, i32 6
  store i64 0, i64* %20, align 8
  %21 = load %struct.zoran*, %struct.zoran** %3, align 8
  %22 = getelementptr inbounds %struct.zoran, %struct.zoran* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %13
  %26 = load %struct.zoran*, %struct.zoran** %3, align 8
  %27 = call i32 @zr36057_overlay(%struct.zoran* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %13
  %29 = load %struct.zoran*, %struct.zoran** %3, align 8
  %30 = getelementptr inbounds %struct.zoran, %struct.zoran* %29, i32 0, i32 4
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %28, %1
  %32 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %33 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ZORAN_MAP_MODE_RAW, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %75

37:                                               ; preds = %31
  %38 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %39 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ZORAN_FREE, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %37
  %45 = load %struct.zoran*, %struct.zoran** %3, align 8
  %46 = getelementptr inbounds %struct.zoran, %struct.zoran* %45, i32 0, i32 2
  %47 = load i64, i64* %4, align 8
  %48 = call i32 @spin_lock_irqsave(i32* %46, i64 %47)
  %49 = load %struct.zoran*, %struct.zoran** %3, align 8
  %50 = call i32 @zr36057_set_memgrab(%struct.zoran* %49, i32 0)
  %51 = load %struct.zoran*, %struct.zoran** %3, align 8
  %52 = getelementptr inbounds %struct.zoran, %struct.zoran* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i64 0, i64* %53, align 8
  %54 = load i64, i64* @ZORAN_FREE, align 8
  %55 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %56 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 0
  store i64 %54, i64* %57, align 8
  %58 = load %struct.zoran*, %struct.zoran** %3, align 8
  %59 = getelementptr inbounds %struct.zoran, %struct.zoran* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i64 %54, i64* %60, align 8
  %61 = load %struct.zoran*, %struct.zoran** %3, align 8
  %62 = getelementptr inbounds %struct.zoran, %struct.zoran* %61, i32 0, i32 2
  %63 = load i64, i64* %4, align 8
  %64 = call i32 @spin_unlock_irqrestore(i32* %62, i64 %63)
  br label %65

65:                                               ; preds = %44, %37
  %66 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %67 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %65
  %72 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %73 = call i32 @v4l_fbuffer_free(%struct.zoran_fh* %72)
  br label %74

74:                                               ; preds = %71, %65
  br label %106

75:                                               ; preds = %31
  %76 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %77 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %76, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = load i64, i64* @ZORAN_FREE, align 8
  %81 = icmp ne i64 %79, %80
  br i1 %81, label %82, label %96

82:                                               ; preds = %75
  %83 = load %struct.zoran*, %struct.zoran** %3, align 8
  %84 = load i32, i32* @BUZ_MODE_IDLE, align 4
  %85 = call i32 @zr36057_enable_jpg(%struct.zoran* %83, i32 %84)
  %86 = load %struct.zoran*, %struct.zoran** %3, align 8
  %87 = getelementptr inbounds %struct.zoran, %struct.zoran* %86, i32 0, i32 1
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 1
  store i64 0, i64* %88, align 8
  %89 = load i64, i64* @ZORAN_FREE, align 8
  %90 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %91 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %90, i32 0, i32 2
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i64 %89, i64* %92, align 8
  %93 = load %struct.zoran*, %struct.zoran** %3, align 8
  %94 = getelementptr inbounds %struct.zoran, %struct.zoran* %93, i32 0, i32 1
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 0
  store i64 %89, i64* %95, align 8
  br label %96

96:                                               ; preds = %82, %75
  %97 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %98 = getelementptr inbounds %struct.zoran_fh, %struct.zoran_fh* %97, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %105

102:                                              ; preds = %96
  %103 = load %struct.zoran_fh*, %struct.zoran_fh** %2, align 8
  %104 = call i32 @jpg_fbuffer_free(%struct.zoran_fh* %103)
  br label %105

105:                                              ; preds = %102, %96
  br label %106

106:                                              ; preds = %105, %74
  ret void
}

declare dso_local i32 @zr36057_overlay(%struct.zoran*, i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @zr36057_set_memgrab(%struct.zoran*, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @v4l_fbuffer_free(%struct.zoran_fh*) #1

declare dso_local i32 @zr36057_enable_jpg(%struct.zoran*, i32) #1

declare dso_local i32 @jpg_fbuffer_free(%struct.zoran_fh*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
