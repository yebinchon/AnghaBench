; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_joydev.c_joydev_pass_event.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/extr_joydev.c_joydev_pass_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.joydev_client = type { i64, i64, i32, i32, i32, %struct.js_event*, %struct.joydev* }
%struct.joydev = type { i64, i64 }
%struct.js_event = type { i32 }

@JOYDEV_BUFFER_SIZE = common dso_local global i32 0, align 4
@SIGIO = common dso_local global i32 0, align 4
@POLL_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.joydev_client*, %struct.js_event*)* @joydev_pass_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @joydev_pass_event(%struct.joydev_client* %0, %struct.js_event* %1) #0 {
  %3 = alloca %struct.joydev_client*, align 8
  %4 = alloca %struct.js_event*, align 8
  %5 = alloca %struct.joydev*, align 8
  store %struct.joydev_client* %0, %struct.joydev_client** %3, align 8
  store %struct.js_event* %1, %struct.js_event** %4, align 8
  %6 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %7 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %6, i32 0, i32 6
  %8 = load %struct.joydev*, %struct.joydev** %7, align 8
  store %struct.joydev* %8, %struct.joydev** %5, align 8
  %9 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %10 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %9, i32 0, i32 4
  %11 = call i32 @spin_lock(i32* %10)
  %12 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %13 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %12, i32 0, i32 5
  %14 = load %struct.js_event*, %struct.js_event** %13, align 8
  %15 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %16 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.js_event, %struct.js_event* %14, i64 %17
  %19 = load %struct.js_event*, %struct.js_event** %4, align 8
  %20 = bitcast %struct.js_event* %18 to i8*
  %21 = bitcast %struct.js_event* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %20, i8* align 4 %21, i64 4, i1 false)
  %22 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %23 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.joydev*, %struct.joydev** %5, align 8
  %26 = getelementptr inbounds %struct.joydev, %struct.joydev* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.joydev*, %struct.joydev** %5, align 8
  %29 = getelementptr inbounds %struct.joydev, %struct.joydev* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = add nsw i64 %27, %30
  %32 = icmp eq i64 %24, %31
  br i1 %32, label %33, label %57

33:                                               ; preds = %2
  %34 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %35 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = add i64 %36, 1
  store i64 %37, i64* %35, align 8
  %38 = load i32, i32* @JOYDEV_BUFFER_SIZE, align 4
  %39 = sub nsw i32 %38, 1
  %40 = sext i32 %39 to i64
  %41 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %42 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = and i64 %43, %40
  store i64 %44, i64* %42, align 8
  %45 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %46 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 8
  %48 = sext i32 %47 to i64
  %49 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %50 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp eq i64 %48, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %33
  %54 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %55 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %54, i32 0, i32 1
  store i64 0, i64* %55, align 8
  br label %56

56:                                               ; preds = %53, %33
  br label %57

57:                                               ; preds = %56, %2
  %58 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %59 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %58, i32 0, i32 4
  %60 = call i32 @spin_unlock(i32* %59)
  %61 = load %struct.joydev_client*, %struct.joydev_client** %3, align 8
  %62 = getelementptr inbounds %struct.joydev_client, %struct.joydev_client* %61, i32 0, i32 3
  %63 = load i32, i32* @SIGIO, align 4
  %64 = load i32, i32* @POLL_IN, align 4
  %65 = call i32 @kill_fasync(i32* %62, i32 %63, i32 %64)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kill_fasync(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
