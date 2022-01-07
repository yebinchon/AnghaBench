; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_evo_wait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nv50_display.c_evo_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nv50_dmac = type { i32*, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"channel stalled\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i8*, i32)* @evo_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @evo_wait(i8* %0, i32 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nv50_dmac*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.nv50_dmac*
  store %struct.nv50_dmac* %9, %struct.nv50_dmac** %6, align 8
  %10 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %11 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %10, i32 0, i32 1
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = call i32 @nv_ro32(i32 %13, i32 0)
  %15 = sdiv i32 %14, 4
  store i32 %15, i32* %7, align 4
  %16 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %17 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %16, i32 0, i32 2
  %18 = call i32 @mutex_lock(i32* %17)
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %5, align 4
  %21 = add nsw i32 %19, %20
  %22 = load i32, i32* @PAGE_SIZE, align 4
  %23 = sdiv i32 %22, 4
  %24 = sub nsw i32 %23, 8
  %25 = icmp sge i32 %21, %24
  br i1 %25, label %26, label %54

26:                                               ; preds = %2
  %27 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %28 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %7, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  store i32 536870912, i32* %32, align 4
  %33 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %34 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @nv_wo32(i32 %36, i32 0, i32 0)
  %38 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %39 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @nv_wait(i32 %41, i32 4, i32 -1, i32 0)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %53, label %44

44:                                               ; preds = %26
  %45 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %46 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %45, i32 0, i32 2
  %47 = call i32 @mutex_unlock(i32* %46)
  %48 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %49 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @NV_ERROR(i32 %51, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32* null, i32** %3, align 8
  br label %61

53:                                               ; preds = %26
  store i32 0, i32* %7, align 4
  br label %54

54:                                               ; preds = %53, %2
  %55 = load %struct.nv50_dmac*, %struct.nv50_dmac** %6, align 8
  %56 = getelementptr inbounds %struct.nv50_dmac, %struct.nv50_dmac* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, i32* %57, i64 %59
  store i32* %60, i32** %3, align 8
  br label %61

61:                                               ; preds = %54, %44
  %62 = load i32*, i32** %3, align 8
  ret i32* %62
}

declare dso_local i32 @nv_ro32(i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @nv_wo32(i32, i32, i32) #1

declare dso_local i32 @nv_wait(i32, i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @NV_ERROR(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
