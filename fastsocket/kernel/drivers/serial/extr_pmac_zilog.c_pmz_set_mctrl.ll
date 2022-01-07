; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_set_mctrl.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/extr_pmac_zilog.c_pmz_set_mctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uart_port = type { i32 }
%struct.uart_pmac_port = type { i8* }

@TIOCM_RTS = common dso_local global i32 0, align 4
@RTS = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@DTR = common dso_local global i8 0, align 1
@R5 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [51 x i8] c"pmz_set_mctrl: set bits: %x, clear bits: %x -> %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.uart_port*, i32)* @pmz_set_mctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pmz_set_mctrl(%struct.uart_port* %0, i32 %1) #0 {
  %3 = alloca %struct.uart_port*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.uart_pmac_port*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i8, align 1
  store %struct.uart_port* %0, %struct.uart_port** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.uart_port*, %struct.uart_port** %3, align 8
  %9 = call %struct.uart_pmac_port* @to_pmz(%struct.uart_port* %8)
  store %struct.uart_pmac_port* %9, %struct.uart_pmac_port** %5, align 8
  %10 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %11 = call i64 @ZS_IS_IRDA(%struct.uart_pmac_port* %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %119

14:                                               ; preds = %2
  %15 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %16 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %14
  %19 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %20 = call i64 @ZS_IS_OPEN(%struct.uart_pmac_port* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %18
  %23 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %24 = call i64 @ZS_IS_CONS(%struct.uart_pmac_port* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %22, %14
  br label %119

27:                                               ; preds = %22, %18
  store i8 0, i8* %7, align 1
  store i8 0, i8* %6, align 1
  %28 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %29 = call i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %51

31:                                               ; preds = %27
  %32 = load i32, i32* %4, align 4
  %33 = load i32, i32* @TIOCM_RTS, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %31
  %37 = load i8, i8* @RTS, align 1
  %38 = zext i8 %37 to i32
  %39 = load i8, i8* %6, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %40, %38
  %42 = trunc i32 %41 to i8
  store i8 %42, i8* %6, align 1
  br label %50

43:                                               ; preds = %31
  %44 = load i8, i8* @RTS, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %7, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %7, align 1
  br label %50

50:                                               ; preds = %43, %36
  br label %51

51:                                               ; preds = %50, %27
  %52 = load i32, i32* %4, align 4
  %53 = load i32, i32* @TIOCM_DTR, align 4
  %54 = and i32 %52, %53
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %51
  %57 = load i8, i8* @DTR, align 1
  %58 = zext i8 %57 to i32
  %59 = load i8, i8* %6, align 1
  %60 = zext i8 %59 to i32
  %61 = or i32 %60, %58
  %62 = trunc i32 %61 to i8
  store i8 %62, i8* %6, align 1
  br label %70

63:                                               ; preds = %51
  %64 = load i8, i8* @DTR, align 1
  %65 = zext i8 %64 to i32
  %66 = load i8, i8* %7, align 1
  %67 = zext i8 %66 to i32
  %68 = or i32 %67, %65
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %7, align 1
  br label %70

70:                                               ; preds = %63, %56
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i32
  %73 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %74 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %73, i32 0, i32 0
  %75 = load i8*, i8** %74, align 8
  %76 = load i64, i64* @R5, align 8
  %77 = getelementptr inbounds i8, i8* %75, i64 %76
  %78 = load i8, i8* %77, align 1
  %79 = zext i8 %78 to i32
  %80 = or i32 %79, %72
  %81 = trunc i32 %80 to i8
  store i8 %81, i8* %77, align 1
  %82 = load i8, i8* %7, align 1
  %83 = zext i8 %82 to i32
  %84 = xor i32 %83, -1
  %85 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %86 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = load i64, i64* @R5, align 8
  %89 = getelementptr inbounds i8, i8* %87, i64 %88
  %90 = load i8, i8* %89, align 1
  %91 = zext i8 %90 to i32
  %92 = and i32 %91, %84
  %93 = trunc i32 %92 to i8
  store i8 %93, i8* %89, align 1
  %94 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %95 = call i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port* %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %70
  br label %119

98:                                               ; preds = %70
  %99 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %100 = load i64, i64* @R5, align 8
  %101 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %102 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %101, i32 0, i32 0
  %103 = load i8*, i8** %102, align 8
  %104 = load i64, i64* @R5, align 8
  %105 = getelementptr inbounds i8, i8* %103, i64 %104
  %106 = load i8, i8* %105, align 1
  %107 = call i32 @write_zsreg(%struct.uart_pmac_port* %99, i64 %100, i8 zeroext %106)
  %108 = load i8, i8* %6, align 1
  %109 = load i8, i8* %7, align 1
  %110 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %111 = getelementptr inbounds %struct.uart_pmac_port, %struct.uart_pmac_port* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = load i64, i64* @R5, align 8
  %114 = getelementptr inbounds i8, i8* %112, i64 %113
  %115 = load i8, i8* %114, align 1
  %116 = call i32 @pmz_debug(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i8 zeroext %108, i8 zeroext %109, i8 zeroext %115)
  %117 = load %struct.uart_pmac_port*, %struct.uart_pmac_port** %5, align 8
  %118 = call i32 @zssync(%struct.uart_pmac_port* %117)
  br label %119

119:                                              ; preds = %98, %97, %26, %13
  ret void
}

declare dso_local %struct.uart_pmac_port* @to_pmz(%struct.uart_port*) #1

declare dso_local i64 @ZS_IS_IRDA(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_ASLEEP(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_OPEN(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_CONS(%struct.uart_pmac_port*) #1

declare dso_local i64 @ZS_IS_INTMODEM(%struct.uart_pmac_port*) #1

declare dso_local i32 @write_zsreg(%struct.uart_pmac_port*, i64, i8 zeroext) #1

declare dso_local i32 @pmz_debug(i8*, i8 zeroext, i8 zeroext, i8 zeroext) #1

declare dso_local i32 @zssync(%struct.uart_pmac_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
