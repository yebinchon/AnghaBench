; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_insert_tid.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb3/extr_cxgb3_offload.c_cxgb3_insert_tid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.t3cdev = type { i32 }
%struct.cxgb3_client = type { i32 }
%struct.tid_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, %struct.cxgb3_client* }
%struct.TYPE_4__ = type { %struct.tid_info }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cxgb3_insert_tid(%struct.t3cdev* %0, %struct.cxgb3_client* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.t3cdev*, align 8
  %6 = alloca %struct.cxgb3_client*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.tid_info*, align 8
  store %struct.t3cdev* %0, %struct.t3cdev** %5, align 8
  store %struct.cxgb3_client* %1, %struct.cxgb3_client** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %10 = load %struct.t3cdev*, %struct.t3cdev** %5, align 8
  %11 = call %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev* %10)
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  store %struct.tid_info* %12, %struct.tid_info** %9, align 8
  %13 = load %struct.cxgb3_client*, %struct.cxgb3_client** %6, align 8
  %14 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %15 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = load i32, i32* %8, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  store %struct.cxgb3_client* %13, %struct.cxgb3_client** %20, align 8
  %21 = load i8*, i8** %7, align 8
  %22 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %23 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = load i32, i32* %8, align 4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 0
  store i8* %21, i8** %28, align 8
  %29 = load %struct.tid_info*, %struct.tid_info** %9, align 8
  %30 = getelementptr inbounds %struct.tid_info, %struct.tid_info* %29, i32 0, i32 0
  %31 = call i32 @atomic_inc(i32* %30)
  ret void
}

declare dso_local %struct.TYPE_4__* @T3C_DATA(%struct.t3cdev*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
