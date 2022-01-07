; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_reset_state.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/keyboard/extr_atkbd.c_atkbd_reset_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.atkbd = type { %struct.ps2dev }
%struct.ps2dev = type { i32 }

@ATKBD_CMD_SETLEDS = common dso_local global i32 0, align 4
@ATKBD_CMD_SETREP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.atkbd*)* @atkbd_reset_state to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atkbd_reset_state(%struct.atkbd* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.atkbd*, align 8
  %4 = alloca %struct.ps2dev*, align 8
  %5 = alloca [1 x i8], align 1
  store %struct.atkbd* %0, %struct.atkbd** %3, align 8
  %6 = load %struct.atkbd*, %struct.atkbd** %3, align 8
  %7 = getelementptr inbounds %struct.atkbd, %struct.atkbd* %6, i32 0, i32 0
  store %struct.ps2dev* %7, %struct.ps2dev** %4, align 8
  %8 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %8, align 1
  %9 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %10 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %11 = load i32, i32* @ATKBD_CMD_SETLEDS, align 4
  %12 = call i64 @ps2_command(%struct.ps2dev* %9, i8* %10, i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %24

15:                                               ; preds = %1
  %16 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  store i8 0, i8* %16, align 1
  %17 = load %struct.ps2dev*, %struct.ps2dev** %4, align 8
  %18 = getelementptr inbounds [1 x i8], [1 x i8]* %5, i64 0, i64 0
  %19 = load i32, i32* @ATKBD_CMD_SETREP, align 4
  %20 = call i64 @ps2_command(%struct.ps2dev* %17, i8* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %15
  store i32 -1, i32* %2, align 4
  br label %24

23:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %23, %22, %14
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i64 @ps2_command(%struct.ps2dev*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
