; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_restore_decr_wrapped.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/platforms/cell/spufs/extr_switch.c_restore_decr_wrapped.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spu_state = type { i32*, i32*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.spu = type { i32 }

@SPU_DECR_STATUS_WRAPPED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.spu_state*, %struct.spu*)* @restore_decr_wrapped to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @restore_decr_wrapped(%struct.spu_state* %0, %struct.spu* %1) #0 {
  %3 = alloca %struct.spu_state*, align 8
  %4 = alloca %struct.spu*, align 8
  store %struct.spu_state* %0, %struct.spu_state** %3, align 8
  store %struct.spu* %1, %struct.spu** %4, align 8
  %5 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %6 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %5, i32 0, i32 2
  %7 = load %struct.TYPE_4__*, %struct.TYPE_4__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = getelementptr inbounds i32, i32* %10, i64 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @SPU_DECR_STATUS_WRAPPED, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  br label %52

17:                                               ; preds = %2
  %18 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %19 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %45

24:                                               ; preds = %17
  %25 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %26 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  %29 = load i32, i32* %28, align 4
  %30 = and i32 %29, 32
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %24
  %33 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %34 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %33, i32 0, i32 1
  %35 = load i32*, i32** %34, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 0
  %37 = load i32, i32* %36, align 4
  %38 = and i32 %37, 32
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %32
  %41 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %42 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  store i32 1, i32* %44, align 4
  br label %45

45:                                               ; preds = %40, %32, %24, %17
  %46 = load %struct.spu_state*, %struct.spu_state** %3, align 8
  %47 = getelementptr inbounds %struct.spu_state, %struct.spu_state* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = or i32 %50, 32
  store i32 %51, i32* %49, align 4
  br label %52

52:                                               ; preds = %45, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
