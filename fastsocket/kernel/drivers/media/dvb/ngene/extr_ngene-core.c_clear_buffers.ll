; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_clear_buffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ngene/extr_ngene-core.c_clear_buffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ngene_channel = type { i32, i32, i32, %struct.TYPE_4__, i64, i32, %struct.SBufferHeader* }
%struct.TYPE_4__ = type { %struct.SBufferHeader* }
%struct.SBufferHeader = type { %struct.SBufferHeader*, i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@NGENE_IO_TSOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ngene_channel*)* @clear_buffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @clear_buffers(%struct.ngene_channel* %0) #0 {
  %2 = alloca %struct.ngene_channel*, align 8
  %3 = alloca %struct.SBufferHeader*, align 8
  store %struct.ngene_channel* %0, %struct.ngene_channel** %2, align 8
  %4 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %5 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %4, i32 0, i32 6
  %6 = load %struct.SBufferHeader*, %struct.SBufferHeader** %5, align 8
  store %struct.SBufferHeader* %6, %struct.SBufferHeader** %3, align 8
  br label %7

7:                                                ; preds = %33, %1
  %8 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %9 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = call i32 @memset(%struct.TYPE_6__* %10, i32 0, i32 4)
  %12 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %13 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %29

18:                                               ; preds = %7
  %19 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %20 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %23 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %26 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @FillTSBuffer(i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %18, %7
  %30 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %31 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %30, i32 0, i32 0
  %32 = load %struct.SBufferHeader*, %struct.SBufferHeader** %31, align 8
  store %struct.SBufferHeader* %32, %struct.SBufferHeader** %3, align 8
  br label %33

33:                                               ; preds = %29
  %34 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %35 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %36 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %35, i32 0, i32 6
  %37 = load %struct.SBufferHeader*, %struct.SBufferHeader** %36, align 8
  %38 = icmp ne %struct.SBufferHeader* %34, %37
  br i1 %38, label %7, label %39

39:                                               ; preds = %33
  %40 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %41 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @NGENE_IO_TSOUT, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %88

46:                                               ; preds = %39
  %47 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %48 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %51 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %50, i32 0, i32 6
  %52 = load %struct.SBufferHeader*, %struct.SBufferHeader** %51, align 8
  %53 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  store i32 %49, i32* %55, align 4
  %56 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %57 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %56, i32 0, i32 4
  store i64 0, i64* %57, align 8
  %58 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %59 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load %struct.SBufferHeader*, %struct.SBufferHeader** %60, align 8
  store %struct.SBufferHeader* %61, %struct.SBufferHeader** %3, align 8
  br label %62

62:                                               ; preds = %80, %46
  %63 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %64 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 0
  %66 = call i32 @memset(%struct.TYPE_6__* %65, i32 0, i32 4)
  %67 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %68 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %71 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %74 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @FillTSBuffer(i32 %69, i32 %72, i32 %75)
  %77 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %78 = getelementptr inbounds %struct.SBufferHeader, %struct.SBufferHeader* %77, i32 0, i32 0
  %79 = load %struct.SBufferHeader*, %struct.SBufferHeader** %78, align 8
  store %struct.SBufferHeader* %79, %struct.SBufferHeader** %3, align 8
  br label %80

80:                                               ; preds = %62
  %81 = load %struct.SBufferHeader*, %struct.SBufferHeader** %3, align 8
  %82 = load %struct.ngene_channel*, %struct.ngene_channel** %2, align 8
  %83 = getelementptr inbounds %struct.ngene_channel, %struct.ngene_channel* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  %85 = load %struct.SBufferHeader*, %struct.SBufferHeader** %84, align 8
  %86 = icmp ne %struct.SBufferHeader* %81, %85
  br i1 %86, label %62, label %87

87:                                               ; preds = %80
  br label %88

88:                                               ; preds = %87, %39
  ret void
}

declare dso_local i32 @memset(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @FillTSBuffer(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
