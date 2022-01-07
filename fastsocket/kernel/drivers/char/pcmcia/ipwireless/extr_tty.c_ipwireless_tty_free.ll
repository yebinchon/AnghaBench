; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipwireless_tty_free.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/pcmcia/ipwireless/extr_tty.c_ipwireless_tty_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipw_tty = type { i64, i32, i32, i32, i64, i32*, %struct.ipw_network* }
%struct.ipw_network = type { i32 }
%struct.TYPE_3__ = type { i64 }

@ttys = common dso_local global %struct.ipw_tty** null, align 8
@IPWIRELESS_PCMCIA_MINORS = common dso_local global i32 0, align 4
@ipw_tty_driver = common dso_local global %struct.TYPE_3__* null, align 8
@IPWIRELESS_PCMCIA_MINOR_RANGE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ipwireless_tty_free(%struct.ipw_tty* %0) #0 {
  %2 = alloca %struct.ipw_tty*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipw_network*, align 8
  %5 = alloca %struct.ipw_tty*, align 8
  store %struct.ipw_tty* %0, %struct.ipw_tty** %2, align 8
  %6 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %7 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %8 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %6, i64 %9
  %11 = load %struct.ipw_tty*, %struct.ipw_tty** %10, align 8
  %12 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %11, i32 0, i32 6
  %13 = load %struct.ipw_network*, %struct.ipw_network** %12, align 8
  store %struct.ipw_network* %13, %struct.ipw_network** %4, align 8
  %14 = load %struct.ipw_tty*, %struct.ipw_tty** %2, align 8
  %15 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = trunc i64 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %18

18:                                               ; preds = %93, %1
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @IPWIRELESS_PCMCIA_MINORS, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %99

22:                                               ; preds = %18
  %23 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %23, i64 %25
  %27 = load %struct.ipw_tty*, %struct.ipw_tty** %26, align 8
  store %struct.ipw_tty* %27, %struct.ipw_tty** %5, align 8
  %28 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %29 = icmp ne %struct.ipw_tty* %28, null
  br i1 %29, label %30, label %92

30:                                               ; preds = %22
  %31 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %32 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %31, i32 0, i32 2
  %33 = call i32 @mutex_lock(i32* %32)
  %34 = load i32, i32* %3, align 4
  %35 = sext i32 %34 to i64
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipw_tty_driver, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %35, %38
  %40 = call %struct.ipw_tty* @get_tty(i64 %39)
  %41 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %42 = icmp eq %struct.ipw_tty* %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %30
  %44 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %45 = call i32 @report_deregistering(%struct.ipw_tty* %44)
  br label %46

46:                                               ; preds = %43, %30
  %47 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %48 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %47, i32 0, i32 1
  store i32 1, i32* %48, align 8
  %49 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %50 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %49, i32 0, i32 5
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %65

53:                                               ; preds = %46
  %54 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %55 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %54, i32 0, i32 2
  %56 = call i32 @mutex_unlock(i32* %55)
  %57 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %58 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %57, i32 0, i32 5
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @tty_hangup(i32* %59)
  %61 = call i32 (...) @flush_scheduled_work()
  %62 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %63 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %62, i32 0, i32 2
  %64 = call i32 @mutex_lock(i32* %63)
  br label %65

65:                                               ; preds = %53, %46
  br label %66

66:                                               ; preds = %71, %65
  %67 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %68 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %67, i32 0, i32 4
  %69 = load i64, i64* %68, align 8
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %66
  %72 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %73 = call i32 @do_ipw_close(%struct.ipw_tty* %72)
  br label %66

74:                                               ; preds = %66
  %75 = load %struct.ipw_network*, %struct.ipw_network** %4, align 8
  %76 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %77 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 8
  %79 = call i32 @ipwireless_disassociate_network_ttys(%struct.ipw_network* %75, i32 %78)
  %80 = load %struct.TYPE_3__*, %struct.TYPE_3__** @ipw_tty_driver, align 8
  %81 = load i32, i32* %3, align 4
  %82 = call i32 @tty_unregister_device(%struct.TYPE_3__* %80, i32 %81)
  %83 = load %struct.ipw_tty**, %struct.ipw_tty*** @ttys, align 8
  %84 = load i32, i32* %3, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.ipw_tty*, %struct.ipw_tty** %83, i64 %85
  store %struct.ipw_tty* null, %struct.ipw_tty** %86, align 8
  %87 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %88 = getelementptr inbounds %struct.ipw_tty, %struct.ipw_tty* %87, i32 0, i32 2
  %89 = call i32 @mutex_unlock(i32* %88)
  %90 = load %struct.ipw_tty*, %struct.ipw_tty** %5, align 8
  %91 = call i32 @kfree(%struct.ipw_tty* %90)
  br label %92

92:                                               ; preds = %74, %22
  br label %93

93:                                               ; preds = %92
  %94 = load i64, i64* @IPWIRELESS_PCMCIA_MINOR_RANGE, align 8
  %95 = load i32, i32* %3, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %3, align 4
  br label %18

99:                                               ; preds = %18
  ret void
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.ipw_tty* @get_tty(i64) #1

declare dso_local i32 @report_deregistering(%struct.ipw_tty*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_hangup(i32*) #1

declare dso_local i32 @flush_scheduled_work(...) #1

declare dso_local i32 @do_ipw_close(%struct.ipw_tty*) #1

declare dso_local i32 @ipwireless_disassociate_network_ttys(%struct.ipw_network*, i32) #1

declare dso_local i32 @tty_unregister_device(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @kfree(%struct.ipw_tty*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
