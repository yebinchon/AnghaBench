; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_set_signals.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_set_signals.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32, %struct.TYPE_7__** }
%struct.TYPE_7__ = type { i32 }

@CTL = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i8 0, align 1
@BIT1 = common dso_local global i32 0, align 4
@SerialSignal_DTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_8__*)* @set_signals to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_signals(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %5 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %6 = load i32, i32* @CTL, align 4
  %7 = call zeroext i8 @read_reg(%struct.TYPE_8__* %5, i32 %6)
  store i8 %7, i8* %3, align 1
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load i32, i32* @SerialSignal_RTS, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %1
  %15 = load i8, i8* @BIT0, align 1
  %16 = zext i8 %15 to i32
  %17 = xor i32 %16, -1
  %18 = load i8, i8* %3, align 1
  %19 = zext i8 %18 to i32
  %20 = and i32 %19, %17
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %3, align 1
  br label %29

22:                                               ; preds = %1
  %23 = load i8, i8* @BIT0, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %29

29:                                               ; preds = %22, %14
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %31 = load i32, i32* @CTL, align 4
  %32 = load i8, i8* %3, align 1
  %33 = call i32 @write_reg(%struct.TYPE_8__* %30, i32 %31, i8 zeroext %32)
  %34 = load i32, i32* @BIT1, align 4
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %37, 2
  %39 = shl i32 %34, %38
  store i32 %39, i32* %4, align 4
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* @SerialSignal_DTR, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %57

46:                                               ; preds = %29
  %47 = load i32, i32* %4, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %50 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %49, i32 0, i32 2
  %51 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %51, i64 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %48
  store i32 %56, i32* %54, align 4
  br label %67

57:                                               ; preds = %29
  %58 = load i32, i32* %4, align 4
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 2
  %61 = load %struct.TYPE_7__**, %struct.TYPE_7__*** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_7__*, %struct.TYPE_7__** %61, i64 0
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, %58
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %57, %46
  %68 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %69 = call i32 @write_control_reg(%struct.TYPE_8__* %68)
  ret void
}

declare dso_local zeroext i8 @read_reg(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @write_reg(%struct.TYPE_8__*, i32, i8 zeroext) #1

declare dso_local i32 @write_control_reg(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
