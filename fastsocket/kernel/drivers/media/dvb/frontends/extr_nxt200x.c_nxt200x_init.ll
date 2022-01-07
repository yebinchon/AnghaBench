; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_nxt200x.c_nxt200x_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.nxt200x_state* }
%struct.nxt200x_state = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @nxt200x_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nxt200x_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.nxt200x_state*, align 8
  %5 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.nxt200x_state*, %struct.nxt200x_state** %7, align 8
  store %struct.nxt200x_state* %8, %struct.nxt200x_state** %4, align 8
  store i32 0, i32* %5, align 4
  %9 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %10 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %29, label %13

13:                                               ; preds = %1
  %14 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %15 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  switch i32 %16, label %23 [
    i32 129, label %17
    i32 128, label %20
  ]

17:                                               ; preds = %13
  %18 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %19 = call i32 @nxt2002_init(%struct.dvb_frontend* %18)
  store i32 %19, i32* %5, align 4
  br label %26

20:                                               ; preds = %13
  %21 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %22 = call i32 @nxt2004_init(%struct.dvb_frontend* %21)
  store i32 %22, i32* %5, align 4
  br label %26

23:                                               ; preds = %13
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %31

26:                                               ; preds = %20, %17
  %27 = load %struct.nxt200x_state*, %struct.nxt200x_state** %4, align 8
  %28 = getelementptr inbounds %struct.nxt200x_state, %struct.nxt200x_state* %27, i32 0, i32 0
  store i32 1, i32* %28, align 4
  br label %29

29:                                               ; preds = %26, %1
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %2, align 4
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

declare dso_local i32 @nxt2002_init(%struct.dvb_frontend*) #1

declare dso_local i32 @nxt2004_init(%struct.dvb_frontend*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
