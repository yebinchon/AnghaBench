; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_enable_auxclk.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/extr_synclink_cs.c_enable_auxclk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i32 }

@MGSL_MODE_HDLC = common dso_local global i64 0, align 8
@BIT2 = common dso_local global i8 0, align 1
@CHB = common dso_local global i64 0, align 8
@MODE = common dso_local global i64 0, align 8
@CCR0 = common dso_local global i64 0, align 8
@CCR1 = common dso_local global i64 0, align 8
@CCR2 = common dso_local global i64 0, align 8
@CCR4 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*)* @enable_auxclk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @enable_auxclk(%struct.TYPE_7__* %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %2, align 8
  store i8 -126, i8* %3, align 1
  %4 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %23

10:                                               ; preds = %1
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %12 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %23

16:                                               ; preds = %10
  %17 = load i8, i8* @BIT2, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* %3, align 1
  %20 = zext i8 %19 to i32
  %21 = or i32 %20, %18
  %22 = trunc i32 %21 to i8
  store i8 %22, i8* %3, align 1
  br label %23

23:                                               ; preds = %16, %10, %1
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %25 = load i64, i64* @CHB, align 8
  %26 = load i64, i64* @MODE, align 8
  %27 = add nsw i64 %25, %26
  %28 = load i8, i8* %3, align 1
  %29 = zext i8 %28 to i32
  %30 = call i32 @write_reg(%struct.TYPE_7__* %24, i64 %27, i32 %29)
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %32 = load i64, i64* @CHB, align 8
  %33 = load i64, i64* @CCR0, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @write_reg(%struct.TYPE_7__* %31, i64 %34, i32 192)
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %37 = load i64, i64* @CHB, align 8
  %38 = load i64, i64* @CCR1, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i32 @write_reg(%struct.TYPE_7__* %36, i64 %39, i32 23)
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %23
  %48 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %55 = load i64, i64* @CHB, align 8
  %56 = load i64, i64* @CCR2, align 8
  %57 = add nsw i64 %55, %56
  %58 = call i32 @write_reg(%struct.TYPE_7__* %54, i64 %57, i32 56)
  br label %65

59:                                               ; preds = %47, %23
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %61 = load i64, i64* @CHB, align 8
  %62 = load i64, i64* @CCR2, align 8
  %63 = add nsw i64 %61, %62
  %64 = call i32 @write_reg(%struct.TYPE_7__* %60, i64 %63, i32 48)
  br label %65

65:                                               ; preds = %59, %53
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %67 = load i64, i64* @CHB, align 8
  %68 = load i64, i64* @CCR4, align 8
  %69 = add nsw i64 %67, %68
  %70 = call i32 @write_reg(%struct.TYPE_7__* %66, i64 %69, i32 80)
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = load i64, i64* @MGSL_MODE_HDLC, align 8
  %76 = icmp eq i64 %74, %75
  br i1 %76, label %77, label %91

77:                                               ; preds = %65
  %78 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 8
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %91

83:                                               ; preds = %77
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %85 = load i64, i64* @CHB, align 8
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @mgslpc_set_rate(%struct.TYPE_7__* %84, i64 %85, i32 %89)
  br label %95

91:                                               ; preds = %77, %65
  %92 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  %93 = load i64, i64* @CHB, align 8
  %94 = call i32 @mgslpc_set_rate(%struct.TYPE_7__* %92, i64 %93, i32 921600)
  br label %95

95:                                               ; preds = %91, %83
  ret void
}

declare dso_local i32 @write_reg(%struct.TYPE_7__*, i64, i32) #1

declare dso_local i32 @mgslpc_set_rate(%struct.TYPE_7__*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
