; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_interrupt.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/extr_airo.c_airo_interrupt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_device = type { %struct.airo_info* }
%struct.airo_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IRQ_NONE = common dso_local global i32 0, align 4
@EVSTAT = common dso_local global i32 0, align 4
@STATUS_INTS = common dso_local global i32 0, align 4
@EV_AWAKE = common dso_local global i32 0, align 4
@EVACK = common dso_local global i32 0, align 4
@EVINTEN = common dso_local global i32 0, align 4
@EV_MIC = common dso_local global i32 0, align 4
@EV_LINK = common dso_local global i32 0, align 4
@EV_RX = common dso_local global i32 0, align 4
@EV_TX = common dso_local global i32 0, align 4
@EV_TXCPY = common dso_local global i32 0, align 4
@EV_TXEXC = common dso_local global i32 0, align 4
@IGNORE_INTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Got weird status %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i8*)* @airo_interrupt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @airo_interrupt(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.net_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.airo_info*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %11 = load i8*, i8** %5, align 8
  %12 = bitcast i8* %11 to %struct.net_device*
  store %struct.net_device* %12, %struct.net_device** %6, align 8
  store i32 0, i32* %8, align 4
  %13 = load %struct.net_device*, %struct.net_device** %6, align 8
  %14 = getelementptr inbounds %struct.net_device, %struct.net_device* %13, i32 0, i32 0
  %15 = load %struct.airo_info*, %struct.airo_info** %14, align 8
  store %struct.airo_info* %15, %struct.airo_info** %9, align 8
  store i32 0, i32* %10, align 4
  %16 = load %struct.net_device*, %struct.net_device** %6, align 8
  %17 = call i32 @netif_device_present(%struct.net_device* %16)
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @IRQ_NONE, align 4
  store i32 %20, i32* %3, align 4
  br label %134

21:                                               ; preds = %2
  br label %22

22:                                               ; preds = %122, %21
  %23 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %24 = load i32, i32* @EVSTAT, align 4
  %25 = call i32 @IN4500(%struct.airo_info* %23, i32 %24)
  store i32 %25, i32* %7, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* @STATUS_INTS, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %33

30:                                               ; preds = %22
  %31 = load i32, i32* %7, align 4
  %32 = icmp eq i32 %31, 65535
  br i1 %32, label %33, label %34

33:                                               ; preds = %30, %22
  br label %123

34:                                               ; preds = %30
  store i32 1, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* @EV_AWAKE, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %48

39:                                               ; preds = %34
  %40 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %41 = load i32, i32* @EVACK, align 4
  %42 = load i32, i32* @EV_AWAKE, align 4
  %43 = call i32 @OUT4500(%struct.airo_info* %40, i32 %41, i32 %42)
  %44 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %45 = load i32, i32* @EVACK, align 4
  %46 = load i32, i32* @EV_AWAKE, align 4
  %47 = call i32 @OUT4500(%struct.airo_info* %44, i32 %45, i32 %46)
  br label %48

48:                                               ; preds = %39, %34
  %49 = load i32, i32* %8, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %53 = load i32, i32* @EVINTEN, align 4
  %54 = call i32 @IN4500(%struct.airo_info* %52, i32 %53)
  store i32 %54, i32* %8, align 4
  %55 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %56 = load i32, i32* @EVINTEN, align 4
  %57 = call i32 @OUT4500(%struct.airo_info* %55, i32 %56, i32 0)
  br label %58

58:                                               ; preds = %51, %48
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* @EV_MIC, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %70

63:                                               ; preds = %58
  %64 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %65 = load i32, i32* @EVACK, align 4
  %66 = load i32, i32* @EV_MIC, align 4
  %67 = call i32 @OUT4500(%struct.airo_info* %64, i32 %65, i32 %66)
  %68 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %69 = call i32 @airo_handle_cisco_mic(%struct.airo_info* %68)
  br label %70

70:                                               ; preds = %63, %58
  %71 = load i32, i32* %7, align 4
  %72 = load i32, i32* @EV_LINK, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %70
  %76 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %77 = call i32 @airo_handle_link(%struct.airo_info* %76)
  br label %78

78:                                               ; preds = %75, %70
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* @EV_RX, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %85 = call i32 @airo_handle_rx(%struct.airo_info* %84)
  br label %86

86:                                               ; preds = %83, %78
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* @EV_TX, align 4
  %89 = load i32, i32* @EV_TXCPY, align 4
  %90 = or i32 %88, %89
  %91 = load i32, i32* @EV_TXEXC, align 4
  %92 = or i32 %90, %91
  %93 = and i32 %87, %92
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %95, label %99

95:                                               ; preds = %86
  %96 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %97 = load i32, i32* %7, align 4
  %98 = call i32 @airo_handle_tx(%struct.airo_info* %96, i32 %97)
  br label %99

99:                                               ; preds = %95, %86
  %100 = load i32, i32* %7, align 4
  %101 = load i32, i32* @STATUS_INTS, align 4
  %102 = xor i32 %101, -1
  %103 = and i32 %100, %102
  %104 = load i32, i32* @IGNORE_INTS, align 4
  %105 = xor i32 %104, -1
  %106 = and i32 %103, %105
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %99
  %109 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %110 = getelementptr inbounds %struct.airo_info, %struct.airo_info* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @STATUS_INTS, align 4
  %116 = xor i32 %115, -1
  %117 = and i32 %114, %116
  %118 = load i32, i32* @IGNORE_INTS, align 4
  %119 = xor i32 %118, -1
  %120 = and i32 %117, %119
  %121 = call i32 @airo_print_warn(i32 %113, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %120)
  br label %122

122:                                              ; preds = %108, %99
  br label %22

123:                                              ; preds = %33
  %124 = load i32, i32* %8, align 4
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %131

126:                                              ; preds = %123
  %127 = load %struct.airo_info*, %struct.airo_info** %9, align 8
  %128 = load i32, i32* @EVINTEN, align 4
  %129 = load i32, i32* %8, align 4
  %130 = call i32 @OUT4500(%struct.airo_info* %127, i32 %128, i32 %129)
  br label %131

131:                                              ; preds = %126, %123
  %132 = load i32, i32* %10, align 4
  %133 = call i32 @IRQ_RETVAL(i32 %132)
  store i32 %133, i32* %3, align 4
  br label %134

134:                                              ; preds = %131, %19
  %135 = load i32, i32* %3, align 4
  ret i32 %135
}

declare dso_local i32 @netif_device_present(%struct.net_device*) #1

declare dso_local i32 @IN4500(%struct.airo_info*, i32) #1

declare dso_local i32 @OUT4500(%struct.airo_info*, i32, i32) #1

declare dso_local i32 @airo_handle_cisco_mic(%struct.airo_info*) #1

declare dso_local i32 @airo_handle_link(%struct.airo_info*) #1

declare dso_local i32 @airo_handle_rx(%struct.airo_info*) #1

declare dso_local i32 @airo_handle_tx(%struct.airo_info*, i32) #1

declare dso_local i32 @airo_print_warn(i32, i8*, i32) #1

declare dso_local i32 @IRQ_RETVAL(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
