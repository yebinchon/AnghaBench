; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0288.c_stv0288_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_stv0288.c_stv0288_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.stv0288_state* }
%struct.stv0288_state = type { i32 }

@.str = private unnamed_addr constant [33 x i8] c"stv0288_read_signal_strength %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @stv0288_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stv0288_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.stv0288_state*, align 8
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.stv0288_state*, %struct.stv0288_state** %8, align 8
  store %struct.stv0288_state* %9, %struct.stv0288_state** %5, align 8
  %10 = load %struct.stv0288_state*, %struct.stv0288_state** %5, align 8
  %11 = call i32 @stv0288_readreg(%struct.stv0288_state* %10, i32 16)
  %12 = shl i32 %11, 8
  %13 = sub nsw i32 65535, %12
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = mul nsw i32 %14, 5
  %16 = sdiv i32 %15, 4
  store i32 %16, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = icmp sgt i32 %17, 65535
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %28

20:                                               ; preds = %2
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %20
  br label %26

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = phi i32 [ 0, %23 ], [ %25, %24 ]
  br label %28

28:                                               ; preds = %26, %19
  %29 = phi i32 [ 65535, %19 ], [ %27, %26 ]
  %30 = load i32*, i32** %4, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dprintk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %32)
  ret i32 0
}

declare dso_local i32 @stv0288_readreg(%struct.stv0288_state*, i32) #1

declare dso_local i32 @dprintk(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
