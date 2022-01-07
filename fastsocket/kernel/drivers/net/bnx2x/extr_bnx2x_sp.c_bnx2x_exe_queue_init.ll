; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_exe_queue_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/bnx2x/extr_bnx2x_sp.c_bnx2x_exe_queue_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bnx2x = type { i32 }
%struct.bnx2x_exe_queue_obj = type { i32, i32, i32, i32, i32, i32, %union.bnx2x_qable_obj*, i32, i32, i32 }
%union.bnx2x_qable_obj = type { i32 }

@BNX2X_MSG_SP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Setup the execution queue with the chunk length of %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bnx2x*, %struct.bnx2x_exe_queue_obj*, i32, %union.bnx2x_qable_obj*, i32, i32, i32, i32, i32)* @bnx2x_exe_queue_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bnx2x_exe_queue_init(%struct.bnx2x* %0, %struct.bnx2x_exe_queue_obj* %1, i32 %2, %union.bnx2x_qable_obj* %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.bnx2x*, align 8
  %11 = alloca %struct.bnx2x_exe_queue_obj*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %union.bnx2x_qable_obj*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.bnx2x* %0, %struct.bnx2x** %10, align 8
  store %struct.bnx2x_exe_queue_obj* %1, %struct.bnx2x_exe_queue_obj** %11, align 8
  store i32 %2, i32* %12, align 4
  store %union.bnx2x_qable_obj* %3, %union.bnx2x_qable_obj** %13, align 8
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %19 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %20 = call i32 @memset(%struct.bnx2x_exe_queue_obj* %19, i32 0, i32 48)
  %21 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %22 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %21, i32 0, i32 9
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %25 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %24, i32 0, i32 8
  %26 = call i32 @INIT_LIST_HEAD(i32* %25)
  %27 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %28 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %27, i32 0, i32 7
  %29 = call i32 @spin_lock_init(i32* %28)
  %30 = load i32, i32* %12, align 4
  %31 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %32 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %union.bnx2x_qable_obj*, %union.bnx2x_qable_obj** %13, align 8
  %34 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %35 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %34, i32 0, i32 6
  store %union.bnx2x_qable_obj* %33, %union.bnx2x_qable_obj** %35, align 8
  %36 = load i32, i32* %14, align 4
  %37 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %38 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %15, align 4
  %40 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %41 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 8
  %42 = load i32, i32* %16, align 4
  %43 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %44 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %43, i32 0, i32 3
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* %17, align 4
  %46 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %47 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* %18, align 4
  %49 = load %struct.bnx2x_exe_queue_obj*, %struct.bnx2x_exe_queue_obj** %11, align 8
  %50 = getelementptr inbounds %struct.bnx2x_exe_queue_obj, %struct.bnx2x_exe_queue_obj* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load i32, i32* @BNX2X_MSG_SP, align 4
  %52 = load i32, i32* %12, align 4
  %53 = call i32 @DP(i32 %51, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %52)
  ret void
}

declare dso_local i32 @memset(%struct.bnx2x_exe_queue_obj*, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DP(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
