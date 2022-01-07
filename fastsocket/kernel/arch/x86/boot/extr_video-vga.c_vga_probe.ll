; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vga.c_vga_probe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/x86/boot/extr_video-vga.c_vga_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mode_info = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i8*, %struct.mode_info* }
%struct.biosregs = type { i32, i32, i32, i32 }

@vga_probe.card_name = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"CGA/MDA/HGC\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"EGA\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"VGA\00", align 1
@vga_probe.mode_lists = internal global [3 x %struct.mode_info*] [%struct.mode_info* inttoptr (i64 130 to %struct.mode_info*), %struct.mode_info* inttoptr (i64 129 to %struct.mode_info*), %struct.mode_info* inttoptr (i64 128 to %struct.mode_info*)], align 16
@vga_probe.mode_count = internal global [3 x i32] [i32 1, i32 1, i32 1], align 4
@boot_params = common dso_local global %struct.TYPE_6__ zeroinitializer, align 4
@ADAPTER_VGA = common dso_local global i64 0, align 8
@adapter = common dso_local global i64 0, align 8
@ADAPTER_EGA = common dso_local global i64 0, align 8
@ADAPTER_CGA = common dso_local global i64 0, align 8
@video_vga = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @vga_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vga_probe() #0 {
  %1 = alloca %struct.biosregs, align 4
  %2 = alloca %struct.biosregs, align 4
  %3 = call i32 @initregs(%struct.biosregs* %1)
  %4 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 4608, i32* %4, align 4
  %5 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 1
  store i32 16, i32* %5, align 4
  %6 = call i32 @intcall(i32 16, %struct.biosregs* %1, %struct.biosregs* %2)
  %7 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 3
  %8 = load i32, i32* %7, align 4
  store i32 %8, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 1), align 4
  %9 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 16
  br i1 %11, label %12, label %23

12:                                               ; preds = %0
  %13 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %1, i32 0, i32 0
  store i32 6656, i32* %13, align 4
  %14 = call i32 @intcall(i32 16, %struct.biosregs* %1, %struct.biosregs* %2)
  %15 = getelementptr inbounds %struct.biosregs, %struct.biosregs* %2, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 26
  br i1 %17, label %18, label %20

18:                                               ; preds = %12
  %19 = load i64, i64* @ADAPTER_VGA, align 8
  store i64 %19, i64* @adapter, align 8
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @boot_params, i32 0, i32 0, i32 0), align 4
  br label %22

20:                                               ; preds = %12
  %21 = load i64, i64* @ADAPTER_EGA, align 8
  store i64 %21, i64* @adapter, align 8
  br label %22

22:                                               ; preds = %20, %18
  br label %25

23:                                               ; preds = %0
  %24 = load i64, i64* @ADAPTER_CGA, align 8
  store i64 %24, i64* @adapter, align 8
  br label %25

25:                                               ; preds = %23, %22
  %26 = load i64, i64* @adapter, align 8
  %27 = getelementptr inbounds [3 x %struct.mode_info*], [3 x %struct.mode_info*]* @vga_probe.mode_lists, i64 0, i64 %26
  %28 = load %struct.mode_info*, %struct.mode_info** %27, align 8
  store %struct.mode_info* %28, %struct.mode_info** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @video_vga, i32 0, i32 1), align 8
  %29 = load i64, i64* @adapter, align 8
  %30 = getelementptr inbounds [3 x i8*], [3 x i8*]* @vga_probe.card_name, i64 0, i64 %29
  %31 = load i8*, i8** %30, align 8
  store i8* %31, i8** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @video_vga, i32 0, i32 0), align 8
  %32 = load i64, i64* @adapter, align 8
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* @vga_probe.mode_count, i64 0, i64 %32
  %34 = load i32, i32* %33, align 4
  ret i32 %34
}

declare dso_local i32 @initregs(%struct.biosregs*) #1

declare dso_local i32 @intcall(i32, %struct.biosregs*, %struct.biosregs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
