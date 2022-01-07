; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_cmd_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_r300_cmdbuf.c_r300_cmd_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@RING_LOCALS = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLE = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLE = common dso_local global i32 0, align 4
@RADEON_WAIT_2D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_3D_IDLECLEAN = common dso_local global i32 0, align 4
@RADEON_WAIT_UNTIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32)* @r300_cmd_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @r300_cmd_wait(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.TYPE_5__, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  store i32 %1, i32* %7, align 4
  store i32* %0, i32** %4, align 8
  %8 = load i32, i32* @RING_LOCALS, align 4
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %52

14:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %3, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %43 [
    i32 129, label %18
    i32 128, label %20
    i32 131, label %22
    i32 133, label %26
    i32 130, label %30
    i32 132, label %34
  ]

18:                                               ; preds = %14
  %19 = load i32, i32* @RADEON_WAIT_2D_IDLE, align 4
  store i32 %19, i32* %5, align 4
  br label %44

20:                                               ; preds = %14
  %21 = load i32, i32* @RADEON_WAIT_3D_IDLE, align 4
  store i32 %21, i32* %5, align 4
  br label %44

22:                                               ; preds = %14
  %23 = load i32, i32* @RADEON_WAIT_2D_IDLE, align 4
  %24 = load i32, i32* @RADEON_WAIT_3D_IDLE, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %5, align 4
  br label %44

26:                                               ; preds = %14
  %27 = load i32, i32* @RADEON_WAIT_2D_IDLE, align 4
  %28 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %29 = or i32 %27, %28
  store i32 %29, i32* %5, align 4
  br label %44

30:                                               ; preds = %14
  %31 = load i32, i32* @RADEON_WAIT_3D_IDLE, align 4
  %32 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %33 = or i32 %31, %32
  store i32 %33, i32* %5, align 4
  br label %44

34:                                               ; preds = %14
  %35 = load i32, i32* @RADEON_WAIT_2D_IDLE, align 4
  %36 = load i32, i32* @RADEON_WAIT_2D_IDLECLEAN, align 4
  %37 = or i32 %35, %36
  store i32 %37, i32* %5, align 4
  %38 = load i32, i32* @RADEON_WAIT_3D_IDLE, align 4
  %39 = load i32, i32* @RADEON_WAIT_3D_IDLECLEAN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* %5, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %5, align 4
  br label %44

43:                                               ; preds = %14
  br label %52

44:                                               ; preds = %34, %30, %26, %22, %20, %18
  %45 = call i32 @BEGIN_RING(i32 2)
  %46 = load i32, i32* @RADEON_WAIT_UNTIL, align 4
  %47 = call i32 @CP_PACKET0(i32 %46, i32 0)
  %48 = call i32 @OUT_RING(i32 %47)
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @OUT_RING(i32 %49)
  %51 = call i32 (...) @ADVANCE_RING()
  br label %52

52:                                               ; preds = %44, %43, %13
  ret void
}

declare dso_local i32 @BEGIN_RING(i32) #1

declare dso_local i32 @OUT_RING(i32) #1

declare dso_local i32 @CP_PACKET0(i32, i32) #1

declare dso_local i32 @ADVANCE_RING(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
