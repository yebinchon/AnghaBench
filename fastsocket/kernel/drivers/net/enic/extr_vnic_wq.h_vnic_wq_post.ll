; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_wq.h_vnic_wq_post.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/enic/extr_vnic_wq.h_vnic_wq_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vnic_wq = type { %struct.TYPE_4__, %struct.vnic_wq_buf*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.vnic_wq_buf = type { i32, i32, i32, %struct.vnic_wq_buf*, i32, i8* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vnic_wq*, i8*, i32, i32, i32, i32)* @vnic_wq_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vnic_wq_post(%struct.vnic_wq* %0, i8* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.vnic_wq*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.vnic_wq_buf*, align 8
  store %struct.vnic_wq* %0, %struct.vnic_wq** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %15 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %14, i32 0, i32 1
  %16 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %15, align 8
  store %struct.vnic_wq_buf* %16, %struct.vnic_wq_buf** %13, align 8
  %17 = load i32, i32* %11, align 4
  %18 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %19 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 8
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %6
  %23 = load i8*, i8** %8, align 8
  br label %25

24:                                               ; preds = %6
  br label %25

25:                                               ; preds = %24, %22
  %26 = phi i8* [ %23, %22 ], [ null, %24 ]
  %27 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %28 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %27, i32 0, i32 5
  store i8* %26, i8** %28, align 8
  %29 = load i32, i32* %9, align 4
  %30 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %31 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %34 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %33, i32 0, i32 1
  store i32 %32, i32* %34, align 4
  %35 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %36 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %35, i32 0, i32 3
  %37 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %36, align 8
  store %struct.vnic_wq_buf* %37, %struct.vnic_wq_buf** %13, align 8
  %38 = load i32, i32* %12, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %50

40:                                               ; preds = %25
  %41 = call i32 (...) @wmb()
  %42 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %43 = getelementptr inbounds %struct.vnic_wq_buf, %struct.vnic_wq_buf* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %46 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %45, i32 0, i32 2
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = call i32 @iowrite32(i32 %44, i32* %48)
  br label %50

50:                                               ; preds = %40, %25
  %51 = load %struct.vnic_wq_buf*, %struct.vnic_wq_buf** %13, align 8
  %52 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %53 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %52, i32 0, i32 1
  store %struct.vnic_wq_buf* %51, %struct.vnic_wq_buf** %53, align 8
  %54 = load %struct.vnic_wq*, %struct.vnic_wq** %7, align 8
  %55 = getelementptr inbounds %struct.vnic_wq, %struct.vnic_wq* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = add nsw i32 %57, -1
  store i32 %58, i32* %56, align 8
  ret void
}

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @iowrite32(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
