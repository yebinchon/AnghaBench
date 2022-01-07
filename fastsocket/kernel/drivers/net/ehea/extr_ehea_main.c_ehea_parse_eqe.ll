; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_parse_eqe.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/ehea/extr_ehea_main.c_ehea_parse_eqe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ehea_adapter = type { i32 }
%struct.ehea_port = type { i32, %struct.TYPE_6__*, i32, i32 }
%struct.TYPE_6__ = type { i32 }

@NEQE_EVENT_CODE = common dso_local global i32 0, align 4
@NEQE_PORTNUM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"unknown portnum %x\00", align 1
@NEQE_PORT_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"failed resensing port attributes\00", align 1
@.str.2 = private unnamed_addr constant [38 x i8] c"%s: Logical port up: %dMbps %s Duplex\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"Full\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"Half\00", align 1
@.str.5 = private unnamed_addr constant [22 x i8] c"%s: Logical port down\00", align 1
@NEQE_EXTSWITCH_PORT_UP = common dso_local global i32 0, align 4
@EHEA_PHY_LINK_UP = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [21 x i8] c"%s: Physical port up\00", align 1
@prop_carrier_state = common dso_local global i32 0, align 4
@EHEA_PHY_LINK_DOWN = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [23 x i8] c"%s: Physical port down\00", align 1
@NEQE_EXTSWITCH_PRIMARY = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [37 x i8] c"External switch port is primary port\00", align 1
@.str.9 = private unnamed_addr constant [36 x i8] c"External switch port is backup port\00", align 1
@.str.10 = private unnamed_addr constant [20 x i8] c"Adapter malfunction\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Port malfunction: Device: %s\00", align 1
@.str.12 = private unnamed_addr constant [34 x i8] c"unknown event code %x, eqe=0x%llX\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ehea_adapter*, i32)* @ehea_parse_eqe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ehea_parse_eqe(%struct.ehea_adapter* %0, i32 %1) #0 {
  %3 = alloca %struct.ehea_adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ehea_port*, align 8
  store %struct.ehea_adapter* %0, %struct.ehea_adapter** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* @NEQE_EVENT_CODE, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @EHEA_BMASK_GET(i32 %9, i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @NEQE_PORTNUM, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @EHEA_BMASK_GET(i32 %12, i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load %struct.ehea_adapter*, %struct.ehea_adapter** %3, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.ehea_port* @ehea_get_port(%struct.ehea_adapter* %15, i32 %16)
  store %struct.ehea_port* %17, %struct.ehea_port** %8, align 8
  %18 = load i32, i32* %6, align 4
  switch i32 %18, label %178 [
    i32 129, label %19
    i32 130, label %161
    i32 128, label %163
  ]

19:                                               ; preds = %2
  %20 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %21 = icmp ne %struct.ehea_port* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %19
  %23 = load i32, i32* %7, align 4
  %24 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %23)
  br label %182

25:                                               ; preds = %19
  %26 = load i32, i32* @NEQE_PORT_UP, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @EHEA_BMASK_GET(i32 %26, i32 %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %25
  %31 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %32 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %31, i32 0, i32 1
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = call i32 @netif_carrier_ok(%struct.TYPE_6__* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %72, label %36

36:                                               ; preds = %30
  %37 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %38 = call i32 @ehea_sense_port_attr(%struct.ehea_port* %37)
  store i32 %38, i32* %5, align 4
  %39 = load i32, i32* %5, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %43

41:                                               ; preds = %36
  %42 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0))
  br label %182

43:                                               ; preds = %36
  %44 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %45 = call i32 @netif_msg_link(%struct.ehea_port* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %43
  %48 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %49 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %48, i32 0, i32 1
  %50 = load %struct.TYPE_6__*, %struct.TYPE_6__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %54 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %53, i32 0, i32 3
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %57 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = icmp eq i32 %58, 1
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0)
  %62 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %52, i32 %55, i8* %61)
  br label %63

63:                                               ; preds = %47, %43
  %64 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %65 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %64, i32 0, i32 1
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %65, align 8
  %67 = call i32 @netif_carrier_on(%struct.TYPE_6__* %66)
  %68 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %69 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %68, i32 0, i32 1
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = call i32 @netif_wake_queue(%struct.TYPE_6__* %70)
  br label %72

72:                                               ; preds = %63, %30
  br label %100

73:                                               ; preds = %25
  %74 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %75 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %74, i32 0, i32 1
  %76 = load %struct.TYPE_6__*, %struct.TYPE_6__** %75, align 8
  %77 = call i32 @netif_carrier_ok(%struct.TYPE_6__* %76)
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %99

79:                                               ; preds = %73
  %80 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %81 = call i32 @netif_msg_link(%struct.ehea_port* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %79
  %84 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %85 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %84, i32 0, i32 1
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.5, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %83, %79
  %91 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %92 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %91, i32 0, i32 1
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %92, align 8
  %94 = call i32 @netif_carrier_off(%struct.TYPE_6__* %93)
  %95 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %96 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %95, i32 0, i32 1
  %97 = load %struct.TYPE_6__*, %struct.TYPE_6__** %96, align 8
  %98 = call i32 @netif_tx_disable(%struct.TYPE_6__* %97)
  br label %99

99:                                               ; preds = %90, %73
  br label %100

100:                                              ; preds = %99, %72
  %101 = load i32, i32* @NEQE_EXTSWITCH_PORT_UP, align 4
  %102 = load i32, i32* %4, align 4
  %103 = call i32 @EHEA_BMASK_GET(i32 %101, i32 %102)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %128

105:                                              ; preds = %100
  %106 = load i32, i32* @EHEA_PHY_LINK_UP, align 4
  %107 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %108 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %107, i32 0, i32 2
  store i32 %106, i32* %108, align 8
  %109 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %110 = call i32 @netif_msg_link(%struct.ehea_port* %109)
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %119

112:                                              ; preds = %105
  %113 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %114 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %113, i32 0, i32 1
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 %117)
  br label %119

119:                                              ; preds = %112, %105
  %120 = load i32, i32* @prop_carrier_state, align 4
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %127

122:                                              ; preds = %119
  %123 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %124 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %123, i32 0, i32 1
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = call i32 @netif_carrier_on(%struct.TYPE_6__* %125)
  br label %127

127:                                              ; preds = %122, %119
  br label %151

128:                                              ; preds = %100
  %129 = load i32, i32* @EHEA_PHY_LINK_DOWN, align 4
  %130 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %131 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %130, i32 0, i32 2
  store i32 %129, i32* %131, align 8
  %132 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %133 = call i32 @netif_msg_link(%struct.ehea_port* %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %128
  %136 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %137 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %136, i32 0, i32 1
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0), i32 %140)
  br label %142

142:                                              ; preds = %135, %128
  %143 = load i32, i32* @prop_carrier_state, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %150

145:                                              ; preds = %142
  %146 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %147 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %146, i32 0, i32 1
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %147, align 8
  %149 = call i32 @netif_carrier_off(%struct.TYPE_6__* %148)
  br label %150

150:                                              ; preds = %145, %142
  br label %151

151:                                              ; preds = %150, %127
  %152 = load i32, i32* @NEQE_EXTSWITCH_PRIMARY, align 4
  %153 = load i32, i32* %4, align 4
  %154 = call i32 @EHEA_BMASK_GET(i32 %152, i32 %153)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %151
  %157 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.8, i64 0, i64 0))
  br label %160

158:                                              ; preds = %151
  %159 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.9, i64 0, i64 0))
  br label %160

160:                                              ; preds = %158, %156
  br label %182

161:                                              ; preds = %2
  %162 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.10, i64 0, i64 0))
  br label %182

163:                                              ; preds = %2
  %164 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %165 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 (i8*, ...) @ehea_info(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0), i32 %168)
  %170 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %171 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = call i32 @netif_carrier_off(%struct.TYPE_6__* %172)
  %174 = load %struct.ehea_port*, %struct.ehea_port** %8, align 8
  %175 = getelementptr inbounds %struct.ehea_port, %struct.ehea_port* %174, i32 0, i32 1
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %175, align 8
  %177 = call i32 @netif_tx_disable(%struct.TYPE_6__* %176)
  br label %182

178:                                              ; preds = %2
  %179 = load i32, i32* %6, align 4
  %180 = load i32, i32* %4, align 4
  %181 = call i32 (i8*, ...) @ehea_error(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.12, i64 0, i64 0), i32 %179, i32 %180)
  br label %182

182:                                              ; preds = %178, %163, %161, %160, %41, %22
  ret void
}

declare dso_local i32 @EHEA_BMASK_GET(i32, i32) #1

declare dso_local %struct.ehea_port* @ehea_get_port(%struct.ehea_adapter*, i32) #1

declare dso_local i32 @ehea_error(i8*, ...) #1

declare dso_local i32 @netif_carrier_ok(%struct.TYPE_6__*) #1

declare dso_local i32 @ehea_sense_port_attr(%struct.ehea_port*) #1

declare dso_local i32 @netif_msg_link(%struct.ehea_port*) #1

declare dso_local i32 @ehea_info(i8*, ...) #1

declare dso_local i32 @netif_carrier_on(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_wake_queue(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_carrier_off(%struct.TYPE_6__*) #1

declare dso_local i32 @netif_tx_disable(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
