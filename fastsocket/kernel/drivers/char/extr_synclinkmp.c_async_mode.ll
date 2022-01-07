; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_async_mode.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/char/extr_synclinkmp.c_async_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i8, i8, i8, %struct.TYPE_12__, %struct.TYPE_11__** }
%struct.TYPE_12__ = type { i32, i32, i64, i32, i64 }
%struct.TYPE_11__ = type { i8 }

@BIT1 = common dso_local global i8 0, align 1
@MD0 = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i8 0, align 1
@BIT2 = common dso_local global i8 0, align 1
@BIT5 = common dso_local global i8 0, align 1
@BIT3 = common dso_local global i8 0, align 1
@ASYNC_PARITY_NONE = common dso_local global i64 0, align 8
@ASYNC_PARITY_ODD = common dso_local global i64 0, align 8
@BIT0 = common dso_local global i8 0, align 1
@MD1 = common dso_local global i32 0, align 4
@MD2 = common dso_local global i32 0, align 4
@BIT6 = common dso_local global i8 0, align 1
@RXS = common dso_local global i32 0, align 4
@TXS = common dso_local global i32 0, align 4
@RRC = common dso_local global i32 0, align 4
@TRC0 = common dso_local global i32 0, align 4
@TRC1 = common dso_local global i32 0, align 4
@SerialSignal_RTS = common dso_local global i32 0, align 4
@CTL = common dso_local global i32 0, align 4
@TXINTE = common dso_local global i8 0, align 1
@RXINTE = common dso_local global i8 0, align 1
@IE0 = common dso_local global i32 0, align 4
@BRKD = common dso_local global i8 0, align 1
@IE1 = common dso_local global i32 0, align 4
@OVRN = common dso_local global i8 0, align 1
@IE2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_13__*)* @async_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @async_mode(%struct.TYPE_13__* %0) #0 {
  %2 = alloca %struct.TYPE_13__*, align 8
  %3 = alloca i8, align 1
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %2, align 8
  %4 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %5 = call i32 @tx_stop(%struct.TYPE_13__* %4)
  %6 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %7 = call i32 @rx_stop(%struct.TYPE_13__* %6)
  store i8 0, i8* %3, align 1
  %8 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %8, i32 0, i32 5
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 1
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load i8, i8* @BIT1, align 1
  %15 = zext i8 %14 to i32
  %16 = load i8, i8* %3, align 1
  %17 = zext i8 %16 to i32
  %18 = or i32 %17, %15
  %19 = trunc i32 %18 to i8
  store i8 %19, i8* %3, align 1
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %22 = load i32, i32* @MD0, align 4
  %23 = load i8, i8* %3, align 1
  %24 = call i32 @write_reg(%struct.TYPE_13__* %21, i32 %22, i8 zeroext %23)
  store i8 64, i8* %3, align 1
  %25 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %26 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %25, i32 0, i32 5
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  switch i32 %28, label %65 [
    i32 7, label %29
    i32 6, label %39
    i32 5, label %49
  ]

29:                                               ; preds = %20
  %30 = load i8, i8* @BIT4, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* @BIT2, align 1
  %33 = zext i8 %32 to i32
  %34 = add nsw i32 %31, %33
  %35 = load i8, i8* %3, align 1
  %36 = zext i8 %35 to i32
  %37 = or i32 %36, %34
  %38 = trunc i32 %37 to i8
  store i8 %38, i8* %3, align 1
  br label %65

39:                                               ; preds = %20
  %40 = load i8, i8* @BIT5, align 1
  %41 = zext i8 %40 to i32
  %42 = load i8, i8* @BIT3, align 1
  %43 = zext i8 %42 to i32
  %44 = add nsw i32 %41, %43
  %45 = load i8, i8* %3, align 1
  %46 = zext i8 %45 to i32
  %47 = or i32 %46, %44
  %48 = trunc i32 %47 to i8
  store i8 %48, i8* %3, align 1
  br label %65

49:                                               ; preds = %20
  %50 = load i8, i8* @BIT5, align 1
  %51 = zext i8 %50 to i32
  %52 = load i8, i8* @BIT4, align 1
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %51, %53
  %55 = load i8, i8* @BIT3, align 1
  %56 = zext i8 %55 to i32
  %57 = add nsw i32 %54, %56
  %58 = load i8, i8* @BIT2, align 1
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %57, %59
  %61 = load i8, i8* %3, align 1
  %62 = zext i8 %61 to i32
  %63 = or i32 %62, %60
  %64 = trunc i32 %63 to i8
  store i8 %64, i8* %3, align 1
  br label %65

65:                                               ; preds = %20, %49, %39, %29
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 5
  %68 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %67, i32 0, i32 2
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* @ASYNC_PARITY_NONE, align 8
  %71 = icmp ne i64 %69, %70
  br i1 %71, label %72, label %93

72:                                               ; preds = %65
  %73 = load i8, i8* @BIT1, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %3, align 1
  %76 = zext i8 %75 to i32
  %77 = or i32 %76, %74
  %78 = trunc i32 %77 to i8
  store i8 %78, i8* %3, align 1
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 5
  %81 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %80, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @ASYNC_PARITY_ODD, align 8
  %84 = icmp eq i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %72
  %86 = load i8, i8* @BIT0, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %3, align 1
  br label %92

92:                                               ; preds = %85, %72
  br label %93

93:                                               ; preds = %92, %65
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %95 = load i32, i32* @MD1, align 4
  %96 = load i8, i8* %3, align 1
  %97 = call i32 @write_reg(%struct.TYPE_13__* %94, i32 %95, i8 zeroext %96)
  store i8 0, i8* %3, align 1
  %98 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %99 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %98, i32 0, i32 5
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %113

103:                                              ; preds = %93
  %104 = load i8, i8* @BIT1, align 1
  %105 = zext i8 %104 to i32
  %106 = load i8, i8* @BIT0, align 1
  %107 = zext i8 %106 to i32
  %108 = add nsw i32 %105, %107
  %109 = load i8, i8* %3, align 1
  %110 = zext i8 %109 to i32
  %111 = or i32 %110, %108
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %3, align 1
  br label %113

113:                                              ; preds = %103, %93
  %114 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %115 = load i32, i32* @MD2, align 4
  %116 = load i8, i8* %3, align 1
  %117 = call i32 @write_reg(%struct.TYPE_13__* %114, i32 %115, i8 zeroext %116)
  %118 = load i8, i8* @BIT6, align 1
  store i8 %118, i8* %3, align 1
  %119 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %120 = load i32, i32* @RXS, align 4
  %121 = load i8, i8* %3, align 1
  %122 = call i32 @write_reg(%struct.TYPE_13__* %119, i32 %120, i8 zeroext %121)
  %123 = load i8, i8* @BIT6, align 1
  store i8 %123, i8* %3, align 1
  %124 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %125 = load i32, i32* @TXS, align 4
  %126 = load i8, i8* %3, align 1
  %127 = call i32 @write_reg(%struct.TYPE_13__* %124, i32 %125, i8 zeroext %126)
  %128 = load i8, i8* @BIT0, align 1
  %129 = zext i8 %128 to i32
  %130 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %131 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = mul nsw i32 %132, 2
  %134 = shl i32 %129, %133
  %135 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %136 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %135, i32 0, i32 6
  %137 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %136, align 8
  %138 = getelementptr inbounds %struct.TYPE_11__*, %struct.TYPE_11__** %137, i64 0
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  %141 = load i8, i8* %140, align 1
  %142 = zext i8 %141 to i32
  %143 = or i32 %142, %134
  %144 = trunc i32 %143 to i8
  store i8 %144, i8* %140, align 1
  %145 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %146 = call i32 @write_control_reg(%struct.TYPE_13__* %145)
  %147 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %148 = call i32 @tx_set_idle(%struct.TYPE_13__* %147)
  %149 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %150 = load i32, i32* @RRC, align 4
  %151 = call i32 @write_reg(%struct.TYPE_13__* %149, i32 %150, i8 zeroext 0)
  %152 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %153 = load i32, i32* @TRC0, align 4
  %154 = call i32 @write_reg(%struct.TYPE_13__* %152, i32 %153, i8 zeroext 16)
  %155 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %156 = load i32, i32* @TRC1, align 4
  %157 = call i32 @write_reg(%struct.TYPE_13__* %155, i32 %156, i8 zeroext 30)
  store i8 16, i8* %3, align 1
  %158 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @SerialSignal_RTS, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %169, label %164

164:                                              ; preds = %113
  %165 = load i8, i8* %3, align 1
  %166 = zext i8 %165 to i32
  %167 = or i32 %166, 1
  %168 = trunc i32 %167 to i8
  store i8 %168, i8* %3, align 1
  br label %169

169:                                              ; preds = %164, %113
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %171 = load i32, i32* @CTL, align 4
  %172 = load i8, i8* %3, align 1
  %173 = call i32 @write_reg(%struct.TYPE_13__* %170, i32 %171, i8 zeroext %172)
  %174 = load i8, i8* @TXINTE, align 1
  %175 = zext i8 %174 to i32
  %176 = load i8, i8* @RXINTE, align 1
  %177 = zext i8 %176 to i32
  %178 = add nsw i32 %175, %177
  %179 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 2
  %181 = load i8, i8* %180, align 8
  %182 = zext i8 %181 to i32
  %183 = or i32 %182, %178
  %184 = trunc i32 %183 to i8
  store i8 %184, i8* %180, align 8
  %185 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %186 = load i32, i32* @IE0, align 4
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 2
  %189 = load i8, i8* %188, align 8
  %190 = call i32 @write_reg(%struct.TYPE_13__* %185, i32 %186, i8 zeroext %189)
  %191 = load i8, i8* @BRKD, align 1
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 3
  store i8 %191, i8* %193, align 1
  %194 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %195 = load i32, i32* @IE1, align 4
  %196 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %197 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %196, i32 0, i32 3
  %198 = load i8, i8* %197, align 1
  %199 = call i32 @write_reg(%struct.TYPE_13__* %194, i32 %195, i8 zeroext %198)
  %200 = load i8, i8* @OVRN, align 1
  %201 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %202 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %201, i32 0, i32 4
  store i8 %200, i8* %202, align 2
  %203 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %204 = load i32, i32* @IE2, align 4
  %205 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %206 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %205, i32 0, i32 4
  %207 = load i8, i8* %206, align 2
  %208 = call i32 @write_reg(%struct.TYPE_13__* %203, i32 %204, i8 zeroext %207)
  %209 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %210 = load %struct.TYPE_13__*, %struct.TYPE_13__** %2, align 8
  %211 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %210, i32 0, i32 5
  %212 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %211, i32 0, i32 3
  %213 = load i32, i32* %212, align 8
  %214 = mul nsw i32 %213, 16
  %215 = call i32 @set_rate(%struct.TYPE_13__* %209, i32 %214)
  ret void
}

declare dso_local i32 @tx_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @rx_stop(%struct.TYPE_13__*) #1

declare dso_local i32 @write_reg(%struct.TYPE_13__*, i32, i8 zeroext) #1

declare dso_local i32 @write_control_reg(%struct.TYPE_13__*) #1

declare dso_local i32 @tx_set_idle(%struct.TYPE_13__*) #1

declare dso_local i32 @set_rate(%struct.TYPE_13__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
