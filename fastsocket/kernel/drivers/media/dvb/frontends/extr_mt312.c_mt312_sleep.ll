; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_sleep.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_sleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.mt312_state* }
%struct.mt312_state = type { i64 }

@ID_ZL10313 = common dso_local global i64 0, align 8
@GPP_CTRL = common dso_local global i32 0, align 4
@HW_CTRL = common dso_local global i32 0, align 4
@CONFIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @mt312_sleep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_sleep(%struct.dvb_frontend* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dvb_frontend*, align 8
  %4 = alloca %struct.mt312_state*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %3, align 8
  %7 = load %struct.dvb_frontend*, %struct.dvb_frontend** %3, align 8
  %8 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %7, i32 0, i32 0
  %9 = load %struct.mt312_state*, %struct.mt312_state** %8, align 8
  store %struct.mt312_state* %9, %struct.mt312_state** %4, align 8
  %10 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %11 = call i32 @mt312_reset(%struct.mt312_state* %10, i32 1)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  store i32 %15, i32* %2, align 4
  br label %58

16:                                               ; preds = %1
  %17 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %18 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @ID_ZL10313, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %39

22:                                               ; preds = %16
  %23 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %24 = load i32, i32* @GPP_CTRL, align 4
  %25 = call i32 @mt312_writereg(%struct.mt312_state* %23, i32 %24, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* %5, align 4
  store i32 %29, i32* %2, align 4
  br label %58

30:                                               ; preds = %22
  %31 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %32 = load i32, i32* @HW_CTRL, align 4
  %33 = call i32 @mt312_writereg(%struct.mt312_state* %31, i32 %32, i32 13)
  store i32 %33, i32* %5, align 4
  %34 = load i32, i32* %5, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %5, align 4
  store i32 %37, i32* %2, align 4
  br label %58

38:                                               ; preds = %30
  br label %39

39:                                               ; preds = %38, %16
  %40 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %41 = load i32, i32* @CONFIG, align 4
  %42 = call i32 @mt312_readreg(%struct.mt312_state* %40, i32 %41, i32* %6)
  store i32 %42, i32* %5, align 4
  %43 = load i32, i32* %5, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* %5, align 4
  store i32 %46, i32* %2, align 4
  br label %58

47:                                               ; preds = %39
  %48 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %49 = load i32, i32* @CONFIG, align 4
  %50 = load i32, i32* %6, align 4
  %51 = and i32 %50, 127
  %52 = call i32 @mt312_writereg(%struct.mt312_state* %48, i32 %49, i32 %51)
  store i32 %52, i32* %5, align 4
  %53 = load i32, i32* %5, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %47
  %56 = load i32, i32* %5, align 4
  store i32 %56, i32* %2, align 4
  br label %58

57:                                               ; preds = %47
  store i32 0, i32* %2, align 4
  br label %58

58:                                               ; preds = %57, %55, %45, %36, %28, %14
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @mt312_reset(%struct.mt312_state*, i32) #1

declare dso_local i32 @mt312_writereg(%struct.mt312_state*, i32, i32) #1

declare dso_local i32 @mt312_readreg(%struct.mt312_state*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
