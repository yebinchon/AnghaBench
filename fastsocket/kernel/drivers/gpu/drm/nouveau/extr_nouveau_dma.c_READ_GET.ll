; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_READ_GET.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/nouveau/extr_nouveau_dma.c_READ_GET.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nouveau_channel = type { %struct.TYPE_6__, %struct.TYPE_4__, i64, i32, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nouveau_channel*, i32*, i32*)* @READ_GET to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @READ_GET(%struct.nouveau_channel* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nouveau_channel*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.nouveau_channel* %0, %struct.nouveau_channel** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %10 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %13 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @nv_ro32(i32 %11, i64 %14)
  store i32 %15, i32* %8, align 4
  %16 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %17 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %31

20:                                               ; preds = %3
  %21 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %22 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %21, i32 0, i32 3
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %25 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = call i32 @nv_ro32(i32 %23, i64 %26)
  %28 = shl i32 %27, 32
  %29 = load i32, i32* %8, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %8, align 4
  br label %31

31:                                               ; preds = %20, %3
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %6, align 8
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %32, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %31
  %37 = load i32, i32* %8, align 4
  %38 = load i32*, i32** %6, align 8
  store i32 %37, i32* %38, align 4
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  br label %40

40:                                               ; preds = %36, %31
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 4
  %44 = and i32 %43, 255
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %40
  %47 = call i32 @udelay(i32 1)
  %48 = load i32*, i32** %7, align 8
  %49 = load i32, i32* %48, align 4
  %50 = icmp sgt i32 %49, 100000
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @EBUSY, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %4, align 4
  br label %89

54:                                               ; preds = %46
  br label %55

55:                                               ; preds = %54, %40
  %56 = load i32, i32* %8, align 4
  %57 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %58 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp slt i32 %56, %61
  br i1 %62, label %77, label %63

63:                                               ; preds = %55
  %64 = load i32, i32* %8, align 4
  %65 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %66 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %71 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %73, 2
  %75 = add nsw i32 %69, %74
  %76 = icmp sgt i32 %64, %75
  br i1 %76, label %77, label %80

77:                                               ; preds = %63, %55
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %4, align 4
  br label %89

80:                                               ; preds = %63
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.nouveau_channel*, %struct.nouveau_channel** %5, align 8
  %83 = getelementptr inbounds %struct.nouveau_channel, %struct.nouveau_channel* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = sub nsw i32 %81, %86
  %88 = ashr i32 %87, 2
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %80, %77, %51
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @nv_ro32(i32, i64) #1

declare dso_local i32 @udelay(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
