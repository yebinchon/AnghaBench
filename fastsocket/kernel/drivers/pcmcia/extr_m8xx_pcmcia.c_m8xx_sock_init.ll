; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m8xx_pcmcia.c_m8xx_sock_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_m8xx_pcmcia.c_m8xx_sock_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32, i32, i32, i32, i32 }
%struct.pcmcia_socket = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i32 }

@__const.m8xx_sock_init.io = private unnamed_addr constant %struct.TYPE_6__ { i32 0, i32 0, i32 0, i32 0, i32 1, i32 0 }, align 4
@.str = private unnamed_addr constant [15 x i8] c"sock_init(%d)\0A\00", align 1
@s = common dso_local global i32 0, align 4
@dead_socket = common dso_local global i32 0, align 4
@PCMCIA_IO_WIN_NO = common dso_local global i32 0, align 4
@PCMCIA_MEM_WIN_NO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @m8xx_sock_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @m8xx_sock_init(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca %struct.pcmcia_socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca %struct.TYPE_5__, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %2, align 8
  %6 = bitcast %struct.TYPE_6__* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %6, i8* align 4 bitcast (%struct.TYPE_6__* @__const.m8xx_sock_init.io to i8*), i64 24, i1 false)
  %7 = bitcast %struct.TYPE_5__* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %7, i8 0, i64 28, i1 false)
  %8 = load i32, i32* @s, align 4
  %9 = call i32 @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %11 = call i32 @m8xx_set_socket(%struct.pcmcia_socket* %10, i32* @dead_socket)
  store i32 0, i32* %3, align 4
  br label %12

12:                                               ; preds = %21, %1
  %13 = load i32, i32* %3, align 4
  %14 = load i32, i32* @PCMCIA_IO_WIN_NO, align 4
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %24

16:                                               ; preds = %12
  %17 = load i32, i32* %3, align 4
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  store i32 %17, i32* %18, align 4
  %19 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %20 = call i32 @m8xx_set_io_map(%struct.pcmcia_socket* %19, %struct.TYPE_6__* %4)
  br label %21

21:                                               ; preds = %16
  %22 = load i32, i32* %3, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %3, align 4
  br label %12

24:                                               ; preds = %12
  store i32 0, i32* %3, align 4
  br label %25

25:                                               ; preds = %34, %24
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @PCMCIA_MEM_WIN_NO, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %37

29:                                               ; preds = %25
  %30 = load i32, i32* %3, align 4
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %5, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %2, align 8
  %33 = call i32 @m8xx_set_mem_map(%struct.pcmcia_socket* %32, %struct.TYPE_5__* %5)
  br label %34

34:                                               ; preds = %29
  %35 = load i32, i32* %3, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %3, align 4
  br label %25

37:                                               ; preds = %25
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @dprintk(i8*, i32) #2

declare dso_local i32 @m8xx_set_socket(%struct.pcmcia_socket*, i32*) #2

declare dso_local i32 @m8xx_set_io_map(%struct.pcmcia_socket*, %struct.TYPE_6__*) #2

declare dso_local i32 @m8xx_set_mem_map(%struct.pcmcia_socket*, %struct.TYPE_5__*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
