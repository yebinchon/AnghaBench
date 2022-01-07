; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_spurcheck.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/common/tuners/extr_mt20xx.c_mt2032_spurcheck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.microtune_priv* }
%struct.microtune_priv = type { i32 }

@.str = private unnamed_addr constant [38 x i8] c"spurcheck f1=%d f2=%d  from=%d to=%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"spurtest n1=%d n2=%d ftest=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"mt2032 spurcheck triggered: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*, i32, i32, i32, i32)* @mt2032_spurcheck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mt2032_spurcheck(%struct.dvb_frontend* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.dvb_frontend*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.microtune_priv*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %15 = load %struct.dvb_frontend*, %struct.dvb_frontend** %6, align 8
  %16 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %15, i32 0, i32 0
  %17 = load %struct.microtune_priv*, %struct.microtune_priv** %16, align 8
  store %struct.microtune_priv* %17, %struct.microtune_priv** %11, align 8
  store i32 1, i32* %12, align 4
  %18 = load i32, i32* %7, align 4
  %19 = sdiv i32 %18, 1000
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %8, align 4
  %21 = sdiv i32 %20, 1000
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %9, align 4
  %23 = sdiv i32 %22, 1000
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sdiv i32 %24, 1000
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* %10, align 4
  %30 = call i32 (i8*, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %26, i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %74, %5
  %32 = load i32, i32* %12, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  %34 = load i32, i32* %12, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %8, align 4
  %37 = sub nsw i32 %35, %36
  %38 = mul nsw i32 %34, %37
  store i32 %38, i32* %14, align 4
  br label %39

39:                                               ; preds = %69, %31
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, -1
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %8, align 4
  %44 = sub nsw i32 %42, %43
  store i32 %44, i32* %14, align 4
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = load i32, i32* %14, align 4
  %48 = call i32 (i8*, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0), i32 %45, i32 %46, i32 %47)
  %49 = load i32, i32* %14, align 4
  %50 = load i32, i32* %9, align 4
  %51 = icmp sgt i32 %49, %50
  br i1 %51, label %52, label %59

52:                                               ; preds = %39
  %53 = load i32, i32* %14, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %59

56:                                               ; preds = %52
  %57 = load i32, i32* %12, align 4
  %58 = call i32 (i8*, i32, ...) @tuner_dbg(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %57)
  br label %59

59:                                               ; preds = %56, %52, %39
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %14, align 4
  %62 = load i32, i32* %8, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  %65 = icmp sgt i32 %61, %64
  br i1 %65, label %69, label %66

66:                                               ; preds = %60
  %67 = load i32, i32* %13, align 4
  %68 = icmp sgt i32 %67, -5
  br label %69

69:                                               ; preds = %66, %60
  %70 = phi i1 [ true, %60 ], [ %68, %66 ]
  br i1 %70, label %39, label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %12, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %12, align 4
  br label %74

74:                                               ; preds = %71
  %75 = load i32, i32* %12, align 4
  %76 = icmp slt i32 %75, 5
  br i1 %76, label %31, label %77

77:                                               ; preds = %74
  ret i32 1
}

declare dso_local i32 @tuner_dbg(i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
