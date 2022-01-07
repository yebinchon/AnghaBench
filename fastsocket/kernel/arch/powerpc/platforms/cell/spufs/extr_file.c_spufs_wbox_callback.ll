; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_wbox_callback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_file.c_spufs_wbox_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu = type { %struct.spu_context* }
%struct.spu_context = type { i32, i32 }

@SIGIO = common dso_local global i32 0, align 4
@POLLOUT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @spufs_wbox_callback(%struct.spu* %0) #0 {
  %2 = alloca %struct.spu*, align 8
  %3 = alloca %struct.spu_context*, align 8
  store %struct.spu* %0, %struct.spu** %2, align 8
  %4 = load %struct.spu*, %struct.spu** %2, align 8
  %5 = getelementptr inbounds %struct.spu, %struct.spu* %4, i32 0, i32 0
  %6 = load %struct.spu_context*, %struct.spu_context** %5, align 8
  store %struct.spu_context* %6, %struct.spu_context** %3, align 8
  %7 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %8 = icmp ne %struct.spu_context* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %19

10:                                               ; preds = %1
  %11 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %12 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %11, i32 0, i32 1
  %13 = call i32 @wake_up_all(i32* %12)
  %14 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %15 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %14, i32 0, i32 0
  %16 = load i32, i32* @SIGIO, align 4
  %17 = load i32, i32* @POLLOUT, align 4
  %18 = call i32 @kill_fasync(i32* %15, i32 %16, i32 %17)
  br label %19

19:                                               ; preds = %10, %9
  ret void
}

declare dso_local i32 @wake_up_all(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
