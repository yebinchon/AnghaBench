; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_load_mm_tracker.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/misc/sgi-gru/extr_grumain.c_gru_load_mm_tracker.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gru_state = type { i64, i64, i32 }
%struct.gru_thread_state = type { i32, %struct.gru_mm_struct* }
%struct.gru_mm_struct = type { i32*, i32, %struct.gru_mm_tracker* }
%struct.gru_mm_tracker = type { i32, i16, i64 }

@asid_new = common dso_local global i32 0, align 4
@asid_reuse = common dso_local global i32 0, align 4
@grudev = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [61 x i8] c"gid %d, gts %p, gms %p, ctxnum %d, asid 0x%x, asidmap 0x%lx\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gru_state*, %struct.gru_thread_state*)* @gru_load_mm_tracker to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gru_load_mm_tracker(%struct.gru_state* %0, %struct.gru_thread_state* %1) #0 {
  %3 = alloca %struct.gru_state*, align 8
  %4 = alloca %struct.gru_thread_state*, align 8
  %5 = alloca %struct.gru_mm_struct*, align 8
  %6 = alloca %struct.gru_mm_tracker*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.gru_state* %0, %struct.gru_state** %3, align 8
  store %struct.gru_thread_state* %1, %struct.gru_thread_state** %4, align 8
  %9 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %10 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %9, i32 0, i32 1
  %11 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %10, align 8
  store %struct.gru_mm_struct* %11, %struct.gru_mm_struct** %5, align 8
  %12 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %13 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %12, i32 0, i32 2
  %14 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %13, align 8
  %15 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %16 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %14, i64 %17
  store %struct.gru_mm_tracker* %18, %struct.gru_mm_tracker** %6, align 8
  %19 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %20 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = shl i32 1, %21
  %23 = trunc i32 %22 to i16
  store i16 %23, i16* %7, align 2
  %24 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %25 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %24, i32 0, i32 1
  %26 = call i32 @spin_lock(i32* %25)
  %27 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %28 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %8, align 4
  %30 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %31 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %30, i32 0, i32 2
  %32 = call i32 @spin_lock(i32* %31)
  %33 = load i32, i32* %8, align 4
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %49, label %35

35:                                               ; preds = %2
  %36 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %37 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %36, i32 0, i32 1
  %38 = load i16, i16* %37, align 4
  %39 = zext i16 %38 to i32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %62

41:                                               ; preds = %35
  %42 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %43 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %46 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %44, %47
  br i1 %48, label %49, label %62

49:                                               ; preds = %41, %2
  %50 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %51 = call i32 @gru_assign_asid(%struct.gru_state* %50)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %8, align 4
  %53 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %54 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %53, i32 0, i32 0
  store i32 %52, i32* %54, align 8
  %55 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %56 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %59 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %58, i32 0, i32 2
  store i64 %57, i64* %59, align 8
  %60 = load i32, i32* @asid_new, align 4
  %61 = call i32 @STAT(i32 %60)
  br label %65

62:                                               ; preds = %41, %35
  %63 = load i32, i32* @asid_reuse, align 4
  %64 = call i32 @STAT(i32 %63)
  br label %65

65:                                               ; preds = %62, %49
  %66 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %67 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %66, i32 0, i32 2
  %68 = call i32 @spin_unlock(i32* %67)
  %69 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %70 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %69, i32 0, i32 1
  %71 = load i16, i16* %70, align 4
  %72 = zext i16 %71 to i32
  %73 = load i16, i16* %7, align 2
  %74 = zext i16 %73 to i32
  %75 = and i32 %72, %74
  %76 = trunc i32 %75 to i16
  %77 = call i32 @BUG_ON(i16 zeroext %76)
  %78 = load i16, i16* %7, align 2
  %79 = zext i16 %78 to i32
  %80 = load %struct.gru_mm_tracker*, %struct.gru_mm_tracker** %6, align 8
  %81 = getelementptr inbounds %struct.gru_mm_tracker, %struct.gru_mm_tracker* %80, i32 0, i32 1
  %82 = load i16, i16* %81, align 4
  %83 = zext i16 %82 to i32
  %84 = or i32 %83, %79
  %85 = trunc i32 %84 to i16
  store i16 %85, i16* %81, align 4
  %86 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %87 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %90 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @test_bit(i64 %88, i32* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %102, label %94

94:                                               ; preds = %65
  %95 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %96 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %99 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = call i32 @__set_bit(i64 %97, i32* %100)
  br label %102

102:                                              ; preds = %94, %65
  %103 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %104 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %103, i32 0, i32 1
  %105 = call i32 @spin_unlock(i32* %104)
  %106 = load i32, i32* @grudev, align 4
  %107 = load %struct.gru_state*, %struct.gru_state** %3, align 8
  %108 = getelementptr inbounds %struct.gru_state, %struct.gru_state* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %111 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %112 = load %struct.gru_thread_state*, %struct.gru_thread_state** %4, align 8
  %113 = getelementptr inbounds %struct.gru_thread_state, %struct.gru_thread_state* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load i32, i32* %8, align 4
  %116 = load %struct.gru_mm_struct*, %struct.gru_mm_struct** %5, align 8
  %117 = getelementptr inbounds %struct.gru_mm_struct, %struct.gru_mm_struct* %116, i32 0, i32 0
  %118 = load i32*, i32** %117, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 0
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @gru_dbg(i32 %106, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i64 %109, %struct.gru_thread_state* %110, %struct.gru_mm_struct* %111, i32 %114, i32 %115, i32 %120)
  %122 = load i32, i32* %8, align 4
  ret i32 %122
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @gru_assign_asid(%struct.gru_state*) #1

declare dso_local i32 @STAT(i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @BUG_ON(i16 zeroext) #1

declare dso_local i32 @test_bit(i64, i32*) #1

declare dso_local i32 @__set_bit(i64, i32*) #1

declare dso_local i32 @gru_dbg(i32, i8*, i64, %struct.gru_thread_state*, %struct.gru_mm_struct*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
