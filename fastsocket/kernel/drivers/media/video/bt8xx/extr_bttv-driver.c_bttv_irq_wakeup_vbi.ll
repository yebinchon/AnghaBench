; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_irq_wakeup_vbi.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/bt8xx/extr_bttv-driver.c_bttv_irq_wakeup_vbi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bttv = type { i32 }
%struct.bttv_buffer = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, %struct.timeval }
%struct.timeval = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bttv*, %struct.bttv_buffer*, i32)* @bttv_irq_wakeup_vbi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bttv_irq_wakeup_vbi(%struct.bttv* %0, %struct.bttv_buffer* %1, i32 %2) #0 {
  %4 = alloca %struct.bttv*, align 8
  %5 = alloca %struct.bttv_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.timeval, align 4
  store %struct.bttv* %0, %struct.bttv** %4, align 8
  store %struct.bttv_buffer* %1, %struct.bttv_buffer** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.bttv_buffer*, %struct.bttv_buffer** %5, align 8
  %9 = icmp eq %struct.bttv_buffer* null, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %3
  br label %32

11:                                               ; preds = %3
  %12 = call i32 @do_gettimeofday(%struct.timeval* %7)
  %13 = load %struct.bttv_buffer*, %struct.bttv_buffer** %5, align 8
  %14 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 3
  %16 = bitcast %struct.timeval* %15 to i8*
  %17 = bitcast %struct.timeval* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %16, i8* align 4 %17, i64 4, i1 false)
  %18 = load %struct.bttv*, %struct.bttv** %4, align 8
  %19 = getelementptr inbounds %struct.bttv, %struct.bttv* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.bttv_buffer*, %struct.bttv_buffer** %5, align 8
  %22 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 2
  store i32 %20, i32* %23, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load %struct.bttv_buffer*, %struct.bttv_buffer** %5, align 8
  %26 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  store i32 %24, i32* %27, align 4
  %28 = load %struct.bttv_buffer*, %struct.bttv_buffer** %5, align 8
  %29 = getelementptr inbounds %struct.bttv_buffer, %struct.bttv_buffer* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 1
  %31 = call i32 @wake_up(i32* %30)
  br label %32

32:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @do_gettimeofday(%struct.timeval*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
