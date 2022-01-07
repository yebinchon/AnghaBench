; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_sync_rings.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/gpu/drm/radeon/extr_radeon_cs.c_radeon_cs_sync_rings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radeon_cs_parser = type { i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.radeon_cs_parser*)* @radeon_cs_sync_rings to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @radeon_cs_sync_rings(%struct.radeon_cs_parser* %0) #0 {
  %2 = alloca %struct.radeon_cs_parser*, align 8
  %3 = alloca i32, align 4
  store %struct.radeon_cs_parser* %0, %struct.radeon_cs_parser** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %36, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %2, align 8
  %7 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp slt i32 %5, %8
  br i1 %9, label %10, label %39

10:                                               ; preds = %4
  %11 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %2, align 8
  %12 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = load i32, i32* %3, align 4
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i64 %15
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = icmp ne %struct.TYPE_5__* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %10
  br label %36

21:                                               ; preds = %10
  %22 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %2, align 8
  %23 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %22, i32 0, i32 2
  %24 = load %struct.radeon_cs_parser*, %struct.radeon_cs_parser** %2, align 8
  %25 = getelementptr inbounds %struct.radeon_cs_parser, %struct.radeon_cs_parser* %24, i32 0, i32 1
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = load i32, i32* %3, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @radeon_ib_sync_to(i32* %23, i32 %34)
  br label %36

36:                                               ; preds = %21, %20
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %4

39:                                               ; preds = %4
  ret void
}

declare dso_local i32 @radeon_ib_sync_to(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
