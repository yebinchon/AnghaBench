; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_raw_xor_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_zs.c_zs_raw_xor_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zs_port = type { i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.zs_port* }

@ZS_CHAN_A = common dso_local global i64 0, align 8
@CTSIE = common dso_local global i32 0, align 4
@TIOCM_CTS = common dso_local global i32 0, align 4
@DCDIE = common dso_local global i32 0, align 4
@TIOCM_CAR = common dso_local global i32 0, align 4
@TIOCM_RNG = common dso_local global i32 0, align 4
@SYNCIE = common dso_local global i32 0, align 4
@TIOCM_DSR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zs_port*)* @zs_raw_xor_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zs_raw_xor_mctrl(%struct.zs_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.zs_port*, align 8
  %4 = alloca %struct.zs_port*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.zs_port* %0, %struct.zs_port** %3, align 8
  %10 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %11 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.zs_port*, %struct.zs_port** %13, align 8
  %15 = load i64, i64* @ZS_CHAN_A, align 8
  %16 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %14, i64 %15
  store %struct.zs_port* %16, %struct.zs_port** %4, align 8
  %17 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %18 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %19 = icmp eq %struct.zs_port* %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %102

21:                                               ; preds = %1
  %22 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %23 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 15
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %8, align 4
  %27 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %28 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 15
  %31 = load i32, i32* %30, align 4
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = load i32, i32* @CTSIE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %21
  %37 = load i32, i32* @TIOCM_CTS, align 4
  br label %39

38:                                               ; preds = %21
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* @DCDIE, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %47

45:                                               ; preds = %39
  %46 = load i32, i32* @TIOCM_CAR, align 4
  br label %48

47:                                               ; preds = %39
  br label %48

48:                                               ; preds = %47, %45
  %49 = phi i32 [ %46, %45 ], [ 0, %47 ]
  %50 = or i32 %40, %49
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* @DCDIE, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @TIOCM_RNG, align 4
  br label %58

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = or i32 %50, %59
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* @SYNCIE, align 4
  %63 = and i32 %61, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %58
  %66 = load i32, i32* @TIOCM_DSR, align 4
  br label %68

67:                                               ; preds = %58
  br label %68

68:                                               ; preds = %67, %65
  %69 = phi i32 [ %66, %65 ], [ 0, %67 ]
  %70 = or i32 %60, %69
  store i32 %70, i32* %5, align 4
  %71 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %72 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  store i32 %73, i32* %6, align 4
  %74 = load i32, i32* %5, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %88

76:                                               ; preds = %68
  %77 = load i32, i32* %5, align 4
  %78 = xor i32 %77, -1
  %79 = load i32, i32* %6, align 4
  %80 = and i32 %79, %78
  store i32 %80, i32* %6, align 4
  %81 = load %struct.zs_port*, %struct.zs_port** %4, align 8
  %82 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %83 = call i32 @zs_raw_get_ab_mctrl(%struct.zs_port* %81, %struct.zs_port* %82)
  %84 = load i32, i32* %5, align 4
  %85 = and i32 %83, %84
  %86 = load i32, i32* %6, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %6, align 4
  br label %88

88:                                               ; preds = %76, %68
  %89 = load i32, i32* %6, align 4
  %90 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %91 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 8
  %93 = xor i32 %89, %92
  store i32 %93, i32* %7, align 4
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %88
  %97 = load i32, i32* %6, align 4
  %98 = load %struct.zs_port*, %struct.zs_port** %3, align 8
  %99 = getelementptr inbounds %struct.zs_port, %struct.zs_port* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 8
  br label %100

100:                                              ; preds = %96, %88
  %101 = load i32, i32* %7, align 4
  store i32 %101, i32* %2, align 4
  br label %102

102:                                              ; preds = %100, %20
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local i32 @zs_raw_get_ab_mctrl(%struct.zs_port*, %struct.zs_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
