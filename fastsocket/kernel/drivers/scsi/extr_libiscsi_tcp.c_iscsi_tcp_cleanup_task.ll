; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_cleanup_task.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/extr_libiscsi_tcp.c_iscsi_tcp_cleanup_task.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_task = type { i32, i32, %struct.iscsi_tcp_task* }
%struct.iscsi_tcp_task = type { %struct.iscsi_r2t_info*, %struct.TYPE_2__, i32 }
%struct.iscsi_r2t_info = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"pending r2t dropped\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @iscsi_tcp_cleanup_task(%struct.iscsi_task* %0) #0 {
  %2 = alloca %struct.iscsi_task*, align 8
  %3 = alloca %struct.iscsi_tcp_task*, align 8
  %4 = alloca %struct.iscsi_r2t_info*, align 8
  store %struct.iscsi_task* %0, %struct.iscsi_task** %2, align 8
  %5 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %6 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %5, i32 0, i32 2
  %7 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %6, align 8
  store %struct.iscsi_tcp_task* %7, %struct.iscsi_tcp_task** %3, align 8
  %8 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %9 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %47

13:                                               ; preds = %1
  br label %14

14:                                               ; preds = %21, %13
  %15 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %16 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = bitcast %struct.iscsi_r2t_info** %4 to i8*
  %19 = call i64 @__kfifo_get(i32 %17, i8* %18, i32 8)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %32

21:                                               ; preds = %14
  %22 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %23 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = bitcast %struct.iscsi_r2t_info** %4 to i8*
  %27 = call i32 @__kfifo_put(i32 %25, i8* %26, i32 8)
  %28 = load %struct.iscsi_task*, %struct.iscsi_task** %2, align 8
  %29 = getelementptr inbounds %struct.iscsi_task, %struct.iscsi_task* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @ISCSI_DBG_TCP(i32 %30, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %14

32:                                               ; preds = %14
  %33 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %34 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %33, i32 0, i32 0
  %35 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %34, align 8
  store %struct.iscsi_r2t_info* %35, %struct.iscsi_r2t_info** %4, align 8
  %36 = load %struct.iscsi_r2t_info*, %struct.iscsi_r2t_info** %4, align 8
  %37 = icmp ne %struct.iscsi_r2t_info* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %40 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = bitcast %struct.iscsi_r2t_info** %4 to i8*
  %44 = call i32 @__kfifo_put(i32 %42, i8* %43, i32 8)
  %45 = load %struct.iscsi_tcp_task*, %struct.iscsi_tcp_task** %3, align 8
  %46 = getelementptr inbounds %struct.iscsi_tcp_task, %struct.iscsi_tcp_task* %45, i32 0, i32 0
  store %struct.iscsi_r2t_info* null, %struct.iscsi_r2t_info** %46, align 8
  br label %47

47:                                               ; preds = %12, %38, %32
  ret void
}

declare dso_local i64 @__kfifo_get(i32, i8*, i32) #1

declare dso_local i32 @__kfifo_put(i32, i8*, i32) #1

declare dso_local i32 @ISCSI_DBG_TCP(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
