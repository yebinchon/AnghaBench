; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_enable_ms.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_enable_ms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i8*, i32* }

@R15 = common dso_local global i64 0, align 8
@DCDIE = common dso_local global i8 0, align 1
@SYNCIE = common dso_local global i8 0, align 1
@CTSIE = common dso_local global i8 0, align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*)* @pmz_enable_ms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_enable_ms(%struct.uart_port* %0) #0 {
  %2 = alloca %struct.uart_port*, align 8
  %3 = alloca %struct.uart_pmac_port*, align 8
  %4 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %2, align 8
  %5 = load %struct.uart_port*, %struct.uart_port** %2, align 8
  %6 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %5)
  store %struct.uart_pmac_port* %6, %struct.uart_pmac_port** %3, align 8
  %7 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %8 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %12 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %11, i32 0, i32 1
  %13 = load i32*, i32** %12, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10, %1
  br label %65

16:                                               ; preds = %10
  %17 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %18 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  %20 = load i64, i64* @R15, align 8
  %21 = getelementptr inbounds i8, i8* %19, i64 %20
  %22 = load i8, i8* %21, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @DCDIE, align 1
  %25 = zext i8 %24 to i32
  %26 = load i8, i8* @SYNCIE, align 1
  %27 = zext i8 %26 to i32
  %28 = or i32 %25, %27
  %29 = load i8, i8* @CTSIE, align 1
  %30 = zext i8 %29 to i32
  %31 = or i32 %28, %30
  %32 = or i32 %23, %31
  %33 = trunc i32 %32 to i8
  store i8 %33, i8* %4, align 1
  %34 = load i8, i8* %4, align 1
  %35 = zext i8 %34 to i32
  %36 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %37 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %36, i32 0, i32 0
  %38 = load i8*, i8** %37, align 8
  %39 = load i64, i64* @R15, align 8
  %40 = getelementptr inbounds i8, i8* %38, i64 %39
  %41 = load i8, i8* %40, align 1
  %42 = zext i8 %41 to i32
  %43 = icmp ne i32 %35, %42
  br i1 %43, label %44, label %65

44:                                               ; preds = %16
  %45 = load i8, i8* %4, align 1
  %46 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %47 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %46, i32 0, i32 0
  %48 = load i8*, i8** %47, align 8
  %49 = load i64, i64* @R15, align 8
  %50 = getelementptr inbounds i8, i8* %48, i64 %49
  store i8 %45, i8* %50, align 1
  %51 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %52 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %51)
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %44
  br label %65

55:                                               ; preds = %44
  %56 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %57 = load i64, i64* @R15, align 8
  %58 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %3, align 8
  %59 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = load i64, i64* @R15, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  %63 = load i8, i8* %62, align 1
  %64 = call i32 @write_zsreg(%struct.uart_pmac_port* %56, i64 %57, i8 zeroext %63)
  br label %65

65:                                               ; preds = %15, %54, %55, %16
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
