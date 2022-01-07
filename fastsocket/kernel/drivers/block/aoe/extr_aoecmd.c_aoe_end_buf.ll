; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_end_buf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/aoe/extr_aoecmd.c_aoe_end_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aoedev = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.buf* }
%struct.buf = type { i32, %struct.request* }
%struct.request = type { i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aoedev*, %struct.buf*)* @aoe_end_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @aoe_end_buf(%struct.aoedev* %0, %struct.buf* %1) #0 {
  %3 = alloca %struct.aoedev*, align 8
  %4 = alloca %struct.buf*, align 8
  %5 = alloca %struct.request*, align 8
  %6 = alloca i64, align 8
  store %struct.aoedev* %0, %struct.aoedev** %3, align 8
  store %struct.buf* %1, %struct.buf** %4, align 8
  %7 = load %struct.buf*, %struct.buf** %4, align 8
  %8 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %9 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.buf*, %struct.buf** %10, align 8
  %12 = icmp eq %struct.buf* %7, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %15 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.buf* null, %struct.buf** %16, align 8
  br label %17

17:                                               ; preds = %13, %2
  %18 = load %struct.buf*, %struct.buf** %4, align 8
  %19 = getelementptr inbounds %struct.buf, %struct.buf* %18, i32 0, i32 1
  %20 = load %struct.request*, %struct.request** %19, align 8
  store %struct.request* %20, %struct.request** %5, align 8
  %21 = load %struct.buf*, %struct.buf** %4, align 8
  %22 = getelementptr inbounds %struct.buf, %struct.buf* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bio_pagedec(i32 %23)
  %25 = load %struct.buf*, %struct.buf** %4, align 8
  %26 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %27 = getelementptr inbounds %struct.aoedev, %struct.aoedev* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @mempool_free(%struct.buf* %25, i32 %28)
  %30 = load %struct.request*, %struct.request** %5, align 8
  %31 = getelementptr inbounds %struct.request, %struct.request* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  %33 = ptrtoint i8* %32 to i64
  store i64 %33, i64* %6, align 8
  %34 = load i64, i64* %6, align 8
  %35 = add i64 %34, -1
  store i64 %35, i64* %6, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.request*, %struct.request** %5, align 8
  %38 = getelementptr inbounds %struct.request, %struct.request* %37, i32 0, i32 0
  store i8* %36, i8** %38, align 8
  %39 = load i64, i64* %6, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %17
  %42 = load %struct.aoedev*, %struct.aoedev** %3, align 8
  %43 = load %struct.request*, %struct.request** %5, align 8
  %44 = call i32 @aoe_end_request(%struct.aoedev* %42, %struct.request* %43, i32 0)
  br label %45

45:                                               ; preds = %41, %17
  ret void
}

declare dso_local i32 @bio_pagedec(i32) #1

declare dso_local i32 @mempool_free(%struct.buf*, i32) #1

declare dso_local i32 @aoe_end_request(%struct.aoedev*, %struct.request*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
