; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h_bcom_submit_next_buffer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/sysdev/bestcomm/extr_bestcomm.h_bcom_submit_next_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bcom_task = type { i64, i32, i8** }
%struct.bcom_bd = type { i32 }

@BCOM_BD_READY = common dso_local global i32 0, align 4
@BCOM_FLAGS_ENABLE_TASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bcom_task*, i8*)* @bcom_submit_next_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bcom_submit_next_buffer(%struct.bcom_task* %0, i8* %1) #0 {
  %3 = alloca %struct.bcom_task*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.bcom_bd*, align 8
  store %struct.bcom_task* %0, %struct.bcom_task** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %7 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %8 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = call %struct.bcom_bd* @bcom_get_bd(%struct.bcom_task* %6, i64 %9)
  store %struct.bcom_bd* %10, %struct.bcom_bd** %5, align 8
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %13 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %12, i32 0, i32 2
  %14 = load i8**, i8*** %13, align 8
  %15 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %16 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds i8*, i8** %14, i64 %17
  store i8* %11, i8** %18, align 8
  %19 = call i32 (...) @mb()
  %20 = load i32, i32* @BCOM_BD_READY, align 4
  %21 = load %struct.bcom_bd*, %struct.bcom_bd** %5, align 8
  %22 = getelementptr inbounds %struct.bcom_bd, %struct.bcom_bd* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = or i32 %23, %20
  store i32 %24, i32* %22, align 4
  %25 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %26 = call i64 @_bcom_next_index(%struct.bcom_task* %25)
  %27 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %28 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %27, i32 0, i32 0
  store i64 %26, i64* %28, align 8
  %29 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %30 = getelementptr inbounds %struct.bcom_task, %struct.bcom_task* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @BCOM_FLAGS_ENABLE_TASK, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %2
  %36 = load %struct.bcom_task*, %struct.bcom_task** %3, align 8
  %37 = call i32 @bcom_enable(%struct.bcom_task* %36)
  br label %38

38:                                               ; preds = %35, %2
  ret void
}

declare dso_local %struct.bcom_bd* @bcom_get_bd(%struct.bcom_task*, i64) #1

declare dso_local i32 @mb(...) #1

declare dso_local i64 @_bcom_next_index(%struct.bcom_task*) #1

declare dso_local i32 @bcom_enable(%struct.bcom_task*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
