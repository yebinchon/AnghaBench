; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_polarization.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/bt8xx/extr_dst.c_dst_set_polarization.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dst_state = type { i32, i32* }

@verbose = common dso_local global i32 0, align 4
@DST_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Polarization=[Vertical]\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Polarization=[Horizontal]\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dst_state*)* @dst_set_polarization to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dst_set_polarization(%struct.dst_state* %0) #0 {
  %2 = alloca %struct.dst_state*, align 8
  store %struct.dst_state* %0, %struct.dst_state** %2, align 8
  %3 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %4 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %3, i32 0, i32 0
  %5 = load i32, i32* %4, align 8
  switch i32 %5, label %27 [
    i32 130, label %6
    i32 129, label %16
    i32 128, label %26
  ]

6:                                                ; preds = %1
  %7 = load i32, i32* @verbose, align 4
  %8 = load i32, i32* @DST_INFO, align 4
  %9 = call i32 @dprintk(i32 %7, i32 %8, i32 1, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %11 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = getelementptr inbounds i32, i32* %12, i64 8
  %14 = load i32, i32* %13, align 4
  %15 = and i32 %14, -65
  store i32 %15, i32* %13, align 4
  br label %27

16:                                               ; preds = %1
  %17 = load i32, i32* @verbose, align 4
  %18 = load i32, i32* @DST_INFO, align 4
  %19 = call i32 @dprintk(i32 %17, i32 %18, i32 1, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %20 = load %struct.dst_state*, %struct.dst_state** %2, align 8
  %21 = getelementptr inbounds %struct.dst_state, %struct.dst_state* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 8
  %24 = load i32, i32* %23, align 4
  %25 = or i32 %24, 64
  store i32 %25, i32* %23, align 4
  br label %27

26:                                               ; preds = %1
  br label %27

27:                                               ; preds = %1, %26, %16, %6
  ret i32 0
}

declare dso_local i32 @dprintk(i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
