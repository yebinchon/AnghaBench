; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_ForwardSetup.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/video/extr_cpia_pp.c_ForwardSetup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pp_cam_entry = type { i32 }

@IEEE1284_MODE_ECP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"Unable to negotiate IEEE1284 ECP Download mode\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pp_cam_entry*)* @ForwardSetup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ForwardSetup(%struct.pp_cam_entry* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pp_cam_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.pp_cam_entry* %0, %struct.pp_cam_entry** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %18, %1
  %6 = load i32, i32* %4, align 4
  %7 = icmp slt i32 %6, 4
  br i1 %7, label %8, label %21

8:                                                ; preds = %5
  %9 = load %struct.pp_cam_entry*, %struct.pp_cam_entry** %3, align 8
  %10 = getelementptr inbounds %struct.pp_cam_entry, %struct.pp_cam_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @IEEE1284_MODE_ECP, align 4
  %13 = call i32 @parport_negotiate(i32 %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %8
  br label %21

16:                                               ; preds = %8
  %17 = call i32 @mdelay(i32 10)
  br label %18

18:                                               ; preds = %16
  %19 = load i32, i32* %4, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %4, align 4
  br label %5

21:                                               ; preds = %15, %5
  %22 = load i32, i32* %4, align 4
  %23 = icmp eq i32 %22, 4
  br i1 %23, label %24, label %26

24:                                               ; preds = %21
  %25 = call i32 @DBG(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  store i32 -1, i32* %2, align 4
  br label %27

26:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %27

27:                                               ; preds = %26, %24
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @parport_negotiate(i32, i32) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @DBG(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
