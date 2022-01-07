; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_memstick_init_req_sg.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/core/extr_memstick.c_memstick_init_req_sg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.memstick_request = type { i8, i32, i32, %struct.scatterlist, i32 }
%struct.scatterlist = type { i32 }

@WRITE = common dso_local global i32 0, align 4
@READ = common dso_local global i32 0, align 4
@MS_TPC_SET_CMD = common dso_local global i8 0, align 1
@MS_TPC_EX_SET_CMD = common dso_local global i8 0, align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @memstick_init_req_sg(%struct.memstick_request* %0, i8 zeroext %1, %struct.scatterlist* %2) #0 {
  %4 = alloca %struct.memstick_request*, align 8
  %5 = alloca i8, align 1
  %6 = alloca %struct.scatterlist*, align 8
  store %struct.memstick_request* %0, %struct.memstick_request** %4, align 8
  store i8 %1, i8* %5, align 1
  store %struct.scatterlist* %2, %struct.scatterlist** %6, align 8
  %7 = load i8, i8* %5, align 1
  %8 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %9 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %8, i32 0, i32 0
  store i8 %7, i8* %9, align 4
  %10 = load i8, i8* %5, align 1
  %11 = zext i8 %10 to i32
  %12 = and i32 %11, 8
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load i32, i32* @WRITE, align 4
  %16 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %17 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %16, i32 0, i32 4
  store i32 %15, i32* %17, align 4
  br label %22

18:                                               ; preds = %3
  %19 = load i32, i32* @READ, align 4
  %20 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %21 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %20, i32 0, i32 4
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %14
  %23 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %24 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %23, i32 0, i32 3
  %25 = load %struct.scatterlist*, %struct.scatterlist** %6, align 8
  %26 = bitcast %struct.scatterlist* %24 to i8*
  %27 = bitcast %struct.scatterlist* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %26, i8* align 4 %27, i64 4, i1 false)
  %28 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %29 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %28, i32 0, i32 1
  store i32 1, i32* %29, align 4
  %30 = load i8, i8* %5, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @MS_TPC_SET_CMD, align 1
  %33 = zext i8 %32 to i32
  %34 = icmp eq i32 %31, %33
  br i1 %34, label %41, label %35

35:                                               ; preds = %22
  %36 = load i8, i8* %5, align 1
  %37 = zext i8 %36 to i32
  %38 = load i8, i8* @MS_TPC_EX_SET_CMD, align 1
  %39 = zext i8 %38 to i32
  %40 = icmp eq i32 %37, %39
  br i1 %40, label %41, label %44

41:                                               ; preds = %35, %22
  %42 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %43 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %42, i32 0, i32 2
  store i32 1, i32* %43, align 4
  br label %47

44:                                               ; preds = %35
  %45 = load %struct.memstick_request*, %struct.memstick_request** %4, align 8
  %46 = getelementptr inbounds %struct.memstick_request, %struct.memstick_request* %45, i32 0, i32 2
  store i32 0, i32* %46, align 4
  br label %47

47:                                               ; preds = %44, %41
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
