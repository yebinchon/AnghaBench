; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_add_used.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_add_used.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtqueue = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, %struct.vring_used_elem* }
%struct.vring_used_elem = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.virtqueue*, i32, i32)* @add_used to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @add_used(%struct.virtqueue* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.virtqueue*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.vring_used_elem*, align 8
  store %struct.virtqueue* %0, %struct.virtqueue** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %9 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 1
  %13 = load %struct.vring_used_elem*, %struct.vring_used_elem** %12, align 8
  %14 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %15 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %21 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = urem i64 %19, %23
  %25 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %13, i64 %24
  store %struct.vring_used_elem* %25, %struct.vring_used_elem** %7, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load %struct.vring_used_elem*, %struct.vring_used_elem** %7, align 8
  %28 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %27, i32 0, i32 0
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.vring_used_elem*, %struct.vring_used_elem** %7, align 8
  %31 = getelementptr inbounds %struct.vring_used_elem, %struct.vring_used_elem* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = call i32 (...) @wmb()
  %33 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %34 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.virtqueue*, %struct.virtqueue** %4, align 8
  %41 = getelementptr inbounds %struct.virtqueue, %struct.virtqueue* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, 1
  store i32 %43, i32* %41, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
