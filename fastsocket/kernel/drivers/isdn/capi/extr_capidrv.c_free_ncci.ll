; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_free_ncci.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/capi/extr_capidrv.c_free_ncci.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32* }
%struct.capidrv_ncci = type { i64, %struct.capidrv_ncci*, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.capidrv_ncci* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, %struct.capidrv_ncci*)* @free_ncci to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_ncci(%struct.TYPE_7__* %0, %struct.capidrv_ncci* %1) #0 {
  %3 = alloca %struct.TYPE_7__*, align 8
  %4 = alloca %struct.capidrv_ncci*, align 8
  %5 = alloca %struct.capidrv_ncci**, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %3, align 8
  store %struct.capidrv_ncci* %1, %struct.capidrv_ncci** %4, align 8
  %6 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %4, align 8
  %7 = getelementptr inbounds %struct.capidrv_ncci, %struct.capidrv_ncci* %6, i32 0, i32 2
  %8 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  store %struct.capidrv_ncci** %9, %struct.capidrv_ncci*** %5, align 8
  br label %10

10:                                               ; preds = %26, %2
  %11 = load %struct.capidrv_ncci**, %struct.capidrv_ncci*** %5, align 8
  %12 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %11, align 8
  %13 = icmp ne %struct.capidrv_ncci* %12, null
  br i1 %13, label %14, label %30

14:                                               ; preds = %10
  %15 = load %struct.capidrv_ncci**, %struct.capidrv_ncci*** %5, align 8
  %16 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %15, align 8
  %17 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %4, align 8
  %18 = icmp eq %struct.capidrv_ncci* %16, %17
  br i1 %18, label %19, label %25

19:                                               ; preds = %14
  %20 = load %struct.capidrv_ncci**, %struct.capidrv_ncci*** %5, align 8
  %21 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %20, align 8
  %22 = getelementptr inbounds %struct.capidrv_ncci, %struct.capidrv_ncci* %21, i32 0, i32 1
  %23 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %22, align 8
  %24 = load %struct.capidrv_ncci**, %struct.capidrv_ncci*** %5, align 8
  store %struct.capidrv_ncci* %23, %struct.capidrv_ncci** %24, align 8
  br label %30

25:                                               ; preds = %14
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.capidrv_ncci**, %struct.capidrv_ncci*** %5, align 8
  %28 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %27, align 8
  %29 = getelementptr inbounds %struct.capidrv_ncci, %struct.capidrv_ncci* %28, i32 0, i32 1
  store %struct.capidrv_ncci** %29, %struct.capidrv_ncci*** %5, align 8
  br label %10

30:                                               ; preds = %19, %10
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %4, align 8
  %35 = getelementptr inbounds %struct.capidrv_ncci, %struct.capidrv_ncci* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i64 %36
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  %39 = load %struct.capidrv_ncci*, %struct.capidrv_ncci** %4, align 8
  %40 = call i32 @kfree(%struct.capidrv_ncci* %39)
  ret void
}

declare dso_local i32 @kfree(%struct.capidrv_ncci*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
