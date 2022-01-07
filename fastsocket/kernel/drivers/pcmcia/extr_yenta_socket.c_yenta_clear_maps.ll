; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_clear_maps.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_yenta_socket.c_yenta_clear_maps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.resource = type { i32, i32 }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.yenta_socket = type { i32 }
%struct.TYPE_5__ = type { i32, %struct.resource* }

@__const.yenta_clear_maps.res = private unnamed_addr constant %struct.resource { i32 4095, i32 0 }, align 4
@__const.yenta_clear_maps.io = private unnamed_addr constant %struct.TYPE_6__ { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0 }, align 4
@dead_socket = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.yenta_socket*)* @yenta_clear_maps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @yenta_clear_maps(%struct.yenta_socket* %0) #0 {
  %2 = alloca %struct.yenta_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.resource, align 4
  %5 = alloca %struct.TYPE_6__, align 4
  %6 = alloca %struct.TYPE_5__, align 8
  store %struct.yenta_socket* %0, %struct.yenta_socket** %2, align 8
  %7 = bitcast %struct.resource* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %7, i8* align 4 bitcast (%struct.resource* @__const.yenta_clear_maps.res to i8*), i64 8, i1 false)
  %8 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %8, i8* align 4 bitcast (%struct.TYPE_6__* @__const.yenta_clear_maps.io to i8*), i64 24, i1 false)
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 0, i32* %9, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 1
  store %struct.resource* %4, %struct.resource** %10, align 8
  %11 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %12 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %11, i32 0, i32 0
  %13 = call i32 @yenta_set_socket(i32* %12, i32* @dead_socket)
  store i32 0, i32* %3, align 4
  br label %14

14:                                               ; preds = %23, %1
  %15 = load i32, i32* %3, align 4
  %16 = icmp slt i32 %15, 2
  br i1 %16, label %17, label %26

17:                                               ; preds = %14
  %18 = load i32, i32* %3, align 4
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 1
  store i32 %18, i32* %19, align 4
  %20 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %21 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %20, i32 0, i32 0
  %22 = call i32 @yenta_set_io_map(i32* %21, %struct.TYPE_6__* %5)
  br label %23

23:                                               ; preds = %17
  %24 = load i32, i32* %3, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %3, align 4
  br label %14

26:                                               ; preds = %14
  store i32 0, i32* %3, align 4
  br label %27

27:                                               ; preds = %36, %26
  %28 = load i32, i32* %3, align 4
  %29 = icmp slt i32 %28, 5
  br i1 %29, label %30, label %39

30:                                               ; preds = %27
  %31 = load i32, i32* %3, align 4
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  store i32 %31, i32* %32, align 8
  %33 = load %struct.yenta_socket*, %struct.yenta_socket** %2, align 8
  %34 = getelementptr inbounds %struct.yenta_socket, %struct.yenta_socket* %33, i32 0, i32 0
  %35 = call i32 @yenta_set_mem_map(i32* %34, %struct.TYPE_5__* %6)
  br label %36

36:                                               ; preds = %30
  %37 = load i32, i32* %3, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %3, align 4
  br label %27

39:                                               ; preds = %27
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @yenta_set_socket(i32*, i32*) #2

declare dso_local i32 @yenta_set_io_map(i32*, %struct.TYPE_6__*) #2

declare dso_local i32 @yenta_set_mem_map(i32*, %struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
