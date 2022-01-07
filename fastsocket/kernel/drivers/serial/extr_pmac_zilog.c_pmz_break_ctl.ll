; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_break_ctl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_break_ctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i8*, i32* }

@SND_BRK = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @pmz_break_ctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_break_ctl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_pmac_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca i64, align 8
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %10 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %11 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %10)
  store %struct.uart_pmac_port* %11, %struct.uart_pmac_port** %5, align 8
  %12 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %13 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %12, i32 0, i32 1
  %14 = load i32*, i32** %13, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %2
  br label %90

17:                                               ; preds = %2
  store i8 0, i8* %7, align 1
  store i8 0, i8* %6, align 1
  %18 = load i32, i32* %4, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %17
  %21 = load i8, i8* @SND_BRK, align 1
  %22 = zext i8 %21 to i32
  %23 = load i8, i8* %6, align 1
  %24 = zext i8 %23 to i32
  %25 = or i32 %24, %22
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %6, align 1
  br label %34

27:                                               ; preds = %17
  %28 = load i8, i8* @SND_BRK, align 1
  %29 = zext i8 %28 to i32
  %30 = load i8, i8* %7, align 1
  %31 = zext i8 %30 to i32
  %32 = or i32 %31, %29
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %7, align 1
  br label %34

34:                                               ; preds = %27, %20
  %35 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %36 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %35, i32 0, i32 0
  %37 = load i64, i64* %9, align 8
  %38 = call i32 @spin_lock_irqsave(i32* %36, i64 %37)
  %39 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %40 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %39, i32 0, i32 0
  %41 = load i8*, i8** %40, align 8
  %42 = load i64, i64* @R5, align 8
  %43 = getelementptr inbounds i8, i8* %41, i64 %42
  %44 = load i8, i8* %43, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %6, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %45, %47
  %49 = load i8, i8* %7, align 1
  %50 = zext i8 %49 to i32
  %51 = xor i32 %50, -1
  %52 = and i32 %48, %51
  %53 = trunc i32 %52 to i8
  store i8 %53, i8* %8, align 1
  %54 = load i8, i8* %8, align 1
  %55 = zext i8 %54 to i32
  %56 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %57 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %56, i32 0, i32 0
  %58 = load i8*, i8** %57, align 8
  %59 = load i64, i64* @R5, align 8
  %60 = getelementptr inbounds i8, i8* %58, i64 %59
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  %63 = icmp ne i32 %55, %62
  br i1 %63, label %64, label %85

64:                                               ; preds = %34
  %65 = load i8, i8* %8, align 1
  %66 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %67 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  %69 = load i64, i64* @R5, align 8
  %70 = getelementptr inbounds i8, i8* %68, i64 %69
  store i8 %65, i8* %70, align 1
  %71 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %72 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %64
  br label %90

75:                                               ; preds = %64
  %76 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %77 = load i64, i64* @R5, align 8
  %78 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %79 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %78, i32 0, i32 0
  %80 = load i8*, i8** %79, align 8
  %81 = load i64, i64* @R5, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = call i32 @write_zsreg(%struct.uart_pmac_port* %76, i64 %77, i8 zeroext %83)
  br label %85

85:                                               ; preds = %75, %34
  %86 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %87 = getelementptr inbounds %struct.uart_port, %struct.uart_port* %86, i32 0, i32 0
  %88 = load i64, i64* %9, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  br label %90

90:                                               ; preds = %85, %74, %16
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i8 zeroext) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
