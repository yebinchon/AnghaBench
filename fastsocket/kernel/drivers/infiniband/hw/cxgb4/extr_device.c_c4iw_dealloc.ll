; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_dealloc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/cxgb4/extr_device.c_c4iw_dealloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uld_ctx = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uld_ctx*)* @c4iw_dealloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @c4iw_dealloc(%struct.uld_ctx* %0) #0 {
  %2 = alloca %struct.uld_ctx*, align 8
  store %struct.uld_ctx* %0, %struct.uld_ctx** %2, align 8
  %3 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %4 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %3, i32 0, i32 0
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = call i32 @c4iw_rdev_close(%struct.TYPE_4__* %6)
  %8 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %9 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %8, i32 0, i32 0
  %10 = load %struct.TYPE_3__*, %struct.TYPE_3__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %10, i32 0, i32 4
  %12 = call i32 @idr_destroy(i32* %11)
  %13 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %14 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %13, i32 0, i32 0
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = call i32 @idr_destroy(i32* %16)
  %18 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %19 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %18, i32 0, i32 0
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = call i32 @idr_destroy(i32* %21)
  %23 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %24 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @iounmap(i32 %28)
  %30 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %31 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %30, i32 0, i32 0
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i32 0, i32 0
  %34 = call i32 @ib_dealloc_device(i32* %33)
  %35 = load %struct.uld_ctx*, %struct.uld_ctx** %2, align 8
  %36 = getelementptr inbounds %struct.uld_ctx, %struct.uld_ctx* %35, i32 0, i32 0
  store %struct.TYPE_3__* null, %struct.TYPE_3__** %36, align 8
  ret void
}

declare dso_local i32 @c4iw_rdev_close(%struct.TYPE_4__*) #1

declare dso_local i32 @idr_destroy(i32*) #1

declare dso_local i32 @iounmap(i32) #1

declare dso_local i32 @ib_dealloc_device(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
