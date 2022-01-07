; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_diva_led_handler.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_diva_led_handler.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_8__, i32, i32 }
%struct.TYPE_8__ = type { i64 }

@DIVA_IPAC_ISA = common dso_local global i64 0, align 8
@DIVA_IPAC_PCI = common dso_local global i64 0, align 8
@DIVA_IPACX_PCI = common dso_local global i64 0, align 8
@DIVA_ASSIGN = common dso_local global i32 0, align 4
@DIVA_ISA = common dso_local global i64 0, align 8
@DIVA_ISA_LED_A = common dso_local global i32 0, align 4
@DIVA_PCI_LED_A = common dso_local global i32 0, align 4
@DIVA_ISA_LED_B = common dso_local global i32 0, align 4
@DIVA_PCI_LED_B = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @diva_led_handler to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @diva_led_handler(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i32, align 4
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  store i32 0, i32* %3, align 4
  %4 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %5 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @DIVA_IPAC_ISA, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %21, label %9

9:                                                ; preds = %1
  %10 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %11 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @DIVA_IPAC_PCI, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %9
  %16 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %17 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @DIVA_IPACX_PCI, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %9, %1
  br label %181

22:                                               ; preds = %15
  %23 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %24 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  %27 = call i32 @del_timer(%struct.TYPE_8__* %26)
  %28 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %29 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %28, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @DIVA_ASSIGN, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %54

36:                                               ; preds = %22
  %37 = load i64, i64* @DIVA_ISA, align 8
  %38 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %39 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %37, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %36
  %43 = load i32, i32* @DIVA_ISA_LED_A, align 4
  br label %46

44:                                               ; preds = %36
  %45 = load i32, i32* @DIVA_PCI_LED_A, align 4
  br label %46

46:                                               ; preds = %44, %42
  %47 = phi i32 [ %43, %42 ], [ %45, %44 ]
  %48 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %49 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %48, i32 0, i32 1
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = or i32 %52, %47
  store i32 %53, i32* %51, align 8
  br label %72

54:                                               ; preds = %22
  %55 = load i64, i64* @DIVA_ISA, align 8
  %56 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %57 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %55, %58
  br i1 %59, label %60, label %62

60:                                               ; preds = %54
  %61 = load i32, i32* @DIVA_ISA_LED_A, align 4
  br label %64

62:                                               ; preds = %54
  %63 = load i32, i32* @DIVA_PCI_LED_A, align 4
  br label %64

64:                                               ; preds = %62, %60
  %65 = phi i32 [ %61, %60 ], [ %63, %62 ]
  %66 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %67 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = xor i32 %70, %65
  store i32 %71, i32* %69, align 8
  store i32 250, i32* %3, align 4
  br label %72

72:                                               ; preds = %64, %46
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %74 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = and i32 %77, 61440
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %98

80:                                               ; preds = %72
  %81 = load i64, i64* @DIVA_ISA, align 8
  %82 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %83 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = icmp eq i64 %81, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %80
  %87 = load i32, i32* @DIVA_ISA_LED_B, align 4
  br label %90

88:                                               ; preds = %80
  %89 = load i32, i32* @DIVA_PCI_LED_B, align 4
  br label %90

90:                                               ; preds = %88, %86
  %91 = phi i32 [ %87, %86 ], [ %89, %88 ]
  %92 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %93 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = or i32 %96, %91
  store i32 %97, i32* %95, align 8
  br label %144

98:                                               ; preds = %72
  %99 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %100 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = and i32 %103, 3840
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %124

106:                                              ; preds = %98
  %107 = load i64, i64* @DIVA_ISA, align 8
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %109 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp eq i64 %107, %110
  br i1 %111, label %112, label %114

112:                                              ; preds = %106
  %113 = load i32, i32* @DIVA_ISA_LED_B, align 4
  br label %116

114:                                              ; preds = %106
  %115 = load i32, i32* @DIVA_PCI_LED_B, align 4
  br label %116

116:                                              ; preds = %114, %112
  %117 = phi i32 [ %113, %112 ], [ %115, %114 ]
  %118 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %119 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %118, i32 0, i32 1
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = xor i32 %122, %117
  store i32 %123, i32* %121, align 8
  store i32 500, i32* %3, align 4
  br label %143

124:                                              ; preds = %98
  %125 = load i64, i64* @DIVA_ISA, align 8
  %126 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %127 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = icmp eq i64 %125, %128
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load i32, i32* @DIVA_ISA_LED_B, align 4
  br label %134

132:                                              ; preds = %124
  %133 = load i32, i32* @DIVA_PCI_LED_B, align 4
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi i32 [ %131, %130 ], [ %133, %132 ]
  %136 = xor i32 %135, -1
  %137 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %138 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 2
  %141 = load i32, i32* %140, align 8
  %142 = and i32 %141, %136
  store i32 %142, i32* %140, align 8
  br label %143

143:                                              ; preds = %134, %116
  br label %144

144:                                              ; preds = %143, %90
  %145 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %146 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %145, i32 0, i32 1
  %147 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %146, i32 0, i32 0
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %151 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 2
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @byteout(i32 %149, i32 %154)
  %156 = load i32, i32* %3, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %181

158:                                              ; preds = %144
  %159 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %160 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %159, i32 0, i32 1
  %161 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %160, i32 0, i32 0
  %162 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %161, i32 0, i32 1
  %163 = call i32 @init_timer(%struct.TYPE_8__* %162)
  %164 = load i64, i64* @jiffies, align 8
  %165 = load i32, i32* %3, align 4
  %166 = load i32, i32* @HZ, align 4
  %167 = mul nsw i32 %165, %166
  %168 = sdiv i32 %167, 1000
  %169 = sext i32 %168 to i64
  %170 = add nsw i64 %164, %169
  %171 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %172 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %171, i32 0, i32 1
  %173 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %173, i32 0, i32 1
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 0
  store i64 %170, i64* %175, align 8
  %176 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %177 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 1
  %180 = call i32 @add_timer(%struct.TYPE_8__* %179)
  br label %181

181:                                              ; preds = %21, %158, %144
  ret void
}

declare dso_local i32 @del_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @byteout(i32, i32) #1

declare dso_local i32 @init_timer(%struct.TYPE_8__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
