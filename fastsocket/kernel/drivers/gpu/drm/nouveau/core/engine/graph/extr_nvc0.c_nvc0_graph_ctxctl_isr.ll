; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_ctxctl_isr.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/core/engine/graph/extr_nvc0.c_nvc0_graph_ctxctl_isr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvc0_graph_priv = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"CTXCTRL ucode error\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"CTXCTRL watchdog timeout\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"CTXCTRL 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvc0_graph_priv*)* @nvc0_graph_ctxctl_isr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvc0_graph_ctxctl_isr(%struct.nvc0_graph_priv* %0) #0 {
  %2 = alloca %struct.nvc0_graph_priv*, align 8
  %3 = alloca i32, align 4
  store %struct.nvc0_graph_priv* %0, %struct.nvc0_graph_priv** %2, align 8
  %4 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %5 = call i32 @nv_rd32(%struct.nvc0_graph_priv* %4, i32 4234264)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = and i32 %6, 1
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %11 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %12

12:                                               ; preds = %9, %1
  %13 = load i32, i32* %3, align 4
  %14 = and i32 %13, 524288
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %12
  %17 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %18 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %17, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %19

19:                                               ; preds = %16, %12
  %20 = load i32, i32* %3, align 4
  %21 = and i32 %20, -524290
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %19
  %24 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %25 = load i32, i32* %3, align 4
  %26 = call i32 (%struct.nvc0_graph_priv*, i8*, ...) @nv_error(%struct.nvc0_graph_priv* %24, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i32 %25)
  br label %27

27:                                               ; preds = %23, %19
  %28 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %29 = call i32 @nvc0_graph_ctxctl_debug(%struct.nvc0_graph_priv* %28)
  %30 = load %struct.nvc0_graph_priv*, %struct.nvc0_graph_priv** %2, align 8
  %31 = load i32, i32* %3, align 4
  %32 = call i32 @nv_wr32(%struct.nvc0_graph_priv* %30, i32 4234272, i32 %31)
  ret void
}

declare dso_local i32 @nv_rd32(%struct.nvc0_graph_priv*, i32) #1

declare dso_local i32 @nv_error(%struct.nvc0_graph_priv*, i8*, ...) #1

declare dso_local i32 @nvc0_graph_ctxctl_debug(%struct.nvc0_graph_priv*) #1

declare dso_local i32 @nv_wr32(%struct.nvc0_graph_priv*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
