; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_timer_funct.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/i4l/extr_isdn_common.c_isdn_timer_funct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@dev = common dso_local global %struct.TYPE_2__* null, align 8
@ISDN_TIMER_FAST = common dso_local global i32 0, align 4
@ISDN_TIMER_MODEMREAD = common dso_local global i32 0, align 4
@ISDN_TIMER_MODEMPLUS = common dso_local global i32 0, align 4
@ISDN_TIMER_MODEMXMIT = common dso_local global i32 0, align 4
@ISDN_TIMER_SLOW = common dso_local global i32 0, align 4
@isdn_timer_cnt1 = common dso_local global i64 0, align 8
@ISDN_TIMER_02SEC = common dso_local global i64 0, align 8
@ISDN_TIMER_NETDIAL = common dso_local global i32 0, align 4
@isdn_timer_cnt2 = common dso_local global i64 0, align 8
@ISDN_TIMER_1SEC = common dso_local global i64 0, align 8
@ISDN_TIMER_NETHANGUP = common dso_local global i32 0, align 4
@isdn_timer_cnt3 = common dso_local global i64 0, align 8
@ISDN_TIMER_RINGING = common dso_local global i64 0, align 8
@ISDN_TIMER_MODEMRING = common dso_local global i32 0, align 4
@ISDN_TIMER_CARRIER = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@ISDN_TIMER_RES = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @isdn_timer_funct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @isdn_timer_funct(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev, align 8
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = load i32, i32* @ISDN_TIMER_FAST, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %33

11:                                               ; preds = %1
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @ISDN_TIMER_MODEMREAD, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = call i32 (...) @isdn_tty_readmodem()
  br label %18

18:                                               ; preds = %16, %11
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @ISDN_TIMER_MODEMPLUS, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %18
  %24 = call i32 (...) @isdn_tty_modem_escape()
  br label %25

25:                                               ; preds = %23, %18
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @ISDN_TIMER_MODEMXMIT, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %25
  %31 = call i32 (...) @isdn_tty_modem_xmit()
  br label %32

32:                                               ; preds = %30, %25
  br label %33

33:                                               ; preds = %32, %1
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @ISDN_TIMER_SLOW, align 4
  %36 = and i32 %34, %35
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %33
  %39 = load i64, i64* @isdn_timer_cnt1, align 8
  %40 = add nsw i64 %39, 1
  store i64 %40, i64* @isdn_timer_cnt1, align 8
  %41 = load i64, i64* @ISDN_TIMER_02SEC, align 8
  %42 = icmp sge i64 %40, %41
  br i1 %42, label %43, label %51

43:                                               ; preds = %38
  store i64 0, i64* @isdn_timer_cnt1, align 8
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @ISDN_TIMER_NETDIAL, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %43
  %49 = call i32 (...) @isdn_net_dial()
  br label %50

50:                                               ; preds = %48, %43
  br label %51

51:                                               ; preds = %50, %38
  %52 = load i64, i64* @isdn_timer_cnt2, align 8
  %53 = add nsw i64 %52, 1
  store i64 %53, i64* @isdn_timer_cnt2, align 8
  %54 = load i64, i64* @ISDN_TIMER_1SEC, align 8
  %55 = icmp sge i64 %53, %54
  br i1 %55, label %56, label %84

56:                                               ; preds = %51
  store i64 0, i64* @isdn_timer_cnt2, align 8
  %57 = load i32, i32* %3, align 4
  %58 = load i32, i32* @ISDN_TIMER_NETHANGUP, align 4
  %59 = and i32 %57, %58
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %56
  %62 = call i32 (...) @isdn_net_autohup()
  br label %63

63:                                               ; preds = %61, %56
  %64 = load i64, i64* @isdn_timer_cnt3, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* @isdn_timer_cnt3, align 8
  %66 = load i64, i64* @ISDN_TIMER_RINGING, align 8
  %67 = icmp sge i64 %65, %66
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  store i64 0, i64* @isdn_timer_cnt3, align 8
  %69 = load i32, i32* %3, align 4
  %70 = load i32, i32* @ISDN_TIMER_MODEMRING, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %68
  %74 = call i32 (...) @isdn_tty_modem_ring()
  br label %75

75:                                               ; preds = %73, %68
  br label %76

76:                                               ; preds = %75, %63
  %77 = load i32, i32* %3, align 4
  %78 = load i32, i32* @ISDN_TIMER_CARRIER, align 4
  %79 = and i32 %77, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %76
  %82 = call i32 (...) @isdn_tty_carrier_timeout()
  br label %83

83:                                               ; preds = %81, %76
  br label %84

84:                                               ; preds = %83, %51
  br label %85

85:                                               ; preds = %84, %33
  %86 = load i32, i32* %3, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %95

88:                                               ; preds = %85
  %89 = load %struct.TYPE_2__*, %struct.TYPE_2__** @dev, align 8
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i64, i64* @jiffies, align 8
  %92 = load i64, i64* @ISDN_TIMER_RES, align 8
  %93 = add nsw i64 %91, %92
  %94 = call i32 @mod_timer(i32* %90, i64 %93)
  br label %95

95:                                               ; preds = %88, %85
  ret void
}

declare dso_local i32 @isdn_tty_readmodem(...) #1

declare dso_local i32 @isdn_tty_modem_escape(...) #1

declare dso_local i32 @isdn_tty_modem_xmit(...) #1

declare dso_local i32 @isdn_net_dial(...) #1

declare dso_local i32 @isdn_net_autohup(...) #1

declare dso_local i32 @isdn_tty_modem_ring(...) #1

declare dso_local i32 @isdn_tty_carrier_timeout(...) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
