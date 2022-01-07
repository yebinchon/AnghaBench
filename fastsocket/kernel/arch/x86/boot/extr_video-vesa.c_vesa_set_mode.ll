; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vesa.c_vesa_set_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vesa.c_vesa_set_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.mode_info = type { i32, i32, i32 }
%struct.biosregs = type { i32, i32, i64, i32 }

@VIDEO_FIRST_VESA = common dso_local global i32 0, align 4
@vminfo = common dso_local global %struct.TYPE_3__ zeroinitializer, align 4
@graphic_mode = common dso_local global i32 0, align 4
@force_x = common dso_local global i32 0, align 4
@force_y = common dso_local global i32 0, align 4
@do_restore = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mode_info*)* @vesa_set_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vesa_set_mode(%struct.mode_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mode_info*, align 8
  %4 = alloca %struct.biosregs, align 8
  %5 = alloca %struct.biosregs, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mode_info* %0, %struct.mode_info** %3, align 8
  %8 = load %struct.mode_info*, %struct.mode_info** %3, align 8
  %9 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i32, i32* @VIDEO_FIRST_VESA, align 4
  %12 = sub nsw i32 %10, %11
  store i32 %12, i32* %7, align 4
  %13 = call i32 @memset(%struct.TYPE_3__* @vminfo, i32 0, i32 4)
  %14 = call i32 @initregs(%struct.biosregs* %4)
  %15 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %4, i32 0, i32 0
  store i32 20225, i32* %15, align 8
  %16 = load i32, i32* %7, align 4
  %17 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %4, i32 0, i32 1
  store i32 %16, i32* %17, align 4
  %18 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %4, i32 0, i32 2
  store i64 ptrtoint (%struct.TYPE_3__* @vminfo to i64), i64* %18, align 8
  %19 = call i32 @intcall(i32 16, %struct.biosregs* %4, %struct.biosregs* %5)
  %20 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %5, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, 79
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %54

24:                                               ; preds = %1
  %25 = load i32, i32* getelementptr inbounds (%struct.TYPE_3__, %struct.TYPE_3__* @vminfo, i32 0, i32 0), align 4
  %26 = and i32 %25, 21
  %27 = icmp eq i32 %26, 5
  br i1 %27, label %28, label %29

28:                                               ; preds = %24
  store i32 0, i32* %6, align 4
  br label %30

29:                                               ; preds = %24
  store i32 -1, i32* %2, align 4
  br label %54

30:                                               ; preds = %28
  %31 = call i32 @initregs(%struct.biosregs* %4)
  %32 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %4, i32 0, i32 0
  store i32 20226, i32* %32, align 8
  %33 = load i32, i32* %7, align 4
  %34 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %4, i32 0, i32 3
  store i32 %33, i32* %34, align 8
  %35 = call i32 @intcall(i32 16, %struct.biosregs* %4, %struct.biosregs* %5)
  %36 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %5, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 79
  br i1 %38, label %39, label %40

39:                                               ; preds = %30
  store i32 -1, i32* %2, align 4
  br label %54

40:                                               ; preds = %30
  %41 = load i32, i32* %6, align 4
  store i32 %41, i32* @graphic_mode, align 4
  %42 = load i32, i32* %6, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %51, label %44

44:                                               ; preds = %40
  %45 = load %struct.mode_info*, %struct.mode_info** %3, align 8
  %46 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  store i32 %47, i32* @force_x, align 4
  %48 = load %struct.mode_info*, %struct.mode_info** %3, align 8
  %49 = getelementptr inbounds %struct.mode_info, %struct.mode_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  store i32 %50, i32* @force_y, align 4
  store i32 1, i32* @do_restore, align 4
  br label %53

51:                                               ; preds = %40
  %52 = call i32 (...) @vesa_store_mode_params_graphics()
  br label %53

53:                                               ; preds = %51, %44
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %39, %29, %23
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i32 @memset(%struct.TYPE_3__*, i32, i32) #1

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

declare dso_local i32 @vesa_store_mode_params_graphics(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
