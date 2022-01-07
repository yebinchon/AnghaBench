; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_stdavail_set.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_ctrl_stdavail_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_ctrl = type { %struct.pvr2_hdw* }
%struct.pvr2_hdw = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pvr2_ctrl*, i32, i32)* @ctrl_stdavail_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ctrl_stdavail_set(%struct.pvr2_ctrl* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pvr2_ctrl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pvr2_hdw*, align 8
  %9 = alloca i32, align 4
  store %struct.pvr2_ctrl* %0, %struct.pvr2_ctrl** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pvr2_ctrl*, %struct.pvr2_ctrl** %5, align 8
  %11 = getelementptr inbounds %struct.pvr2_ctrl, %struct.pvr2_ctrl* %10, i32 0, i32 0
  %12 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %11, align 8
  store %struct.pvr2_hdw* %12, %struct.pvr2_hdw** %8, align 8
  %13 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %14 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* %6, align 4
  %18 = xor i32 %17, -1
  %19 = and i32 %16, %18
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %6, align 4
  %22 = and i32 %20, %21
  %23 = or i32 %19, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %26 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %38

30:                                               ; preds = %3
  %31 = load i32, i32* %9, align 4
  %32 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %33 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %35 = call i32 @pvr2_hdw_internal_set_std_avail(%struct.pvr2_hdw* %34)
  %36 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %8, align 8
  %37 = call i32 @pvr2_hdw_internal_find_stdenum(%struct.pvr2_hdw* %36)
  store i32 0, i32* %4, align 4
  br label %38

38:                                               ; preds = %30, %29
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @pvr2_hdw_internal_set_std_avail(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_internal_find_stdenum(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
