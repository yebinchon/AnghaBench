; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_put_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_put_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_host = type { i64, i64, i32 }
%struct.carm_request = type { i64, i64 }

@max_queue = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.carm_host*, %struct.carm_request*)* @carm_put_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @carm_put_request(%struct.carm_host* %0, %struct.carm_request* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.carm_host*, align 8
  %5 = alloca %struct.carm_request*, align 8
  store %struct.carm_host* %0, %struct.carm_host** %4, align 8
  store %struct.carm_request* %1, %struct.carm_request** %5, align 8
  %6 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %7 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @max_queue, align 8
  %10 = icmp ult i64 %8, %9
  %11 = zext i1 %10 to i32
  %12 = call i32 @assert(i32 %11)
  %13 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %14 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %17 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = shl i64 1, %18
  %20 = and i64 %15, %19
  %21 = icmp eq i64 %20, 0
  %22 = zext i1 %21 to i32
  %23 = call i64 @unlikely(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %58

28:                                               ; preds = %2
  %29 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %30 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %33 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp sge i64 %31, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @assert(i32 %36)
  %38 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %39 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = shl i64 1, %40
  %42 = xor i64 %41, -1
  %43 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %44 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = and i64 %45, %42
  store i64 %46, i64* %44, align 8
  %47 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %48 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %51 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = sub nsw i64 %52, %49
  store i64 %53, i64* %51, align 8
  %54 = load %struct.carm_host*, %struct.carm_host** %4, align 8
  %55 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = add nsw i32 %56, -1
  store i32 %57, i32* %55, align 8
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %28, %25
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
