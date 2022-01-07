; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_get_mstat.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/serial/jsm/extr_jsm_tty.c_jsm_get_mstat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jsm_channel = type { i8, i8, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IOCTL = common dso_local global i32 0, align 4
@INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"start\0A\00", align 1
@UART_MCR_DTR = common dso_local global i8 0, align 1
@TIOCM_DTR = common dso_local global i32 0, align 4
@UART_MCR_RTS = common dso_local global i8 0, align 1
@TIOCM_RTS = common dso_local global i32 0, align 4
@UART_MSR_CTS = common dso_local global i8 0, align 1
@TIOCM_CTS = common dso_local global i32 0, align 4
@UART_MSR_DSR = common dso_local global i8 0, align 1
@TIOCM_DSR = common dso_local global i32 0, align 4
@UART_MSR_RI = common dso_local global i8 0, align 1
@TIOCM_RI = common dso_local global i32 0, align 4
@UART_MSR_DCD = common dso_local global i8 0, align 1
@TIOCM_CD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"finish\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jsm_channel*)* @jsm_get_mstat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jsm_get_mstat(%struct.jsm_channel* %0) #0 {
  %2 = alloca %struct.jsm_channel*, align 8
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  store %struct.jsm_channel* %0, %struct.jsm_channel** %2, align 8
  %5 = load i32, i32* @IOCTL, align 4
  %6 = load i32, i32* @INFO, align 4
  %7 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %8 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = call i32 @jsm_printk(i32 %5, i32 %6, i32* %10, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %13 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %12, i32 0, i32 0
  %14 = load i8, i8* %13, align 8
  %15 = zext i8 %14 to i32
  %16 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %17 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %16, i32 0, i32 1
  %18 = load i8, i8* %17, align 1
  %19 = zext i8 %18 to i32
  %20 = or i32 %15, %19
  %21 = trunc i32 %20 to i8
  store i8 %21, i8* %3, align 1
  store i32 0, i32* %4, align 4
  %22 = load i8, i8* %3, align 1
  %23 = zext i8 %22 to i32
  %24 = load i8, i8* @UART_MCR_DTR, align 1
  %25 = zext i8 %24 to i32
  %26 = and i32 %23, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %1
  %29 = load i32, i32* @TIOCM_DTR, align 4
  %30 = load i32, i32* %4, align 4
  %31 = or i32 %30, %29
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %28, %1
  %33 = load i8, i8* %3, align 1
  %34 = zext i8 %33 to i32
  %35 = load i8, i8* @UART_MCR_RTS, align 1
  %36 = zext i8 %35 to i32
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %32
  %40 = load i32, i32* @TIOCM_RTS, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %39, %32
  %44 = load i8, i8* %3, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* @UART_MSR_CTS, align 1
  %47 = zext i8 %46 to i32
  %48 = and i32 %45, %47
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %43
  %51 = load i32, i32* @TIOCM_CTS, align 4
  %52 = load i32, i32* %4, align 4
  %53 = or i32 %52, %51
  store i32 %53, i32* %4, align 4
  br label %54

54:                                               ; preds = %50, %43
  %55 = load i8, i8* %3, align 1
  %56 = zext i8 %55 to i32
  %57 = load i8, i8* @UART_MSR_DSR, align 1
  %58 = zext i8 %57 to i32
  %59 = and i32 %56, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %65

61:                                               ; preds = %54
  %62 = load i32, i32* @TIOCM_DSR, align 4
  %63 = load i32, i32* %4, align 4
  %64 = or i32 %63, %62
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %61, %54
  %66 = load i8, i8* %3, align 1
  %67 = zext i8 %66 to i32
  %68 = load i8, i8* @UART_MSR_RI, align 1
  %69 = zext i8 %68 to i32
  %70 = and i32 %67, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %65
  %73 = load i32, i32* @TIOCM_RI, align 4
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %4, align 4
  br label %76

76:                                               ; preds = %72, %65
  %77 = load i8, i8* %3, align 1
  %78 = zext i8 %77 to i32
  %79 = load i8, i8* @UART_MSR_DCD, align 1
  %80 = zext i8 %79 to i32
  %81 = and i32 %78, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %76
  %84 = load i32, i32* @TIOCM_CD, align 4
  %85 = load i32, i32* %4, align 4
  %86 = or i32 %85, %84
  store i32 %86, i32* %4, align 4
  br label %87

87:                                               ; preds = %83, %76
  %88 = load i32, i32* @IOCTL, align 4
  %89 = load i32, i32* @INFO, align 4
  %90 = load %struct.jsm_channel*, %struct.jsm_channel** %2, align 8
  %91 = getelementptr inbounds %struct.jsm_channel, %struct.jsm_channel* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 0
  %94 = call i32 @jsm_printk(i32 %88, i32 %89, i32* %93, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %95 = load i32, i32* %4, align 4
  ret i32 %95
}

declare dso_local i32 @jsm_printk(i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
