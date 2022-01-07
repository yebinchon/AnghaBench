; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_fill_Dfifo.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_amd7930_fn.c_Amd7930_fill_Dfifo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, i64, i8*, %struct.TYPE_10__, i32, %struct.TYPE_8__, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_9__ = type { i64, i32* }

@L1_DEB_ISAC = common dso_local global i32 0, align 4
@L1_DEB_ISAC_FIFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Amd7930: fill_Dfifo\00", align 1
@.str.1 = private unnamed_addr constant [74 x i8] c"Amd7930: fill_Dfifo, DMR3: 0x%02X, DTCR read: 0x%04X write: 0x%02X 0x%02X\00", align 1
@FLG_DBUSY_TIMER = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Amd7930: fill_Dfifo dbusytimer running\00", align 1
@jiffies = common dso_local global i64 0, align 8
@DBUSY_TIMER_VALUE = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [30 x i8] c"Amd7930: fill_Dfifo cnt: %d |\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*)* @Amd7930_fill_Dfifo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Amd7930_fill_Dfifo(%struct.IsdnCardState* %0) #0 {
  %2 = alloca %struct.IsdnCardState*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i8*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %2, align 8
  %12 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %13 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* @L1_DEB_ISAC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %1
  %19 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %20 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %18
  %26 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %27 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %26, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %28

28:                                               ; preds = %25, %18, %1
  %29 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %30 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %29, i32 0, i32 6
  %31 = load %struct.TYPE_9__*, %struct.TYPE_9__** %30, align 8
  %32 = icmp ne %struct.TYPE_9__* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %28
  %34 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %35 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %34, i32 0, i32 6
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp sle i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33, %28
  br label %201

41:                                               ; preds = %33
  store i64 0, i64* %4, align 8
  %42 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %43 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %42, i32 0, i32 5
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %41
  %49 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %50 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %49, i32 0, i32 6
  %51 = load %struct.TYPE_9__*, %struct.TYPE_9__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %4, align 8
  store i64 %53, i64* %5, align 8
  br label %60

54:                                               ; preds = %41
  %55 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %56 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %55, i32 0, i32 5
  %57 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  store i64 %59, i64* %5, align 8
  br label %60

60:                                               ; preds = %54, %48
  %61 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %62 = call i32 @AmdIrqOff(%struct.IsdnCardState* %61)
  %63 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %64 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %63, i32 0, i32 6
  %65 = load %struct.TYPE_9__*, %struct.TYPE_9__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 1
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %9, align 8
  store i32* %67, i32** %10, align 8
  store i32 16, i32* %7, align 4
  br label %68

68:                                               ; preds = %80, %60
  %69 = load i32, i32* %7, align 4
  %70 = and i32 %69, 16
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %68
  %73 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %74 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i64, i64* %5, align 8
  %77 = icmp slt i64 %75, %76
  br label %78

78:                                               ; preds = %72, %68
  %79 = phi i1 [ false, %68 ], [ %77, %72 ]
  br i1 %79, label %80, label %93

80:                                               ; preds = %78
  %81 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %82 = load i32*, i32** %9, align 8
  %83 = load i32, i32* %82, align 4
  %84 = call i32 @wByteAMD(%struct.IsdnCardState* %81, i32 4, i32 %83)
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds i32, i32* %85, i32 1
  store i32* %86, i32** %9, align 8
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %88 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, 1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %92 = call i32 @rByteAMD(%struct.IsdnCardState* %91, i32 7)
  store i32 %92, i32* %7, align 4
  br label %68

93:                                               ; preds = %78
  %94 = load i32*, i32** %9, align 8
  %95 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %96 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %95, i32 0, i32 6
  %97 = load %struct.TYPE_9__*, %struct.TYPE_9__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %97, i32 0, i32 1
  %99 = load i32*, i32** %98, align 8
  %100 = ptrtoint i32* %94 to i64
  %101 = ptrtoint i32* %99 to i64
  %102 = sub i64 %100, %101
  %103 = sdiv exact i64 %102, 4
  store i64 %103, i64* %6, align 8
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %105 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %104, i32 0, i32 6
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %105, align 8
  %107 = load i64, i64* %6, align 8
  %108 = call i32 @skb_pull(%struct.TYPE_9__* %106, i64 %107)
  %109 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %110 = call i64 @rWordAMD(%struct.IsdnCardState* %109, i32 133)
  store i64 %110, i64* %3, align 8
  %111 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %112 = call i32 @rByteAMD(%struct.IsdnCardState* %111, i32 142)
  store i32 %112, i32* %8, align 4
  %113 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %114 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @L1_DEB_ISAC, align 4
  %117 = and i32 %115, %116
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %128

119:                                              ; preds = %93
  %120 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %121 = load i32, i32* %8, align 4
  %122 = load i64, i64* %3, align 8
  %123 = load i64, i64* %4, align 8
  %124 = call i32 @LOBYTE(i64 %123)
  %125 = load i64, i64* %4, align 8
  %126 = call i32 @HIBYTE(i64 %125)
  %127 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %120, i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.1, i64 0, i64 0), i32 %121, i64 %122, i32 %124, i32 %126)
  br label %128

128:                                              ; preds = %119, %93
  %129 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %130 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %129, i32 0, i32 5
  %131 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %130, i32 0, i32 0
  %132 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %144, label %135

135:                                              ; preds = %128
  %136 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %137 = load i64, i64* %4, align 8
  %138 = call i32 @wWordAMD(%struct.IsdnCardState* %136, i32 133, i64 %137)
  %139 = load i64, i64* %4, align 8
  %140 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %141 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %140, i32 0, i32 5
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  %143 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %142, i32 0, i32 0
  store i64 %139, i64* %143, align 8
  br label %144

144:                                              ; preds = %135, %128
  %145 = load i32, i32* @FLG_DBUSY_TIMER, align 4
  %146 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %147 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %146, i32 0, i32 4
  %148 = call i64 @test_and_set_bit(i32 %145, i32* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %156

150:                                              ; preds = %144
  %151 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %152 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %151, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  %153 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %154 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %153, i32 0, i32 3
  %155 = call i32 @del_timer(%struct.TYPE_10__* %154)
  br label %156

156:                                              ; preds = %150, %144
  %157 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %158 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %157, i32 0, i32 3
  %159 = call i32 @init_timer(%struct.TYPE_10__* %158)
  %160 = load i64, i64* @jiffies, align 8
  %161 = load i32, i32* @DBUSY_TIMER_VALUE, align 4
  %162 = load i32, i32* @HZ, align 4
  %163 = mul nsw i32 %161, %162
  %164 = sdiv i32 %163, 1000
  %165 = sext i32 %164 to i64
  %166 = add nsw i64 %160, %165
  %167 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %168 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %167, i32 0, i32 3
  %169 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %168, i32 0, i32 0
  store i64 %166, i64* %169, align 8
  %170 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %171 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %170, i32 0, i32 3
  %172 = call i32 @add_timer(%struct.TYPE_10__* %171)
  %173 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %174 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @L1_DEB_ISAC_FIFO, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %198

179:                                              ; preds = %156
  %180 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %181 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %180, i32 0, i32 2
  %182 = load i8*, i8** %181, align 8
  store i8* %182, i8** %11, align 8
  %183 = load i8*, i8** %11, align 8
  %184 = load i64, i64* %6, align 8
  %185 = call i32 @sprintf(i8* %183, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i64 %184)
  %186 = load i8*, i8** %11, align 8
  %187 = sext i32 %185 to i64
  %188 = getelementptr inbounds i8, i8* %186, i64 %187
  store i8* %188, i8** %11, align 8
  %189 = load i8*, i8** %11, align 8
  %190 = load i32*, i32** %10, align 8
  %191 = load i64, i64* %6, align 8
  %192 = call i32 @QuickHex(i8* %189, i32* %190, i64 %191)
  %193 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %194 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %195 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %194, i32 0, i32 2
  %196 = load i8*, i8** %195, align 8
  %197 = call i32 (%struct.IsdnCardState*, i8*, ...) @debugl1(%struct.IsdnCardState* %193, i8* %196)
  br label %198

198:                                              ; preds = %179, %156
  %199 = load %struct.IsdnCardState*, %struct.IsdnCardState** %2, align 8
  %200 = call i32 @AmdIrqOn(%struct.IsdnCardState* %199)
  br label %201

201:                                              ; preds = %198, %40
  ret void
}

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, ...) #1

declare dso_local i32 @AmdIrqOff(%struct.IsdnCardState*) #1

declare dso_local i32 @wByteAMD(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @rByteAMD(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @skb_pull(%struct.TYPE_9__*, i64) #1

declare dso_local i64 @rWordAMD(%struct.IsdnCardState*, i32) #1

declare dso_local i32 @LOBYTE(i64) #1

declare dso_local i32 @HIBYTE(i64) #1

declare dso_local i32 @wWordAMD(%struct.IsdnCardState*, i32, i64) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @del_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @init_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_10__*) #1

declare dso_local i32 @sprintf(i8*, i8*, i64) #1

declare dso_local i32 @QuickHex(i8*, i32*, i64) #1

declare dso_local i32 @AmdIrqOn(%struct.IsdnCardState*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
