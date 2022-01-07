; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_timer.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/extr_gamecon.c_gc_timer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gc = type { i32, i64* }

@GC_N64 = common dso_local global i64 0, align 8
@GC_NES = common dso_local global i64 0, align 8
@GC_SNES = common dso_local global i64 0, align 8
@GC_SNESMOUSE = common dso_local global i64 0, align 8
@GC_MULTI = common dso_local global i64 0, align 8
@GC_MULTI2 = common dso_local global i64 0, align 8
@GC_PSX = common dso_local global i64 0, align 8
@GC_DDR = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@GC_REFRESH_TIME = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64)* @gc_timer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gc_timer(i64 %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.gc*, align 8
  store i64 %0, i64* %2, align 8
  %4 = load i64, i64* %2, align 8
  %5 = inttoptr i64 %4 to i8*
  %6 = bitcast i8* %5 to %struct.gc*
  store %struct.gc* %6, %struct.gc** %3, align 8
  %7 = load %struct.gc*, %struct.gc** %3, align 8
  %8 = getelementptr inbounds %struct.gc, %struct.gc* %7, i32 0, i32 1
  %9 = load i64*, i64** %8, align 8
  %10 = load i64, i64* @GC_N64, align 8
  %11 = getelementptr inbounds i64, i64* %9, i64 %10
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = load %struct.gc*, %struct.gc** %3, align 8
  %16 = call i32 @gc_n64_process_packet(%struct.gc* %15)
  br label %17

17:                                               ; preds = %14, %1
  %18 = load %struct.gc*, %struct.gc** %3, align 8
  %19 = getelementptr inbounds %struct.gc, %struct.gc* %18, i32 0, i32 1
  %20 = load i64*, i64** %19, align 8
  %21 = load i64, i64* @GC_NES, align 8
  %22 = getelementptr inbounds i64, i64* %20, i64 %21
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %41, label %25

25:                                               ; preds = %17
  %26 = load %struct.gc*, %struct.gc** %3, align 8
  %27 = getelementptr inbounds %struct.gc, %struct.gc* %26, i32 0, i32 1
  %28 = load i64*, i64** %27, align 8
  %29 = load i64, i64* @GC_SNES, align 8
  %30 = getelementptr inbounds i64, i64* %28, i64 %29
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %41, label %33

33:                                               ; preds = %25
  %34 = load %struct.gc*, %struct.gc** %3, align 8
  %35 = getelementptr inbounds %struct.gc, %struct.gc* %34, i32 0, i32 1
  %36 = load i64*, i64** %35, align 8
  %37 = load i64, i64* @GC_SNESMOUSE, align 8
  %38 = getelementptr inbounds i64, i64* %36, i64 %37
  %39 = load i64, i64* %38, align 8
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %33, %25, %17
  %42 = load %struct.gc*, %struct.gc** %3, align 8
  %43 = call i32 @gc_nes_process_packet(%struct.gc* %42)
  br label %44

44:                                               ; preds = %41, %33
  %45 = load %struct.gc*, %struct.gc** %3, align 8
  %46 = getelementptr inbounds %struct.gc, %struct.gc* %45, i32 0, i32 1
  %47 = load i64*, i64** %46, align 8
  %48 = load i64, i64* @GC_MULTI, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %60, label %52

52:                                               ; preds = %44
  %53 = load %struct.gc*, %struct.gc** %3, align 8
  %54 = getelementptr inbounds %struct.gc, %struct.gc* %53, i32 0, i32 1
  %55 = load i64*, i64** %54, align 8
  %56 = load i64, i64* @GC_MULTI2, align 8
  %57 = getelementptr inbounds i64, i64* %55, i64 %56
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %63

60:                                               ; preds = %52, %44
  %61 = load %struct.gc*, %struct.gc** %3, align 8
  %62 = call i32 @gc_multi_process_packet(%struct.gc* %61)
  br label %63

63:                                               ; preds = %60, %52
  %64 = load %struct.gc*, %struct.gc** %3, align 8
  %65 = getelementptr inbounds %struct.gc, %struct.gc* %64, i32 0, i32 1
  %66 = load i64*, i64** %65, align 8
  %67 = load i64, i64* @GC_PSX, align 8
  %68 = getelementptr inbounds i64, i64* %66, i64 %67
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %79, label %71

71:                                               ; preds = %63
  %72 = load %struct.gc*, %struct.gc** %3, align 8
  %73 = getelementptr inbounds %struct.gc, %struct.gc* %72, i32 0, i32 1
  %74 = load i64*, i64** %73, align 8
  %75 = load i64, i64* @GC_DDR, align 8
  %76 = getelementptr inbounds i64, i64* %74, i64 %75
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %71, %63
  %80 = load %struct.gc*, %struct.gc** %3, align 8
  %81 = call i32 @gc_psx_process_packet(%struct.gc* %80)
  br label %82

82:                                               ; preds = %79, %71
  %83 = load %struct.gc*, %struct.gc** %3, align 8
  %84 = getelementptr inbounds %struct.gc, %struct.gc* %83, i32 0, i32 0
  %85 = load i64, i64* @jiffies, align 8
  %86 = load i64, i64* @GC_REFRESH_TIME, align 8
  %87 = add nsw i64 %85, %86
  %88 = call i32 @mod_timer(i32* %84, i64 %87)
  ret void
}

declare dso_local i32 @gc_n64_process_packet(%struct.gc*) #1

declare dso_local i32 @gc_nes_process_packet(%struct.gc*) #1

declare dso_local i32 @gc_multi_process_packet(%struct.gc*) #1

declare dso_local i32 @gc_psx_process_packet(%struct.gc*) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
