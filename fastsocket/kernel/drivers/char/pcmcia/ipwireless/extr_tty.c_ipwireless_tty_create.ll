; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipwireless_tty_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipwireless_tty_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i32 }
%struct.ipw_hardware = type { i32 }
%struct.ipw_network = type { i32 }
%struct.TYPE_4__ = type { %struct.TYPE_4__* }

@IPWIRELESS_PCMCIA_MINOR_RANGE = common dso_local global i32 0, align 4
@IPWIRELESS_PCMCIA_MINORS = common dso_local global i32 0, align 4
@ttys = common dso_local global %struct.ipw_tty** null, align 8
@IPW_CHANNEL_DIALLER = common dso_local global i32 0, align 4
@IPW_CHANNEL_RAS = common dso_local global i32 0, align 4
@TTYTYPE_MODEM = common dso_local global i32 0, align 4
@TTYTYPE_MONITOR = common dso_local global i32 0, align 4
@TTYTYPE_RAS_RAW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ipw_tty* @ipwireless_tty_create(%struct.ipw_hardware* %0, %struct.ipw_network* %1, %struct.TYPE_4__* %2) #0 {
  %4 = alloca %struct.ipw_tty*, align 8
  %5 = alloca %struct.ipw_hardware*, align 8
  %6 = alloca %struct.ipw_network*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ipw_hardware* %0, %struct.ipw_hardware** %5, align 8
  store %struct.ipw_network* %1, %struct.ipw_network** %6, align 8
  store %struct.TYPE_4__* %2, %struct.TYPE_4__** %7, align 8
  store i32 0, i32* %8, align 4
  br label %11

11:                                               ; preds = %91, %3
  %12 = load i32, i32* %8, align 4
  %13 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %14 = icmp slt i32 %12, %13
  br i1 %14, label %15, label %94

15:                                               ; preds = %11
  store i32 1, i32* %10, align 4
  %16 = load i32, i32* %8, align 4
  store i32 %16, i32* %9, align 4
  br label %17

17:                                               ; preds = %30, %15
  %18 = load i32, i32* %9, align 4
  %19 = load i32, i32* @IPWIRELESS_PCMCIA_MINORS, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %23 = load i32, i32* %9, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %22, i64 %24
  %26 = load %struct.ipw_tty*, %struct.ipw_tty** %25, align 8
  %27 = icmp ne %struct.ipw_tty* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  store i32 0, i32* %10, align 4
  br label %34

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %32 = load i32, i32* %9, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %9, align 4
  br label %17

34:                                               ; preds = %28, %17
  %35 = load i32, i32* %10, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %90

37:                                               ; preds = %34
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %9, align 4
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i64 0
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %43 = load %struct.ipw_network*, %struct.ipw_network** %6, align 8
  %44 = load i32, i32* @IPW_CHANNEL_DIALLER, align 4
  %45 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %46 = load i32, i32* @TTYTYPE_MODEM, align 4
  %47 = call i64 @add_tty(%struct.TYPE_4__* %40, i32 %41, %struct.ipw_hardware* %42, %struct.ipw_network* %43, i32 %44, i32 %45, i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %37
  store %struct.ipw_tty* null, %struct.ipw_tty** %4, align 8
  br label %95

50:                                               ; preds = %37
  %51 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %52 = load i32, i32* %9, align 4
  %53 = add nsw i32 %52, %51
  store i32 %53, i32* %9, align 4
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 1
  %56 = load i32, i32* %9, align 4
  %57 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %58 = load %struct.ipw_network*, %struct.ipw_network** %6, align 8
  %59 = load i32, i32* @IPW_CHANNEL_DIALLER, align 4
  %60 = load i32, i32* @TTYTYPE_MONITOR, align 4
  %61 = call i64 @add_tty(%struct.TYPE_4__* %55, i32 %56, %struct.ipw_hardware* %57, %struct.ipw_network* %58, i32 %59, i32 -1, i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %50
  store %struct.ipw_tty* null, %struct.ipw_tty** %4, align 8
  br label %95

64:                                               ; preds = %50
  %65 = load i32, i32* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 4
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, %65
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.ipw_hardware*, %struct.ipw_hardware** %5, align 8
  %70 = load %struct.ipw_network*, %struct.ipw_network** %6, align 8
  %71 = load i32, i32* @IPW_CHANNEL_RAS, align 4
  %72 = load i32, i32* @TTYTYPE_RAS_RAW, align 4
  %73 = call i64 @add_tty(%struct.TYPE_4__* null, i32 %68, %struct.ipw_hardware* %69, %struct.ipw_network* %70, i32 %71, i32 -1, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %64
  store %struct.ipw_tty* null, %struct.ipw_tty** %4, align 8
  br label %95

76:                                               ; preds = %64
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i64 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i64 0
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store %struct.TYPE_4__* %78, %struct.TYPE_4__** %81, align 8
  %82 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i64 1
  %84 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %83, i32 0, i32 0
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %84, align 8
  %85 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %86 = load i32, i32* %8, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %85, i64 %87
  %89 = load %struct.ipw_tty*, %struct.ipw_tty** %88, align 8
  store %struct.ipw_tty* %89, %struct.ipw_tty** %4, align 8
  br label %95

90:                                               ; preds = %34
  br label %91

91:                                               ; preds = %90
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %8, align 4
  br label %11

94:                                               ; preds = %11
  store %struct.ipw_tty* null, %struct.ipw_tty** %4, align 8
  br label %95

95:                                               ; preds = %94, %76, %75, %63, %49
  %96 = load %struct.ipw_tty*, %struct.ipw_tty** %4, align 8
  ret %struct.ipw_tty* %96
}

declare dso_local i64 @add_tty(%struct.TYPE_4__*, i32, %struct.ipw_hardware*, %struct.ipw_network*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
