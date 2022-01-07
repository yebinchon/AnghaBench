; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_runcntl_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_backing_ops.c_spu_backing_runcntl_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_context = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32 }

@SPU_RUNCNTL_RUNNABLE = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_STOP = common dso_local global i32 0, align 4
@SPU_STATUS_STOPPED_BY_HALT = common dso_local global i32 0, align 4
@SPU_STATUS_SINGLE_STEP = common dso_local global i32 0, align 4
@SPU_STATUS_INVALID_INSTR = common dso_local global i32 0, align 4
@SPU_STATUS_INVALID_CH = common dso_local global i32 0, align 4
@SPU_STATUS_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_context*, i32)* @spu_backing_runcntl_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @spu_backing_runcntl_write(%struct.spu_context* %0, i32 %1) #0 {
  %3 = alloca %struct.spu_context*, align 8
  %4 = alloca i32, align 4
  store %struct.spu_context* %0, %struct.spu_context** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %6 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = call i32 @spin_lock(i32* %7)
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %11 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  store i32 %9, i32* %13, align 4
  %14 = load i32, i32* %4, align 4
  %15 = load i32, i32* @SPU_RUNCNTL_RUNNABLE, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %46

18:                                               ; preds = %2
  %19 = load i32, i32* @SPU_STATUS_STOPPED_BY_STOP, align 4
  %20 = xor i32 %19, -1
  %21 = load i32, i32* @SPU_STATUS_STOPPED_BY_HALT, align 4
  %22 = xor i32 %21, -1
  %23 = and i32 %20, %22
  %24 = load i32, i32* @SPU_STATUS_SINGLE_STEP, align 4
  %25 = xor i32 %24, -1
  %26 = and i32 %23, %25
  %27 = load i32, i32* @SPU_STATUS_INVALID_INSTR, align 4
  %28 = xor i32 %27, -1
  %29 = and i32 %26, %28
  %30 = load i32, i32* @SPU_STATUS_INVALID_CH, align 4
  %31 = xor i32 %30, -1
  %32 = and i32 %29, %31
  %33 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %34 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, %32
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @SPU_STATUS_RUNNING, align 4
  %40 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %41 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = or i32 %44, %39
  store i32 %45, i32* %43, align 4
  br label %55

46:                                               ; preds = %2
  %47 = load i32, i32* @SPU_STATUS_RUNNING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %50 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = and i32 %53, %48
  store i32 %54, i32* %52, align 4
  br label %55

55:                                               ; preds = %46, %18
  %56 = load %struct.spu_context*, %struct.spu_context** %3, align 8
  %57 = getelementptr inbounds %struct.spu_context, %struct.spu_context* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = call i32 @spin_unlock(i32* %58)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
