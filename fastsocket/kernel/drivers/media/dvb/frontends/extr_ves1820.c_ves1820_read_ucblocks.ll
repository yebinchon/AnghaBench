; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_read_ucblocks.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_ves1820.c_ves1820_read_ucblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.ves1820_state* }
%struct.ves1820_state = type { i32 }

@ves1820_inittab = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @ves1820_read_ucblocks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ves1820_read_ucblocks(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ves1820_state*, align 8
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %6 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %7 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %6, i32 0, i32 0
  %8 = load %struct.ves1820_state*, %struct.ves1820_state** %7, align 8
  store %struct.ves1820_state* %8, %struct.ves1820_state** %5, align 8
  %9 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %10 = call i32 @ves1820_readreg(%struct.ves1820_state* %9, i32 19)
  %11 = and i32 %10, 127
  %12 = load i32*, i32** %4, align 8
  store i32 %11, i32* %12, align 4
  %13 = load i32*, i32** %4, align 8
  %14 = load i32, i32* %13, align 4
  %15 = icmp eq i32 %14, 127
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32*, i32** %4, align 8
  store i32 -1, i32* %17, align 4
  br label %18

18:                                               ; preds = %16, %2
  %19 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %20 = load i32*, i32** @ves1820_inittab, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 16
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 223
  %24 = call i32 @ves1820_writereg(%struct.ves1820_state* %19, i32 16, i32 %23)
  %25 = load %struct.ves1820_state*, %struct.ves1820_state** %5, align 8
  %26 = load i32*, i32** @ves1820_inittab, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 16
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ves1820_writereg(%struct.ves1820_state* %25, i32 16, i32 %28)
  ret i32 0
}

declare dso_local i32 @ves1820_readreg(%struct.ves1820_state*, i32) #1

declare dso_local i32 @ves1820_writereg(%struct.ves1820_state*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
