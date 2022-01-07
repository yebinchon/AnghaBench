; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_bufinit.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_bufinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buf = type { i64, %struct.TYPE_2__*, i32, i32, %struct.bio*, %struct.request* }
%struct.TYPE_2__ = type { i64 }
%struct.request = type { i32 }
%struct.bio = type { i64, %struct.TYPE_2__*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buf*, %struct.request*, %struct.bio*)* @bufinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bufinit(%struct.buf* %0, %struct.request* %1, %struct.bio* %2) #0 {
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca %struct.bio*, align 8
  store %struct.buf* %0, %struct.buf** %4, align 8
  store %struct.request* %1, %struct.request** %5, align 8
  store %struct.bio* %2, %struct.bio** %6, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = call i32 @memset(%struct.buf* %7, i32 0, i32 40)
  %9 = load %struct.request*, %struct.request** %5, align 8
  %10 = load %struct.buf*, %struct.buf** %4, align 8
  %11 = getelementptr inbounds %struct.buf, %struct.buf* %10, i32 0, i32 5
  store %struct.request* %9, %struct.request** %11, align 8
  %12 = load %struct.bio*, %struct.bio** %6, align 8
  %13 = load %struct.buf*, %struct.buf** %4, align 8
  %14 = getelementptr inbounds %struct.buf, %struct.buf* %13, i32 0, i32 4
  store %struct.bio* %12, %struct.bio** %14, align 8
  %15 = load %struct.bio*, %struct.bio** %6, align 8
  %16 = getelementptr inbounds %struct.bio, %struct.bio* %15, i32 0, i32 3
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.buf*, %struct.buf** %4, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 3
  store i32 %17, i32* %19, align 4
  %20 = load %struct.bio*, %struct.bio** %6, align 8
  %21 = getelementptr inbounds %struct.bio, %struct.bio* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.buf*, %struct.buf** %4, align 8
  %24 = getelementptr inbounds %struct.buf, %struct.buf* %23, i32 0, i32 2
  store i32 %22, i32* %24, align 8
  %25 = load %struct.bio*, %struct.bio** %6, align 8
  %26 = call i32 @bio_pageinc(%struct.bio* %25)
  %27 = load %struct.bio*, %struct.bio** %6, align 8
  %28 = getelementptr inbounds %struct.bio, %struct.bio* %27, i32 0, i32 1
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = load %struct.bio*, %struct.bio** %6, align 8
  %31 = getelementptr inbounds %struct.bio, %struct.bio* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i64 %32
  %34 = load %struct.buf*, %struct.buf** %4, align 8
  %35 = getelementptr inbounds %struct.buf, %struct.buf* %34, i32 0, i32 1
  store %struct.TYPE_2__* %33, %struct.TYPE_2__** %35, align 8
  %36 = load %struct.buf*, %struct.buf** %4, align 8
  %37 = getelementptr inbounds %struct.buf, %struct.buf* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.buf*, %struct.buf** %4, align 8
  %42 = getelementptr inbounds %struct.buf, %struct.buf* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.buf*, %struct.buf** %4, align 8
  %44 = getelementptr inbounds %struct.buf, %struct.buf* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  %47 = zext i1 %46 to i32
  %48 = call i32 @WARN_ON(i32 %47)
  ret void
}

declare dso_local i32 @memset(%struct.buf*, i32, i32) #1

declare dso_local i32 @bio_pageinc(%struct.bio*) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
