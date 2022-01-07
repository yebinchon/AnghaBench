; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_aux_write.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/input/serio/extr_i8042.c_i8042_aux_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.serio = type { %struct.i8042_port* }
%struct.i8042_port = type { i32 }

@I8042_CMD_AUX_SEND = common dso_local global i64 0, align 8
@I8042_CMD_MUX_SEND = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.serio*, i8)* @i8042_aux_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i8042_aux_write(%struct.serio* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.serio*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.i8042_port*, align 8
  store %struct.serio* %0, %struct.serio** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load %struct.serio*, %struct.serio** %3, align 8
  %7 = getelementptr inbounds %struct.serio, %struct.serio* %6, i32 0, i32 0
  %8 = load %struct.i8042_port*, %struct.i8042_port** %7, align 8
  store %struct.i8042_port* %8, %struct.i8042_port** %5, align 8
  %9 = load %struct.i8042_port*, %struct.i8042_port** %5, align 8
  %10 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @I8042_CMD_AUX_SEND, align 8
  br label %22

15:                                               ; preds = %2
  %16 = load i64, i64* @I8042_CMD_MUX_SEND, align 8
  %17 = load %struct.i8042_port*, %struct.i8042_port** %5, align 8
  %18 = getelementptr inbounds %struct.i8042_port, %struct.i8042_port* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = sext i32 %19 to i64
  %21 = add nsw i64 %16, %20
  br label %22

22:                                               ; preds = %15, %13
  %23 = phi i64 [ %14, %13 ], [ %21, %15 ]
  %24 = call i32 @i8042_command(i8* %4, i64 %23)
  ret i32 %24
}

declare dso_local i32 @i8042_command(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
