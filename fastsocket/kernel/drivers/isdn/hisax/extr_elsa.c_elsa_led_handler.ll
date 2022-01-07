; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa.c_elsa_led_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_elsa.c_elsa_led_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@ELSA_PCMCIA = common dso_local global i64 0, align 8
@ELSA_PCMCIA_IPAC = common dso_local global i64 0, align 8
@ELSA_ASSIGN = common dso_local global i32 0, align 4
@ELSA_STAT_LED = common dso_local global i32 0, align 4
@ELSA_BAD_PWR = common dso_local global i32 0, align 4
@ELSA_LINE_LED = common dso_local global i32 0, align 4
@ELSA_QS1000PCI = common dso_local global i64 0, align 8
@ELSA_QS3000PCI = common dso_local global i64 0, align 8
@ELSA_IPAC_LINE_LED = common dso_local global i32 0, align 4
@ELSA_IPAC_STAT_LED = common dso_local global i32 0, align 4
@IPAC_ATX = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @elsa_led_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @elsa_led_handler(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %6 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @ELSA_PCMCIA, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %16, label %10

10:                                               ; preds = %1
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @ELSA_PCMCIA_IPAC, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10, %1
  br label %198

17:                                               ; preds = %10
  %18 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %19 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %22 = call i32 @del_timer(%struct.TYPE_8__* %21)
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @ELSA_ASSIGN, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %39

31:                                               ; preds = %17
  %32 = load i32, i32* @ELSA_STAT_LED, align 4
  %33 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %34 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = or i32 %37, %32
  store i32 %38, i32* %36, align 4
  br label %66

39:                                               ; preds = %17
  %40 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %41 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ELSA_BAD_PWR, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %57

48:                                               ; preds = %39
  %49 = load i32, i32* @ELSA_STAT_LED, align 4
  %50 = xor i32 %49, -1
  %51 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %52 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %51, i32 0, i32 1
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 0
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 4
  %56 = and i32 %55, %50
  store i32 %56, i32* %54, align 4
  br label %65

57:                                               ; preds = %39
  %58 = load i32, i32* @ELSA_STAT_LED, align 4
  %59 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %60 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = xor i32 %63, %58
  store i32 %64, i32* %62, align 4
  store i32 250, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %48
  br label %66

66:                                               ; preds = %65, %31
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = and i32 %71, 61440
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %66
  %75 = load i32, i32* @ELSA_LINE_LED, align 4
  %76 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %77 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 0
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = or i32 %80, %75
  store i32 %81, i32* %79, align 4
  br label %108

82:                                               ; preds = %66
  %83 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %84 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = and i32 %87, 3840
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load i32, i32* @ELSA_LINE_LED, align 4
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %96, %91
  store i32 %97, i32* %95, align 4
  store i32 500, i32* %3, align 4
  br label %107

98:                                               ; preds = %82
  %99 = load i32, i32* @ELSA_LINE_LED, align 4
  %100 = xor i32 %99, -1
  %101 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %102 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %101, i32 0, i32 1
  %103 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = and i32 %105, %100
  store i32 %106, i32* %104, align 4
  br label %107

107:                                              ; preds = %98, %90
  br label %108

108:                                              ; preds = %107, %74
  %109 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %110 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @ELSA_QS1000PCI, align 8
  %113 = icmp eq i64 %111, %112
  br i1 %113, label %120, label %114

114:                                              ; preds = %108
  %115 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %116 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = load i64, i64* @ELSA_QS3000PCI, align 8
  %119 = icmp eq i64 %117, %118
  br i1 %119, label %120, label %160

120:                                              ; preds = %114, %108
  store i32 255, i32* %4, align 4
  %121 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %122 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = load i32, i32* @ELSA_LINE_LED, align 4
  %127 = and i32 %125, %126
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %120
  %130 = load i32, i32* @ELSA_IPAC_LINE_LED, align 4
  %131 = load i32, i32* %4, align 4
  %132 = xor i32 %131, %130
  store i32 %132, i32* %4, align 4
  br label %133

133:                                              ; preds = %129, %120
  %134 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %135 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %134, i32 0, i32 1
  %136 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = load i32, i32* @ELSA_STAT_LED, align 4
  %140 = and i32 %138, %139
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %133
  %143 = load i32, i32* @ELSA_IPAC_STAT_LED, align 4
  %144 = load i32, i32* %4, align 4
  %145 = xor i32 %144, %143
  store i32 %145, i32* %4, align 4
  br label %146

146:                                              ; preds = %142, %133
  %147 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %148 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %147, i32 0, i32 1
  %149 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 5
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %153 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %152, i32 0, i32 1
  %154 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %154, i32 0, i32 4
  %156 = load i32, i32* %155, align 4
  %157 = load i32, i32* @IPAC_ATX, align 4
  %158 = load i32, i32* %4, align 4
  %159 = call i32 @writereg(i32 %151, i32 %156, i32 %157, i32 %158)
  br label %172

160:                                              ; preds = %114
  %161 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %162 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 3
  %165 = load i32, i32* %164, align 8
  %166 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %167 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @byteout(i32 %165, i32 %170)
  br label %172

172:                                              ; preds = %160, %146
  %173 = load i32, i32* %3, align 4
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %198

175:                                              ; preds = %172
  %176 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %177 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 2
  %180 = call i32 @init_timer(%struct.TYPE_8__* %179)
  %181 = load i64, i64* @jiffies, align 8
  %182 = load i32, i32* %3, align 4
  %183 = load i32, i32* @HZ, align 4
  %184 = mul nsw i32 %182, %183
  %185 = sdiv i32 %184, 1000
  %186 = sext i32 %185 to i64
  %187 = add nsw i64 %181, %186
  %188 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %189 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %188, i32 0, i32 1
  %190 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %189, i32 0, i32 0
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %191, i32 0, i32 0
  store i64 %187, i64* %192, align 8
  %193 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %194 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %193, i32 0, i32 1
  %195 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = call i32 @add_timer(%struct.TYPE_8__* %196)
  br label %198

198:                                              ; preds = %16, %175, %172
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @writereg(i32, i32, i32, i32) #1

declare dso_local i32 @byteout(i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
