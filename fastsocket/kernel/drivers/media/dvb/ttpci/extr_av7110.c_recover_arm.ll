; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_recover_arm.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/ttpci/extr_av7110.c_recover_arm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.av7110 = type { i32 (%struct.av7110*)* }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.av7110*)* @recover_arm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @recover_arm(%struct.av7110* %0) #0 {
  %2 = alloca %struct.av7110*, align 8
  store %struct.av7110* %0, %struct.av7110** %2, align 8
  %3 = load %struct.av7110*, %struct.av7110** %2, align 8
  %4 = call i32 @dprintk(i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.av7110* %3)
  %5 = load %struct.av7110*, %struct.av7110** %2, align 8
  %6 = call i32 @av7110_bootarm(%struct.av7110* %5)
  %7 = call i32 @msleep(i32 100)
  %8 = load %struct.av7110*, %struct.av7110** %2, align 8
  %9 = call i32 @init_av7110_av(%struct.av7110* %8)
  %10 = load %struct.av7110*, %struct.av7110** %2, align 8
  %11 = getelementptr inbounds %struct.av7110, %struct.av7110* %10, i32 0, i32 0
  %12 = load i32 (%struct.av7110*)*, i32 (%struct.av7110*)** %11, align 8
  %13 = icmp ne i32 (%struct.av7110*)* %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %1
  %15 = load %struct.av7110*, %struct.av7110** %2, align 8
  %16 = getelementptr inbounds %struct.av7110, %struct.av7110* %15, i32 0, i32 0
  %17 = load i32 (%struct.av7110*)*, i32 (%struct.av7110*)** %16, align 8
  %18 = load %struct.av7110*, %struct.av7110** %2, align 8
  %19 = call i32 %17(%struct.av7110* %18)
  br label %20

20:                                               ; preds = %14, %1
  %21 = load %struct.av7110*, %struct.av7110** %2, align 8
  %22 = call i32 @restart_feeds(%struct.av7110* %21)
  ret void
}

declare dso_local i32 @dprintk(i32, i8*, %struct.av7110*) #1

declare dso_local i32 @av7110_bootarm(%struct.av7110*) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @init_av7110_av(%struct.av7110*) #1

declare dso_local i32 @restart_feeds(%struct.av7110*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
