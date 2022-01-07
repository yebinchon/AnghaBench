; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_resync_tnc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/hamradio/extr_6pack.c_resync_tnc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sixpack = type { i32, i32, i32, %struct.TYPE_8__, %struct.TYPE_7__*, i64, i64, i64 }
%struct.TYPE_8__ = type { i64, void (i64)*, i64 }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.TYPE_7__*, i8*, i32)* }

@resync_tnc.resync_cmd = internal global i8 -24, align 1
@jiffies = common dso_local global i64 0, align 8
@SIXP_RESYNC_TIMEOUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @resync_tnc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @resync_tnc(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.sixpack*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to %struct.sixpack*
  store %struct.sixpack* %5, %struct.sixpack** %3, align 8
  %6 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %7 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %6, i32 0, i32 7
  store i64 0, i64* %7, align 8
  %8 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %9 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %8, i32 0, i32 6
  store i64 0, i64* %9, align 8
  %10 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %11 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %13 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %12, i32 0, i32 1
  store i32 1, i32* %13, align 4
  %14 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %15 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %14, i32 0, i32 5
  store i64 0, i64* %15, align 8
  %16 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %17 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %16, i32 0, i32 2
  store i32 96, i32* %17, align 8
  %18 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %19 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %18, i32 0, i32 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %23, align 8
  %25 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %26 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %25, i32 0, i32 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %26, align 8
  %28 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %29 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %28, i32 0, i32 2
  %30 = bitcast i32* %29 to i8*
  %31 = call i32 %24(%struct.TYPE_7__* %27, i8* %30, i32 1)
  %32 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %33 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %32, i32 0, i32 4
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i32 (%struct.TYPE_7__*, i8*, i32)*, i32 (%struct.TYPE_7__*, i8*, i32)** %37, align 8
  %39 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %40 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %39, i32 0, i32 4
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = call i32 %38(%struct.TYPE_7__* %41, i8* @resync_tnc.resync_cmd, i32 1)
  %43 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %44 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %43, i32 0, i32 3
  %45 = call i32 @del_timer(%struct.TYPE_8__* %44)
  %46 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %47 = ptrtoint %struct.sixpack* %46 to i64
  %48 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %49 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 0
  store i64 %47, i64* %50, align 8
  %51 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %52 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %51, i32 0, i32 3
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 1
  store void (i64)* @resync_tnc, void (i64)** %53, align 8
  %54 = load i64, i64* @jiffies, align 8
  %55 = load i64, i64* @SIXP_RESYNC_TIMEOUT, align 8
  %56 = add nsw i64 %54, %55
  %57 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %58 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %57, i32 0, i32 3
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 2
  store i64 %56, i64* %59, align 8
  %60 = load %struct.sixpack*, %struct.sixpack** %3, align 8
  %61 = getelementptr inbounds %struct.sixpack, %struct.sixpack* %60, i32 0, i32 3
  %62 = call i32 @add_timer(%struct.TYPE_8__* %61)
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
