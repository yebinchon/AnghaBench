; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_mk_read_req.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/char/extr_con3215.c_raw3215_mk_read_req.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, %struct.raw3215_req* }
%struct.raw3215_req = type { %struct.ccw1*, %struct.raw3215_info*, i32 }
%struct.ccw1 = type { i32, i32, i32, i64 }

@RAW3215_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*)* @raw3215_mk_read_req to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_mk_read_req(%struct.raw3215_info* %0) #0 {
  %2 = alloca %struct.raw3215_info*, align 8
  %3 = alloca %struct.raw3215_req*, align 8
  %4 = alloca %struct.ccw1*, align 8
  store %struct.raw3215_info* %0, %struct.raw3215_info** %2, align 8
  %5 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %6 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %5, i32 0, i32 1
  %7 = load %struct.raw3215_req*, %struct.raw3215_req** %6, align 8
  store %struct.raw3215_req* %7, %struct.raw3215_req** %3, align 8
  %8 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %9 = icmp eq %struct.raw3215_req* %8, null
  br i1 %9, label %10, label %21

10:                                               ; preds = %1
  %11 = call %struct.raw3215_req* (...) @raw3215_alloc_req()
  store %struct.raw3215_req* %11, %struct.raw3215_req** %3, align 8
  %12 = load i32, i32* @RAW3215_READ, align 4
  %13 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %14 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %13, i32 0, i32 2
  store i32 %12, i32* %14, align 8
  %15 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %16 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %17 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %16, i32 0, i32 1
  store %struct.raw3215_info* %15, %struct.raw3215_info** %17, align 8
  %18 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %19 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %20 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %19, i32 0, i32 1
  store %struct.raw3215_req* %18, %struct.raw3215_req** %20, align 8
  br label %21

21:                                               ; preds = %10, %1
  %22 = load %struct.raw3215_req*, %struct.raw3215_req** %3, align 8
  %23 = getelementptr inbounds %struct.raw3215_req, %struct.raw3215_req* %22, i32 0, i32 0
  %24 = load %struct.ccw1*, %struct.ccw1** %23, align 8
  store %struct.ccw1* %24, %struct.ccw1** %4, align 8
  %25 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %26 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %25, i32 0, i32 0
  store i32 10, i32* %26, align 8
  %27 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %28 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %27, i32 0, i32 1
  store i32 32, i32* %28, align 4
  %29 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %30 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %29, i32 0, i32 2
  store i32 160, i32* %30, align 8
  %31 = load %struct.raw3215_info*, %struct.raw3215_info** %2, align 8
  %32 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i64 @__pa(i32 %33)
  %35 = load %struct.ccw1*, %struct.ccw1** %4, align 8
  %36 = getelementptr inbounds %struct.ccw1, %struct.ccw1* %35, i32 0, i32 3
  store i64 %34, i64* %36, align 8
  ret void
}

declare dso_local %struct.raw3215_req* @raw3215_alloc_req(...) #1

declare dso_local i64 @__pa(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
