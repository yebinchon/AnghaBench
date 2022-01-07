; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_activate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_umem.c_activate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cardinfo = type { i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.cardinfo*)* @activate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @activate(%struct.cardinfo* %0) #0 {
  %2 = alloca %struct.cardinfo*, align 8
  store %struct.cardinfo* %0, %struct.cardinfo** %2, align 8
  br label %3

3:                                                ; preds = %50, %1
  br label %4

4:                                                ; preds = %8, %3
  %5 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %6 = call i64 @add_bio(%struct.cardinfo* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %4
  br label %4

9:                                                ; preds = %4
  %10 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %11 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %40

14:                                               ; preds = %9
  %15 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %16 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %15, i32 0, i32 2
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %19 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %40

25:                                               ; preds = %14
  %26 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %27 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = trunc i64 %28 to i32
  %30 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %31 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %30, i32 0, i32 0
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %33 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = sub i64 1, %34
  %36 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %37 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %36, i32 0, i32 1
  store i64 %35, i64* %37, align 8
  %38 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %39 = call i32 @mm_start_io(%struct.cardinfo* %38)
  br label %40

40:                                               ; preds = %25, %14, %9
  br label %41

41:                                               ; preds = %40
  %42 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %43 = getelementptr inbounds %struct.cardinfo, %struct.cardinfo* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = icmp eq i32 %44, -1
  br i1 %45, label %46, label %50

46:                                               ; preds = %41
  %47 = load %struct.cardinfo*, %struct.cardinfo** %2, align 8
  %48 = call i64 @add_bio(%struct.cardinfo* %47)
  %49 = icmp ne i64 %48, 0
  br label %50

50:                                               ; preds = %46, %41
  %51 = phi i1 [ false, %41 ], [ %49, %46 ]
  br i1 %51, label %3, label %52

52:                                               ; preds = %50
  ret void
}

declare dso_local i64 @add_bio(%struct.cardinfo*) #1

declare dso_local i32 @mm_start_io(%struct.cardinfo*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
