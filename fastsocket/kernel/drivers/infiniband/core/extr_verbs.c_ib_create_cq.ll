; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_create_cq.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_verbs.c_ib_create_cq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_cq = type { void (%struct.ib_event*, i8*)*, i32, i8*, i32, i32*, %struct.ib_device* }
%struct.ib_event = type opaque
%struct.ib_device = type { %struct.ib_cq* (%struct.ib_device*, i32, i32, i32*, i32*)* }
%struct.ib_event.0 = type opaque

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ib_cq* @ib_create_cq(%struct.ib_device* %0, i32 %1, void (%struct.ib_event.0*, i8*)* %2, i8* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.ib_device*, align 8
  %8 = alloca i32, align 4
  %9 = alloca void (%struct.ib_event.0*, i8*)*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ib_cq*, align 8
  store %struct.ib_device* %0, %struct.ib_device** %7, align 8
  store i32 %1, i32* %8, align 4
  store void (%struct.ib_event.0*, i8*)* %2, void (%struct.ib_event.0*, i8*)** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %15 = getelementptr inbounds %struct.ib_device, %struct.ib_device* %14, i32 0, i32 0
  %16 = load %struct.ib_cq* (%struct.ib_device*, i32, i32, i32*, i32*)*, %struct.ib_cq* (%struct.ib_device*, i32, i32, i32*, i32*)** %15, align 8
  %17 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* %12, align 4
  %20 = call %struct.ib_cq* %16(%struct.ib_device* %17, i32 %18, i32 %19, i32* null, i32* null)
  store %struct.ib_cq* %20, %struct.ib_cq** %13, align 8
  %21 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %22 = call i32 @IS_ERR(%struct.ib_cq* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %43, label %24

24:                                               ; preds = %6
  %25 = load %struct.ib_device*, %struct.ib_device** %7, align 8
  %26 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %27 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %26, i32 0, i32 5
  store %struct.ib_device* %25, %struct.ib_device** %27, align 8
  %28 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %29 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %28, i32 0, i32 4
  store i32* null, i32** %29, align 8
  %30 = load i32, i32* %8, align 4
  %31 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %32 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %31, i32 0, i32 3
  store i32 %30, i32* %32, align 8
  %33 = load void (%struct.ib_event.0*, i8*)*, void (%struct.ib_event.0*, i8*)** %9, align 8
  %34 = bitcast void (%struct.ib_event.0*, i8*)* %33 to void (%struct.ib_event*, i8*)*
  %35 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %36 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %35, i32 0, i32 0
  store void (%struct.ib_event*, i8*)* %34, void (%struct.ib_event*, i8*)** %36, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %39 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  %41 = getelementptr inbounds %struct.ib_cq, %struct.ib_cq* %40, i32 0, i32 1
  %42 = call i32 @atomic_set(i32* %41, i32 0)
  br label %43

43:                                               ; preds = %24, %6
  %44 = load %struct.ib_cq*, %struct.ib_cq** %13, align 8
  ret %struct.ib_cq* %44
}

declare dso_local i32 @IS_ERR(%struct.ib_cq*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
