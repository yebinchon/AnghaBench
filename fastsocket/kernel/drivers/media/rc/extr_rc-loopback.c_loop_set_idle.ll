; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-loopback.c_loop_set_idle.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_rc-loopback.c_loop_set_idle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rc_dev = type { %struct.loopback_dev* }
%struct.loopback_dev = type { i32 }

@.str = private unnamed_addr constant [17 x i8] c"%sing idle mode\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"exit\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rc_dev*, i32)* @loop_set_idle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @loop_set_idle(%struct.rc_dev* %0, i32 %1) #0 {
  %3 = alloca %struct.rc_dev*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.loopback_dev*, align 8
  store %struct.rc_dev* %0, %struct.rc_dev** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.rc_dev*, %struct.rc_dev** %3, align 8
  %7 = getelementptr inbounds %struct.rc_dev, %struct.rc_dev* %6, i32 0, i32 0
  %8 = load %struct.loopback_dev*, %struct.loopback_dev** %7, align 8
  store %struct.loopback_dev* %8, %struct.loopback_dev** %5, align 8
  %9 = load %struct.loopback_dev*, %struct.loopback_dev** %5, align 8
  %10 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %4, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 0
  %17 = zext i1 %16 to i64
  %18 = select i1 %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %19 = call i32 @dprintk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i8* %18)
  %20 = load i32, i32* %4, align 4
  %21 = load %struct.loopback_dev*, %struct.loopback_dev** %5, align 8
  %22 = getelementptr inbounds %struct.loopback_dev, %struct.loopback_dev* %21, i32 0, i32 0
  store i32 %20, i32* %22, align 4
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

declare dso_local i32 @dprintk(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
