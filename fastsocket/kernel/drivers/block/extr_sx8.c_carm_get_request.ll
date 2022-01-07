; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_get_request.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/block/extr_sx8.c_carm_get_request.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.carm_request = type { i32, i64, i32* }
%struct.carm_host = type { i64, i64, i64, %struct.carm_request* }

@CARM_MAX_HOST_SG = common dso_local global i64 0, align 8
@CARM_MAX_REQ_SG = common dso_local global i64 0, align 8
@max_queue = common dso_local global i32 0, align 4
@CARM_MAX_REQ = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [38 x i8] c"no request available, returning NULL\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.carm_request* (%struct.carm_host*)* @carm_get_request to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.carm_request* @carm_get_request(%struct.carm_host* %0) #0 {
  %2 = alloca %struct.carm_request*, align 8
  %3 = alloca %struct.carm_host*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.carm_request*, align 8
  store %struct.carm_host* %0, %struct.carm_host** %3, align 8
  %6 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %7 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @CARM_MAX_HOST_SG, align 8
  %10 = load i64, i64* @CARM_MAX_REQ_SG, align 8
  %11 = sub nsw i64 %9, %10
  %12 = icmp sge i64 %8, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  store %struct.carm_request* null, %struct.carm_request** %2, align 8
  br label %69

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %64, %14
  %16 = load i32, i32* %4, align 4
  %17 = load i32, i32* @max_queue, align 4
  %18 = icmp ult i32 %16, %17
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  %20 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %21 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* %4, align 4
  %24 = zext i32 %23 to i64
  %25 = shl i64 1, %24
  %26 = and i64 %22, %25
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %63

28:                                               ; preds = %19
  %29 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %30 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %29, i32 0, i32 3
  %31 = load %struct.carm_request*, %struct.carm_request** %30, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %31, i64 %33
  store %struct.carm_request* %34, %struct.carm_request** %5, align 8
  %35 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %36 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %35, i32 0, i32 2
  store i32* null, i32** %36, align 8
  %37 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %38 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %37, i32 0, i32 1
  store i64 0, i64* %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = zext i32 %39 to i64
  %41 = shl i64 1, %40
  %42 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %43 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = or i64 %44, %41
  store i64 %45, i64* %43, align 8
  %46 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %47 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = add nsw i64 %48, 1
  store i64 %49, i64* %47, align 8
  %50 = load %struct.carm_host*, %struct.carm_host** %3, align 8
  %51 = getelementptr inbounds %struct.carm_host, %struct.carm_host* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @CARM_MAX_REQ, align 8
  %54 = icmp sle i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i32 @assert(i32 %55)
  %57 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  %58 = getelementptr inbounds %struct.carm_request, %struct.carm_request* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i64, i64* @CARM_MAX_REQ_SG, align 8
  %61 = call i32 @sg_init_table(i32 %59, i64 %60)
  %62 = load %struct.carm_request*, %struct.carm_request** %5, align 8
  store %struct.carm_request* %62, %struct.carm_request** %2, align 8
  br label %69

63:                                               ; preds = %19
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %4, align 4
  br label %15

67:                                               ; preds = %15
  %68 = call i32 @DPRINTK(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0))
  store %struct.carm_request* null, %struct.carm_request** %2, align 8
  br label %69

69:                                               ; preds = %67, %28, %13
  %70 = load %struct.carm_request*, %struct.carm_request** %2, align 8
  ret %struct.carm_request* %70
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @sg_init_table(i32, i64) #1

declare dso_local i32 @DPRINTK(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
