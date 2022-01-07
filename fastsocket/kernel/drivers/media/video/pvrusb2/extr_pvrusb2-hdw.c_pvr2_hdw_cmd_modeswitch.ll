; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cmd_modeswitch.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/pvrusb2/extr_pvrusb2-hdw.c_pvr2_hdw_cmd_modeswitch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pvr2_hdw = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PVR2_PATHWAY_DIGITAL = common dso_local global i32 0, align 4
@PVR2_PATHWAY_ANALOG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pvr2_hdw*, i32)* @pvr2_hdw_cmd_modeswitch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pvr2_hdw_cmd_modeswitch(%struct.pvr2_hdw* %0, i32 %1) #0 {
  %3 = alloca %struct.pvr2_hdw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pvr2_hdw* %0, %struct.pvr2_hdw** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = load i32, i32* @PVR2_PATHWAY_DIGITAL, align 4
  br label %12

10:                                               ; preds = %2
  %11 = load i32, i32* @PVR2_PATHWAY_ANALOG, align 4
  br label %12

12:                                               ; preds = %10, %8
  %13 = phi i32 [ %9, %8 ], [ %11, %10 ]
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %16 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp eq i32 %14, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %12
  br label %48

20:                                               ; preds = %12
  %21 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %22 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %21, i32 0, i32 1
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  switch i32 %25, label %41 [
    i32 129, label %26
    i32 128, label %37
  ]

26:                                               ; preds = %20
  %27 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pvr2_hdw_cmd_hcw_demod_reset(%struct.pvr2_hdw* %27, i32 %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* @PVR2_PATHWAY_ANALOG, align 4
  %32 = icmp eq i32 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %35 = call i32 @pvr2_hdw_cmd_decoder_reset(%struct.pvr2_hdw* %34)
  br label %36

36:                                               ; preds = %33, %26
  br label %42

37:                                               ; preds = %20
  %38 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @pvr2_hdw_cmd_onair_fe_power_ctrl(%struct.pvr2_hdw* %38, i32 %39)
  br label %42

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %37, %36
  %43 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %44 = call i32 @pvr2_hdw_untrip_unlocked(%struct.pvr2_hdw* %43)
  %45 = load i32, i32* %5, align 4
  %46 = load %struct.pvr2_hdw*, %struct.pvr2_hdw** %3, align 8
  %47 = getelementptr inbounds %struct.pvr2_hdw, %struct.pvr2_hdw* %46, i32 0, i32 0
  store i32 %45, i32* %47, align 8
  br label %48

48:                                               ; preds = %42, %19
  ret void
}

declare dso_local i32 @pvr2_hdw_cmd_hcw_demod_reset(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_cmd_decoder_reset(%struct.pvr2_hdw*) #1

declare dso_local i32 @pvr2_hdw_cmd_onair_fe_power_ctrl(%struct.pvr2_hdw*, i32) #1

declare dso_local i32 @pvr2_hdw_untrip_unlocked(%struct.pvr2_hdw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
