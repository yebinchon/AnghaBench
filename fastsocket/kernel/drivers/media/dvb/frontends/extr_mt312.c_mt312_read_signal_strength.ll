; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_read_signal_strength.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_read_signal_strength.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt312_state* }
%struct.mt312_state = type { i32 }

@AGC_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"agc=%08x err_db=%hd\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32*)* @mt312_read_signal_strength to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_read_signal_strength(%struct.dvb_frontend* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dvb_frontend*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.mt312_state*, align 8
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.dvb_frontend*, %struct.dvb_frontend** %4, align 8
  %12 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %11, i32 0, i32 0
  %13 = load %struct.mt312_state*, %struct.mt312_state** %12, align 8
  store %struct.mt312_state* %13, %struct.mt312_state** %6, align 8
  %14 = load %struct.mt312_state*, %struct.mt312_state** %6, align 8
  %15 = load i32, i32* @AGC_H, align 4
  %16 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %17 = call i32 @mt312_read(%struct.mt312_state* %14, i32 %15, i32* %16, i32 12)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %2
  %21 = load i32, i32* %7, align 4
  store i32 %21, i32* %3, align 4
  br label %44

22:                                               ; preds = %2
  %23 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = shl i32 %24, 6
  %26 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %27 = load i32, i32* %26, align 4
  %28 = ashr i32 %27, 2
  %29 = or i32 %25, %28
  store i32 %29, i32* %9, align 4
  %30 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  %31 = load i32, i32* %30, align 4
  %32 = and i32 %31, 3
  %33 = shl i32 %32, 14
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  %35 = load i32, i32* %34, align 4
  %36 = shl i32 %35, 6
  %37 = or i32 %33, %36
  %38 = ashr i32 %37, 6
  store i32 %38, i32* %10, align 4
  %39 = load i32, i32* %9, align 4
  %40 = load i32*, i32** %5, align 8
  store i32 %39, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %10, align 4
  %43 = call i32 @dprintk(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %41, i32 %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %22, %20
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local i32 @mt312_read(%struct.mt312_state*, i32, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
