; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nv04.c_nv04_graph_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_graph = type { i32 }
%struct.TYPE_2__ = type { i64 }

@NV_40 = common dso_local global i64 0, align 8
@NV40_PGRAPH_STATUS_SYNC_STALL = common dso_local global i32 0, align 4
@NV04_PGRAPH_STATUS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"idle timed out with status 0x%08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nv04_graph_idle(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nouveau_graph*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = call %struct.nouveau_graph* @nouveau_graph(i8* %6)
  store %struct.nouveau_graph* %7, %struct.nouveau_graph** %4, align 8
  store i32 -1, i32* %5, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = call %struct.TYPE_2__* @nv_device(i8* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @NV_40, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %1
  %15 = load i32, i32* @NV40_PGRAPH_STATUS_SYNC_STALL, align 4
  %16 = xor i32 %15, -1
  %17 = load i32, i32* %5, align 4
  %18 = and i32 %17, %16
  store i32 %18, i32* %5, align 4
  br label %19

19:                                               ; preds = %14, %1
  %20 = load %struct.nouveau_graph*, %struct.nouveau_graph** %4, align 8
  %21 = load i32, i32* @NV04_PGRAPH_STATUS, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @nv_wait(%struct.nouveau_graph* %20, i32 %21, i32 %22, i32 0)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load %struct.nouveau_graph*, %struct.nouveau_graph** %4, align 8
  %27 = load %struct.nouveau_graph*, %struct.nouveau_graph** %4, align 8
  %28 = load i32, i32* @NV04_PGRAPH_STATUS, align 4
  %29 = call i32 @nv_rd32(%struct.nouveau_graph* %27, i32 %28)
  %30 = call i32 @nv_error(%struct.nouveau_graph* %26, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %2, align 4
  br label %32

31:                                               ; preds = %19
  store i32 1, i32* %2, align 4
  br label %32

32:                                               ; preds = %31, %25
  %33 = load i32, i32* %2, align 4
  ret i32 %33
}

declare dso_local %struct.nouveau_graph* @nouveau_graph(i8*) #1

declare dso_local %struct.TYPE_2__* @nv_device(i8*) #1

declare dso_local i32 @nv_wait(%struct.nouveau_graph*, i32, i32, i32) #1

declare dso_local i32 @nv_error(%struct.nouveau_graph*, i8*, i32) #1

declare dso_local i32 @nv_rd32(%struct.nouveau_graph*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
