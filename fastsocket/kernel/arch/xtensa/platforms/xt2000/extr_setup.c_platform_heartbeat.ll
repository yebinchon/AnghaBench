; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/xt2000/extr_setup.c_platform_heartbeat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/xtensa/platforms/xt2000/extr_setup.c_platform_heartbeat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@platform_heartbeat.i = internal global i32 0, align 4
@platform_heartbeat.t = internal global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c" \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @platform_heartbeat() #0 {
  %1 = load i32, i32* @platform_heartbeat.t, align 4
  %2 = add nsw i32 %1, -1
  store i32 %2, i32* @platform_heartbeat.t, align 4
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %4, label %12

4:                                                ; preds = %0
  store i32 59, i32* @platform_heartbeat.t, align 4
  %5 = load i32, i32* @platform_heartbeat.i, align 4
  %6 = icmp ne i32 %5, 0
  %7 = zext i1 %6 to i64
  %8 = select i1 %6, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0)
  %9 = call i32 @led_print(i32 7, i8* %8)
  %10 = load i32, i32* @platform_heartbeat.i, align 4
  %11 = xor i32 %10, 1
  store i32 %11, i32* @platform_heartbeat.i, align 4
  br label %12

12:                                               ; preds = %4, %0
  ret void
}

declare dso_local i32 @led_print(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
