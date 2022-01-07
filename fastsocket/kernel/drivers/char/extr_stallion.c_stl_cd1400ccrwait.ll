; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400ccrwait.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_stallion.c_stl_cd1400ccrwait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stlport = type { i32, i32, i32 }

@CCR_MAXWAIT = common dso_local global i32 0, align 4
@CCR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [58 x i8] c"STALLION: cd1400 not responding, port=%d panel=%d brd=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.stlport*)* @stl_cd1400ccrwait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @stl_cd1400ccrwait(%struct.stlport* %0) #0 {
  %2 = alloca %struct.stlport*, align 8
  %3 = alloca i32, align 4
  store %struct.stlport* %0, %struct.stlport** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %15, %1
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @CCR_MAXWAIT, align 4
  %7 = icmp slt i32 %5, %6
  br i1 %7, label %8, label %18

8:                                                ; preds = %4
  %9 = load %struct.stlport*, %struct.stlport** %2, align 8
  %10 = load i32, i32* @CCR, align 4
  %11 = call i64 @stl_cd1400getreg(%struct.stlport* %9, i32 %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %29

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %14
  %16 = load i32, i32* %3, align 4
  %17 = add nsw i32 %16, 1
  store i32 %17, i32* %3, align 4
  br label %4

18:                                               ; preds = %4
  %19 = load %struct.stlport*, %struct.stlport** %2, align 8
  %20 = getelementptr inbounds %struct.stlport, %struct.stlport* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.stlport*, %struct.stlport** %2, align 8
  %23 = getelementptr inbounds %struct.stlport, %struct.stlport* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.stlport*, %struct.stlport** %2, align 8
  %26 = getelementptr inbounds %struct.stlport, %struct.stlport* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24, i32 %27)
  br label %29

29:                                               ; preds = %18, %13
  ret void
}

declare dso_local i64 @stl_cd1400getreg(%struct.stlport*, i32) #1

declare dso_local i32 @printk(i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
