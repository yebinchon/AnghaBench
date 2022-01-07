; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_cce.c_r128_do_pixcache_flush.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/r128/extr_r128_cce.c_r128_do_pixcache_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@R128_PC_NGUI_CTLSTAT = common dso_local global i32 0, align 4
@R128_PC_FLUSH_ALL = common dso_local global i32 0, align 4
@R128_PC_BUSY = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @r128_do_pixcache_flush to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @r128_do_pixcache_flush(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %6 = load i32, i32* @R128_PC_NGUI_CTLSTAT, align 4
  %7 = call i32 @R128_READ(i32 %6)
  %8 = load i32, i32* @R128_PC_FLUSH_ALL, align 4
  %9 = or i32 %7, %8
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* @R128_PC_NGUI_CTLSTAT, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @R128_WRITE(i32 %10, i32 %11)
  store i32 0, i32* %5, align 4
  br label %13

13:                                               ; preds = %28, %1
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp slt i32 %14, %17
  br i1 %18, label %19, label %31

19:                                               ; preds = %13
  %20 = load i32, i32* @R128_PC_NGUI_CTLSTAT, align 4
  %21 = call i32 @R128_READ(i32 %20)
  %22 = load i32, i32* @R128_PC_BUSY, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %34

26:                                               ; preds = %19
  %27 = call i32 @DRM_UDELAY(i32 1)
  br label %28

28:                                               ; preds = %26
  %29 = load i32, i32* %5, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %5, align 4
  br label %13

31:                                               ; preds = %13
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %31, %25
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @R128_READ(i32) #1

declare dso_local i32 @R128_WRITE(i32, i32) #1

declare dso_local i32 @DRM_UDELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
