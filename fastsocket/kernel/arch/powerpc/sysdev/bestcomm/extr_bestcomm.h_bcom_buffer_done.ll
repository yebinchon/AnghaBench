; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h_bcom_buffer_done.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h_bcom_buffer_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { i32 }
%struct.bcom_bd = type { i32 }

@BCOM_BD_READY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bcom_task*)* @bcom_buffer_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bcom_buffer_done(%struct.bcom_task* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bcom_task*, align 8
  %4 = alloca %struct.bcom_bd*, align 8
  store %struct.bcom_task* %0, %struct.bcom_task** %3, align 8
  %5 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %6 = call i64 @bcom_queue_empty(%struct.bcom_task* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %23

9:                                                ; preds = %1
  %10 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %11 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %12 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.bcom_bd* @bcom_get_bd(%struct.bcom_task* %10, i32 %13)
  store %struct.bcom_bd* %14, %struct.bcom_bd** %4, align 8
  %15 = load %struct.bcom_bd*, %struct.bcom_bd** %4, align 8
  %16 = getelementptr inbounds %struct.bcom_bd, %struct.bcom_bd* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @BCOM_BD_READY, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %9, %8
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i64 @bcom_queue_empty(%struct.bcom_task*) #1

declare dso_local %struct.bcom_bd* @bcom_get_bd(%struct.bcom_task*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
