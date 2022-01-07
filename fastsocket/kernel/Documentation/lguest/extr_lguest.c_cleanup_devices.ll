; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_cleanup_devices.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/Documentation/lguest/extr_lguest.c_cleanup_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.device* }
%struct.device = type { %struct.device* }
%struct.TYPE_4__ = type { i32 }

@devices = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@orig_term = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@ISIG = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@STDIN_FILENO = common dso_local global i32 0, align 4
@TCSANOW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @cleanup_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cleanup_devices() #0 {
  %1 = alloca %struct.device*, align 8
  %2 = load %struct.device*, %struct.device** getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @devices, i32 0, i32 0), align 8
  store %struct.device* %2, %struct.device** %1, align 8
  br label %3

3:                                                ; preds = %9, %0
  %4 = load %struct.device*, %struct.device** %1, align 8
  %5 = icmp ne %struct.device* %4, null
  br i1 %5, label %6, label %13

6:                                                ; preds = %3
  %7 = load %struct.device*, %struct.device** %1, align 8
  %8 = call i32 @reset_device(%struct.device* %7)
  br label %9

9:                                                ; preds = %6
  %10 = load %struct.device*, %struct.device** %1, align 8
  %11 = getelementptr inbounds %struct.device, %struct.device* %10, i32 0, i32 0
  %12 = load %struct.device*, %struct.device** %11, align 8
  store %struct.device* %12, %struct.device** %1, align 8
  br label %3

13:                                               ; preds = %3
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @orig_term, i32 0, i32 0), align 4
  %15 = load i32, i32* @ISIG, align 4
  %16 = load i32, i32* @ICANON, align 4
  %17 = or i32 %15, %16
  %18 = load i32, i32* @ECHO, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %14, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %13
  %23 = load i32, i32* @STDIN_FILENO, align 4
  %24 = load i32, i32* @TCSANOW, align 4
  %25 = call i32 @tcsetattr(i32 %23, i32 %24, %struct.TYPE_4__* @orig_term)
  br label %26

26:                                               ; preds = %22, %13
  ret void
}

declare dso_local i32 @reset_device(%struct.device*) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
