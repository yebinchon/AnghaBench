; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_unload_mm_tracker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_unload_mm_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i64, i32 }
%struct.gru_thread_state = type { i32, %struct.gru_mm_struct* }
%struct.gru_mm_struct = type { i32, i32*, %struct.gru_mm_tracker* }
%struct.gru_mm_tracker = type { i16 }

@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [52 x i8] c"gid %d, gts %p, gms %p, ctxnum 0x%d, asidmap 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gru_state*, %struct.gru_thread_state*)* @gru_unload_mm_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gru_unload_mm_tracker(%struct.gru_state* %0, %struct.gru_thread_state* %1) #0 {
  %3 = alloca %struct.gru_state*, align 8
  %4 = alloca %struct.gru_thread_state*, align 8
  %5 = alloca %struct.gru_mm_struct*, align 8
  %6 = alloca %struct.gru_mm_tracker*, align 8
  %7 = alloca i16, align 2
  store %struct.gru_state* %0, %struct.gru_state** %3, align 8
  store %struct.gru_thread_state* %1, %struct.gru_thread_state** %4, align 8
  %8 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %9 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %8, i32 0, i32 1
  %10 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %9, align 8
  store %struct.gru_mm_struct* %10, %struct.gru_mm_struct** %5, align 8
  %11 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %12 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %11, i32 0, i32 2
  %13 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %12, align 8
  %14 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %15 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %13, i64 %16
  store %struct.gru_mm_tracker* %17, %struct.gru_mm_tracker** %6, align 8
  %18 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %19 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 1, %20
  %22 = trunc i32 %21 to i16
  store i16 %22, i16* %7, align 2
  %23 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %24 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %23, i32 0, i32 0
  %25 = call i32 @spin_lock(i32* %24)
  %26 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %27 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %26, i32 0, i32 1
  %28 = call i32 @spin_lock(i32* %27)
  %29 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %30 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %29, i32 0, i32 0
  %31 = load i16, i16* %30, align 2
  %32 = zext i16 %31 to i32
  %33 = load i16, i16* %7, align 2
  %34 = zext i16 %33 to i32
  %35 = and i32 %32, %34
  %36 = load i16, i16* %7, align 2
  %37 = zext i16 %36 to i32
  %38 = icmp ne i32 %35, %37
  %39 = zext i1 %38 to i32
  %40 = call i32 @BUG_ON(i32 %39)
  %41 = load i16, i16* %7, align 2
  %42 = zext i16 %41 to i32
  %43 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %44 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %43, i32 0, i32 0
  %45 = load i16, i16* %44, align 2
  %46 = zext i16 %45 to i32
  %47 = xor i32 %46, %42
  %48 = trunc i32 %47 to i16
  store i16 %48, i16* %44, align 2
  %49 = load i32, i32* @grudev, align 4
  %50 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %51 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %54 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %55 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %56 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %59 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @gru_dbg(i32 %49, i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0), i64 %52, %struct.gru_thread_state* %53, %struct.gru_mm_struct* %54, i32 %57, i32 %62)
  %64 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %65 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  %67 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %68 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @gru_dbg(i32, i8*, i64, %struct.gru_thread_state*, %struct.gru_mm_struct*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
