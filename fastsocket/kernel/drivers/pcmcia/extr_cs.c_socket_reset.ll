; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/pcmcia/extr_cs.c_socket_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { %struct.TYPE_4__*, %struct.TYPE_5__ }
%struct.TYPE_4__ = type { i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)* }
%struct.TYPE_5__ = type { i32 }

@.str = private unnamed_addr constant [7 x i8] c"reset\0A\00", align 1
@SS_OUTPUT_ENA = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@reset_time = common dso_local global i64 0, align 8
@unreset_delay = common dso_local global i32 0, align 4
@unreset_limit = common dso_local global i32 0, align 4
@SS_DETECT = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@SS_READY = common dso_local global i32 0, align 4
@unreset_check = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"time out after reset.\0A\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*)* @socket_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @socket_reset(%struct.pcmcia_socket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  %6 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %7 = call i32 @cs_dbg(%struct.pcmcia_socket* %6, i32 4, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @SS_OUTPUT_ENA, align 4
  %9 = load i32, i32* @SS_RESET, align 4
  %10 = or i32 %8, %9
  %11 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %12 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = or i32 %14, %10
  store i32 %15, i32* %13, align 8
  %16 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %17 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)** %19, align 8
  %21 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %22 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %23 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %22, i32 0, i32 1
  %24 = call i32 %20(%struct.pcmcia_socket* %21, %struct.TYPE_5__* %23)
  %25 = load i64, i64* @reset_time, align 8
  %26 = call i32 @udelay(i64 %25)
  %27 = load i32, i32* @SS_RESET, align 4
  %28 = xor i32 %27, -1
  %29 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %30 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = and i32 %32, %28
  store i32 %33, i32* %31, align 8
  %34 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %35 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %34, i32 0, i32 0
  %36 = load %struct.TYPE_4__*, %struct.TYPE_4__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)*, i32 (%struct.pcmcia_socket*, %struct.TYPE_5__*)** %37, align 8
  %39 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %40 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %41 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %40, i32 0, i32 1
  %42 = call i32 %38(%struct.pcmcia_socket* %39, %struct.TYPE_5__* %41)
  %43 = load i32, i32* @unreset_delay, align 4
  %44 = mul nsw i32 %43, 10
  %45 = call i32 @msleep(i32 %44)
  store i32 0, i32* %5, align 4
  br label %46

46:                                               ; preds = %75, %1
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @unreset_limit, align 4
  %49 = icmp slt i32 %47, %48
  br i1 %49, label %50, label %78

50:                                               ; preds = %46
  %51 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %52 = getelementptr inbounds %struct.pcmcia_socket, %struct.pcmcia_socket* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 0
  %55 = load i32 (%struct.pcmcia_socket*, i32*)*, i32 (%struct.pcmcia_socket*, i32*)** %54, align 8
  %56 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %57 = call i32 %55(%struct.pcmcia_socket* %56, i32* %4)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @SS_DETECT, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %50
  %63 = load i32, i32* @ENODEV, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %2, align 4
  br label %83

65:                                               ; preds = %50
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @SS_READY, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65
  store i32 0, i32* %2, align 4
  br label %83

71:                                               ; preds = %65
  %72 = load i32, i32* @unreset_check, align 4
  %73 = mul nsw i32 %72, 10
  %74 = call i32 @msleep(i32 %73)
  br label %75

75:                                               ; preds = %71
  %76 = load i32, i32* %5, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %46

78:                                               ; preds = %46
  %79 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %80 = call i32 @cs_err(%struct.pcmcia_socket* %79, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %81 = load i32, i32* @ETIMEDOUT, align 4
  %82 = sub nsw i32 0, %81
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %78, %70, %62
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @cs_dbg(%struct.pcmcia_socket*, i32, i8*) #1

declare dso_local i32 @udelay(i64) #1

declare dso_local i32 @msleep(i32) #1

declare dso_local i32 @cs_err(%struct.pcmcia_socket*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
