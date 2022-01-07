; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_release_io_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_pcmcia_resource.c_release_io_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@MAX_IO_WIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pcmcia_socket*, i32, i32)* @release_io_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @release_io_space(%struct.pcmcia_socket* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.pcmcia_socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %101, %3
  %9 = load i32, i32* %7, align 4
  %10 = load i32, i32* @MAX_IO_WIN, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %104

12:                                               ; preds = %8
  %13 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %14 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = load i32, i32* %7, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i64 %17
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = icmp ne %struct.TYPE_5__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %12
  br label %101

23:                                               ; preds = %12
  %24 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %25 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %24, i32 0, i32 0
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = load i32, i32* %7, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp ule i32 %33, %34
  br i1 %35, label %36, label %100

36:                                               ; preds = %23
  %37 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %38 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = add i32 %47, %48
  %50 = sub i32 %49, 1
  %51 = icmp uge i32 %46, %50
  br i1 %51, label %52, label %100

52:                                               ; preds = %36
  %53 = load i32, i32* %6, align 4
  %54 = zext i32 %53 to i64
  %55 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %56 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %55, i32 0, i32 0
  %57 = load %struct.TYPE_4__*, %struct.TYPE_4__** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = sub nsw i64 %62, %54
  store i64 %63, i64* %61, align 8
  %64 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %65 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %64, i32 0, i32 0
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %65, align 8
  %67 = load i32, i32* %7, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %71, 0
  br i1 %72, label %73, label %99

73:                                               ; preds = %52
  %74 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %75 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %74, i32 0, i32 0
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %75, align 8
  %77 = load i32, i32* %7, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %80, align 8
  %82 = call i32 @release_resource(%struct.TYPE_5__* %81)
  %83 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %84 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %83, i32 0, i32 0
  %85 = load %struct.TYPE_4__*, %struct.TYPE_4__** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %85, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i32 0, i32 1
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %89, align 8
  %91 = call i32 @kfree(%struct.TYPE_5__* %90)
  %92 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %4, align 8
  %93 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = load i32, i32* %7, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 1
  store %struct.TYPE_5__* null, %struct.TYPE_5__** %98, align 8
  br label %99

99:                                               ; preds = %73, %52
  br label %100

100:                                              ; preds = %99, %36, %23
  br label %101

101:                                              ; preds = %100, %22
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %8

104:                                              ; preds = %8
  ret void
}

declare dso_local i32 @release_resource(%struct.TYPE_5__*) #1

declare dso_local i32 @kfree(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
