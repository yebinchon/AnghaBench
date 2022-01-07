; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/memstick/host/extr_jmb38x_ms.c_jmb38x_ms_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jmb38x_ms_host = type { i64, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HOST_CONTROL_RESET_REQ = common dso_local global i32 0, align 4
@HOST_CONTROL_CLOCK_EN = common dso_local global i32 0, align 4
@HOST_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [19 x i8] c"reset_req timeout\0A\00", align 1
@HOST_CONTROL_RESET = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"reset timeout\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@INT_STATUS_ALL = common dso_local global i32 0, align 4
@INT_SIGNAL_ENABLE = common dso_local global i64 0, align 8
@INT_STATUS_ENABLE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jmb38x_ms_host*)* @jmb38x_ms_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jmb38x_ms_reset(%struct.jmb38x_ms_host* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.jmb38x_ms_host*, align 8
  %4 = alloca i32, align 4
  store %struct.jmb38x_ms_host* %0, %struct.jmb38x_ms_host** %3, align 8
  %5 = load i32, i32* @HOST_CONTROL_RESET_REQ, align 4
  %6 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %7 = or i32 %5, %6
  %8 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %9 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @HOST_CONTROL, align 8
  %12 = add nsw i64 %10, %11
  %13 = call i32 @readl(i64 %12)
  %14 = or i32 %7, %13
  %15 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %16 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HOST_CONTROL, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i32 @writel(i32 %14, i64 %19)
  %21 = call i32 (...) @mmiowb()
  store i32 0, i32* %4, align 4
  br label %22

22:                                               ; preds = %38, %1
  %23 = load i32, i32* %4, align 4
  %24 = icmp slt i32 %23, 20
  br i1 %24, label %25, label %41

25:                                               ; preds = %22
  %26 = load i32, i32* @HOST_CONTROL_RESET_REQ, align 4
  %27 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %28 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @HOST_CONTROL, align 8
  %31 = add nsw i64 %29, %30
  %32 = call i32 @readl(i64 %31)
  %33 = and i32 %26, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %25
  br label %49

36:                                               ; preds = %25
  %37 = call i32 @ndelay(i32 20)
  br label %38

38:                                               ; preds = %36
  %39 = load i32, i32* %4, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %4, align 4
  br label %22

41:                                               ; preds = %22
  %42 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %43 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %42, i32 0, i32 1
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_dbg(i32* %47, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  br label %49

49:                                               ; preds = %41, %35
  %50 = load i32, i32* @HOST_CONTROL_RESET, align 4
  %51 = load i32, i32* @HOST_CONTROL_CLOCK_EN, align 4
  %52 = or i32 %50, %51
  %53 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %54 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @HOST_CONTROL, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @readl(i64 %57)
  %59 = or i32 %52, %58
  %60 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %61 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @HOST_CONTROL, align 8
  %64 = add nsw i64 %62, %63
  %65 = call i32 @writel(i32 %59, i64 %64)
  %66 = call i32 (...) @mmiowb()
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %83, %49
  %68 = load i32, i32* %4, align 4
  %69 = icmp slt i32 %68, 20
  br i1 %69, label %70, label %86

70:                                               ; preds = %67
  %71 = load i32, i32* @HOST_CONTROL_RESET, align 4
  %72 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %73 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @HOST_CONTROL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @readl(i64 %76)
  %78 = and i32 %71, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %70
  br label %96

81:                                               ; preds = %70
  %82 = call i32 @ndelay(i32 20)
  br label %83

83:                                               ; preds = %81
  %84 = load i32, i32* %4, align 4
  %85 = add nsw i32 %84, 1
  store i32 %85, i32* %4, align 4
  br label %67

86:                                               ; preds = %67
  %87 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %88 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %87, i32 0, i32 1
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i32 0, i32 0
  %93 = call i32 @dev_dbg(i32* %92, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EIO, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %2, align 4
  br label %112

96:                                               ; preds = %80
  %97 = call i32 (...) @mmiowb()
  %98 = load i32, i32* @INT_STATUS_ALL, align 4
  %99 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %100 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @INT_SIGNAL_ENABLE, align 8
  %103 = add nsw i64 %101, %102
  %104 = call i32 @writel(i32 %98, i64 %103)
  %105 = load i32, i32* @INT_STATUS_ALL, align 4
  %106 = load %struct.jmb38x_ms_host*, %struct.jmb38x_ms_host** %3, align 8
  %107 = getelementptr inbounds %struct.jmb38x_ms_host, %struct.jmb38x_ms_host* %106, i32 0, i32 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @INT_STATUS_ENABLE, align 8
  %110 = add nsw i64 %108, %109
  %111 = call i32 @writel(i32 %105, i64 %110)
  store i32 0, i32* %2, align 4
  br label %112

112:                                              ; preds = %96, %86
  %113 = load i32, i32* %2, align 4
  ret i32 %113
}

declare dso_local i32 @writel(i32, i64) #1

declare dso_local i32 @readl(i64) #1

declare dso_local i32 @mmiowb(...) #1

declare dso_local i32 @ndelay(i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
