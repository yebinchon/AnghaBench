; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_req_tasklet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_tifm_ms.c_tifm_ms_req_tasklet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_host = type { i32 }
%struct.tifm_ms = type { %struct.TYPE_2__*, i64, %struct.tifm_dev* }
%struct.TYPE_2__ = type { i32 }
%struct.tifm_dev = type { i32 }

@ETIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @tifm_ms_req_tasklet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tifm_ms_req_tasklet(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.memstick_host*, align 8
  %4 = alloca %struct.tifm_ms*, align 8
  %5 = alloca %struct.tifm_dev*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store i64 %0, i64* %2, align 8
  %8 = load i64, i64* %2, align 8
  %9 = inttoptr i64 %8 to %struct.memstick_host*
  store %struct.memstick_host* %9, %struct.memstick_host** %3, align 8
  %10 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %11 = call %struct.tifm_ms* @memstick_priv(%struct.memstick_host* %10)
  store %struct.tifm_ms* %11, %struct.tifm_ms** %4, align 8
  %12 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %13 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %12, i32 0, i32 2
  %14 = load %struct.tifm_dev*, %struct.tifm_dev** %13, align 8
  store %struct.tifm_dev* %14, %struct.tifm_dev** %5, align 8
  %15 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %16 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %15, i32 0, i32 0
  %17 = load i64, i64* %6, align 8
  %18 = call i32 @spin_lock_irqsave(i32* %16, i64 %17)
  %19 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %20 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = icmp ne %struct.TYPE_2__* %21, null
  br i1 %22, label %69, label %23

23:                                               ; preds = %1
  %24 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %25 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %53

28:                                               ; preds = %23
  br label %29

29:                                               ; preds = %44, %28
  %30 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %31 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %32 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %31, i32 0, i32 0
  %33 = call i32 @memstick_next_req(%struct.memstick_host* %30, %struct.TYPE_2__** %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %43, label %36

36:                                               ; preds = %29
  %37 = load i32, i32* @ETIME, align 4
  %38 = sub nsw i32 0, %37
  %39 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %40 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  store i32 %38, i32* %42, align 4
  br label %43

43:                                               ; preds = %36, %29
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %7, align 4
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  br i1 %47, label %29, label %48

48:                                               ; preds = %44
  %49 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %50 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %49, i32 0, i32 0
  %51 = load i64, i64* %6, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  br label %74

53:                                               ; preds = %23
  br label %54

54:                                               ; preds = %66, %53
  %55 = load %struct.memstick_host*, %struct.memstick_host** %3, align 8
  %56 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %57 = getelementptr inbounds %struct.tifm_ms, %struct.tifm_ms* %56, i32 0, i32 0
  %58 = call i32 @memstick_next_req(%struct.memstick_host* %55, %struct.TYPE_2__** %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %59
  %63 = load %struct.tifm_ms*, %struct.tifm_ms** %4, align 8
  %64 = call i64 @tifm_ms_issue_cmd(%struct.tifm_ms* %63)
  %65 = icmp ne i64 %64, 0
  br label %66

66:                                               ; preds = %62, %59
  %67 = phi i1 [ false, %59 ], [ %65, %62 ]
  br i1 %67, label %54, label %68

68:                                               ; preds = %66
  br label %69

69:                                               ; preds = %68, %1
  %70 = load %struct.tifm_dev*, %struct.tifm_dev** %5, align 8
  %71 = getelementptr inbounds %struct.tifm_dev, %struct.tifm_dev* %70, i32 0, i32 0
  %72 = load i64, i64* %6, align 8
  %73 = call i32 @spin_unlock_irqrestore(i32* %71, i64 %72)
  br label %74

74:                                               ; preds = %69, %48
  ret void
}

declare dso_local %struct.tifm_ms* @memstick_priv(%struct.memstick_host*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @memstick_next_req(%struct.memstick_host*, %struct.TYPE_2__**) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @tifm_ms_issue_cmd(%struct.tifm_ms*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
