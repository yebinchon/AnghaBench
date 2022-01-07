; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_control_playback.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/joystick/iforce/extr_iforce-packets.c_iforce_control_playback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iforce = type { i32 }

@FF_CMD_PLAY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @iforce_control_playback(%struct.iforce* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.iforce*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [3 x i8], align 1
  store %struct.iforce* %0, %struct.iforce** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load i32, i32* %5, align 4
  %9 = call zeroext i8 @LO(i32 %8)
  %10 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  store i8 %9, i8* %10, align 1
  %11 = load i32, i32* %6, align 4
  %12 = icmp ugt i32 %11, 0
  br i1 %12, label %13, label %18

13:                                               ; preds = %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %14, 1
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 65, i32 1
  br label %19

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %18, %13
  %20 = phi i32 [ %17, %13 ], [ 0, %18 ]
  %21 = trunc i32 %20 to i8
  %22 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 1
  store i8 %21, i8* %22, align 1
  %23 = load i32, i32* %6, align 4
  %24 = call zeroext i8 @LO(i32 %23)
  %25 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 2
  store i8 %24, i8* %25, align 1
  %26 = load %struct.iforce*, %struct.iforce** %4, align 8
  %27 = load i32, i32* @FF_CMD_PLAY, align 4
  %28 = getelementptr inbounds [3 x i8], [3 x i8]* %7, i64 0, i64 0
  %29 = call i32 @iforce_send_packet(%struct.iforce* %26, i32 %27, i8* %28)
  ret i32 %29
}

declare dso_local zeroext i8 @LO(i32) #1

declare dso_local i32 @iforce_send_packet(%struct.iforce*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
