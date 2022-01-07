; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_get_symbol_rate.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_mt312.c_mt312_get_symbol_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mt312_state = type { i32 }

@SYM_RATE_H = common dso_local global i32 0, align 4
@MON_CTRL = common dso_local global i32 0, align 4
@MONITOR_H = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"sr(auto) = %u\0A\00", align 1
@SYM_RAT_OP_H = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [28 x i8] c"sym_rat_op=%d dec_ratio=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"*sr(manual) = %lu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mt312_state*, i32*)* @mt312_get_symbol_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt312_get_symbol_rate(%struct.mt312_state* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mt312_state*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca [2 x i32], align 4
  store %struct.mt312_state* %0, %struct.mt312_state** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %13 = load i32, i32* @SYM_RATE_H, align 4
  %14 = call i32 @mt312_readreg(%struct.mt312_state* %12, i32 %13, i32* %7)
  store i32 %14, i32* %6, align 4
  %15 = load i32, i32* %6, align 4
  %16 = icmp slt i32 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %2
  %18 = load i32, i32* %6, align 4
  store i32 %18, i32* %3, align 4
  br label %104

19:                                               ; preds = %2
  %20 = load i32, i32* %7, align 4
  %21 = and i32 %20, 128
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %51

23:                                               ; preds = %19
  %24 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %25 = load i32, i32* @MON_CTRL, align 4
  %26 = call i32 @mt312_writereg(%struct.mt312_state* %24, i32 %25, i32 3)
  store i32 %26, i32* %6, align 4
  %27 = load i32, i32* %6, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = load i32, i32* %6, align 4
  store i32 %30, i32* %3, align 4
  br label %104

31:                                               ; preds = %23
  %32 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %33 = load i32, i32* @MONITOR_H, align 4
  %34 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %35 = call i32 @mt312_read(%struct.mt312_state* %32, i32 %33, i32* %34, i32 8)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %31
  %39 = load i32, i32* %6, align 4
  store i32 %39, i32* %3, align 4
  br label %104

40:                                               ; preds = %31
  %41 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %42 = load i32, i32* %41, align 4
  %43 = shl i32 %42, 8
  %44 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %45 = load i32, i32* %44, align 4
  %46 = or i32 %43, %45
  store i32 %46, i32* %10, align 4
  %47 = load i32, i32* %10, align 4
  %48 = mul nsw i32 %47, 15625
  %49 = call i32 @mt312_div(i32 %48, i32 4)
  %50 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32 %49)
  br label %103

51:                                               ; preds = %19
  %52 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %53 = load i32, i32* @MON_CTRL, align 4
  %54 = call i32 @mt312_writereg(%struct.mt312_state* %52, i32 %53, i32 5)
  store i32 %54, i32* %6, align 4
  %55 = load i32, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %51
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %3, align 4
  br label %104

59:                                               ; preds = %51
  %60 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %61 = load i32, i32* @MONITOR_H, align 4
  %62 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %63 = call i32 @mt312_read(%struct.mt312_state* %60, i32 %61, i32* %62, i32 8)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %59
  %67 = load i32, i32* %6, align 4
  store i32 %67, i32* %3, align 4
  br label %104

68:                                               ; preds = %59
  %69 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %70 = load i32, i32* %69, align 4
  %71 = ashr i32 %70, 5
  %72 = and i32 %71, 7
  %73 = mul nsw i32 %72, 32
  store i32 %73, i32* %8, align 4
  %74 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %75 = load i32, i32* @SYM_RAT_OP_H, align 4
  %76 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %77 = call i32 @mt312_read(%struct.mt312_state* %74, i32 %75, i32* %76, i32 8)
  store i32 %77, i32* %6, align 4
  %78 = load i32, i32* %6, align 4
  %79 = icmp slt i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %68
  %81 = load i32, i32* %6, align 4
  store i32 %81, i32* %3, align 4
  br label %104

82:                                               ; preds = %68
  %83 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = shl i32 %84, 8
  %86 = getelementptr inbounds [2 x i32], [2 x i32]* %11, i64 0, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %85, %87
  store i32 %88, i32* %9, align 4
  %89 = load i32, i32* %9, align 4
  %90 = load i32, i32* %8, align 4
  %91 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %89, i32 %90)
  %92 = load %struct.mt312_state*, %struct.mt312_state** %4, align 8
  %93 = getelementptr inbounds %struct.mt312_state, %struct.mt312_state* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = mul nsw i32 %94, 8192
  %96 = load i32, i32* %9, align 4
  %97 = add nsw i32 %96, 8192
  %98 = sdiv i32 %95, %97
  %99 = mul nsw i32 %98, 2
  %100 = load i32, i32* %8, align 4
  %101 = sub nsw i32 %99, %100
  %102 = call i32 (i8*, i32, ...) @dprintk(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.2, i64 0, i64 0), i32 %101)
  br label %103

103:                                              ; preds = %82, %40
  store i32 0, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %80, %66, %57, %38, %29, %17
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i32 @mt312_readreg(%struct.mt312_state*, i32, i32*) #1

declare dso_local i32 @mt312_writereg(%struct.mt312_state*, i32, i32) #1

declare dso_local i32 @mt312_read(%struct.mt312_state*, i32, i32*, i32) #1

declare dso_local i32 @dprintk(i8*, i32, ...) #1

declare dso_local i32 @mt312_div(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
