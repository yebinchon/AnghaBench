; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_Memhscx_int_main.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_diva.c_Memhscx_int_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.IsdnCardState = type { i32, %struct.BCState* }
%struct.BCState = type { i32, %struct.TYPE_4__, i32, i64 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i64 }

@HSCX_EXIR = common dso_local global i32 0, align 4
@L1_DEB_WARN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"HSCX B EXIR %x Lost TX\00", align 1
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [15 x i8] c"HSCX B EXIR %x\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"HSCX B interrupt %x\00", align 1
@L1_MODE_TRANS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [23 x i8] c"HSCX A EXIR %x Lost TX\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"HSCX A EXIR %x\00", align 1
@HSCX_ISTA = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [20 x i8] c"HSCX A interrupt %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.IsdnCardState*, i32)* @Memhscx_int_main to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Memhscx_int_main(%struct.IsdnCardState* %0, i32 %1) #0 {
  %3 = alloca %struct.IsdnCardState*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.BCState*, align 8
  store %struct.IsdnCardState* %0, %struct.IsdnCardState** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = and i32 %7, 1
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %92

10:                                               ; preds = %2
  %11 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %12 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %11, i32 0, i32 1
  %13 = load %struct.BCState*, %struct.BCState** %12, align 8
  %14 = getelementptr inbounds %struct.BCState, %struct.BCState* %13, i64 1
  store %struct.BCState* %14, %struct.BCState** %6, align 8
  %15 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %16 = load i32, i32* @HSCX_EXIR, align 4
  %17 = call i32 @MemReadHSCX(%struct.IsdnCardState* %15, i32 1, i32 %16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = and i32 %18, 64
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %79

21:                                               ; preds = %10
  %22 = load %struct.BCState*, %struct.BCState** %6, align 8
  %23 = getelementptr inbounds %struct.BCState, %struct.BCState* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load %struct.BCState*, %struct.BCState** %6, align 8
  %28 = call i32 @Memhscx_fill_fifo(%struct.BCState* %27)
  br label %78

29:                                               ; preds = %21
  %30 = load %struct.BCState*, %struct.BCState** %6, align 8
  %31 = getelementptr inbounds %struct.BCState, %struct.BCState* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %59

34:                                               ; preds = %29
  %35 = load %struct.BCState*, %struct.BCState** %6, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.BCState*, %struct.BCState** %6, align 8
  %39 = getelementptr inbounds %struct.BCState, %struct.BCState* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = call i32 @skb_push(i64 %37, i64 %42)
  %44 = load %struct.BCState*, %struct.BCState** %6, align 8
  %45 = getelementptr inbounds %struct.BCState, %struct.BCState* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.BCState*, %struct.BCState** %6, align 8
  %50 = getelementptr inbounds %struct.BCState, %struct.BCState* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %48
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %50, align 8
  %55 = load %struct.BCState*, %struct.BCState** %6, align 8
  %56 = getelementptr inbounds %struct.BCState, %struct.BCState* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 1
  store i64 0, i64* %58, align 8
  br label %59

59:                                               ; preds = %34, %29
  %60 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %61 = load %struct.BCState*, %struct.BCState** %6, align 8
  %62 = getelementptr inbounds %struct.BCState, %struct.BCState* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @MemWriteHSCXCMDR(%struct.IsdnCardState* %60, i32 %65, i32 1)
  %67 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %68 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @L1_DEB_WARN, align 4
  %71 = and i32 %69, %70
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %59
  %74 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @debugl1(%struct.IsdnCardState* %74, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %75)
  br label %77

77:                                               ; preds = %73, %59
  br label %78

78:                                               ; preds = %77, %26
  br label %91

79:                                               ; preds = %10
  %80 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %81 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @L1_DEB_HSCX, align 4
  %84 = and i32 %82, %83
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @debugl1(%struct.IsdnCardState* %87, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0), i32 %88)
  br label %90

90:                                               ; preds = %86, %79
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91, %2
  %93 = load i32, i32* %4, align 4
  %94 = and i32 %93, 248
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %111

96:                                               ; preds = %92
  %97 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %98 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = load i32, i32* @L1_DEB_HSCX, align 4
  %101 = and i32 %99, %100
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %107

103:                                              ; preds = %96
  %104 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %105 = load i32, i32* %4, align 4
  %106 = call i32 @debugl1(%struct.IsdnCardState* %104, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32 %105)
  br label %107

107:                                              ; preds = %103, %96
  %108 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @Memhscx_interrupt(%struct.IsdnCardState* %108, i32 %109, i32 1)
  br label %111

111:                                              ; preds = %107, %92
  %112 = load i32, i32* %4, align 4
  %113 = and i32 %112, 2
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %115, label %198

115:                                              ; preds = %111
  %116 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %117 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %116, i32 0, i32 1
  %118 = load %struct.BCState*, %struct.BCState** %117, align 8
  store %struct.BCState* %118, %struct.BCState** %6, align 8
  %119 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %120 = load i32, i32* @HSCX_EXIR, align 4
  %121 = call i32 @MemReadHSCX(%struct.IsdnCardState* %119, i32 0, i32 %120)
  store i32 %121, i32* %5, align 4
  %122 = load i32, i32* %5, align 4
  %123 = and i32 %122, 64
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %185

125:                                              ; preds = %115
  %126 = load %struct.BCState*, %struct.BCState** %6, align 8
  %127 = getelementptr inbounds %struct.BCState, %struct.BCState* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = sext i32 %128 to i64
  %130 = load i64, i64* @L1_MODE_TRANS, align 8
  %131 = icmp eq i64 %129, %130
  br i1 %131, label %132, label %135

132:                                              ; preds = %125
  %133 = load %struct.BCState*, %struct.BCState** %6, align 8
  %134 = call i32 @Memhscx_fill_fifo(%struct.BCState* %133)
  br label %184

135:                                              ; preds = %125
  %136 = load %struct.BCState*, %struct.BCState** %6, align 8
  %137 = getelementptr inbounds %struct.BCState, %struct.BCState* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp ne i64 %138, 0
  br i1 %139, label %140, label %165

140:                                              ; preds = %135
  %141 = load %struct.BCState*, %struct.BCState** %6, align 8
  %142 = getelementptr inbounds %struct.BCState, %struct.BCState* %141, i32 0, i32 3
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.BCState*, %struct.BCState** %6, align 8
  %145 = getelementptr inbounds %struct.BCState, %struct.BCState* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 1
  %148 = load i64, i64* %147, align 8
  %149 = call i32 @skb_push(i64 %143, i64 %148)
  %150 = load %struct.BCState*, %struct.BCState** %6, align 8
  %151 = getelementptr inbounds %struct.BCState, %struct.BCState* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load %struct.BCState*, %struct.BCState** %6, align 8
  %156 = getelementptr inbounds %struct.BCState, %struct.BCState* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = sext i32 %157 to i64
  %159 = add nsw i64 %158, %154
  %160 = trunc i64 %159 to i32
  store i32 %160, i32* %156, align 8
  %161 = load %struct.BCState*, %struct.BCState** %6, align 8
  %162 = getelementptr inbounds %struct.BCState, %struct.BCState* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %163, i32 0, i32 1
  store i64 0, i64* %164, align 8
  br label %165

165:                                              ; preds = %140, %135
  %166 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %167 = load %struct.BCState*, %struct.BCState** %6, align 8
  %168 = getelementptr inbounds %struct.BCState, %struct.BCState* %167, i32 0, i32 1
  %169 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @MemWriteHSCXCMDR(%struct.IsdnCardState* %166, i32 %171, i32 1)
  %173 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %174 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %173, i32 0, i32 0
  %175 = load i32, i32* %174, align 8
  %176 = load i32, i32* @L1_DEB_WARN, align 4
  %177 = and i32 %175, %176
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %183

179:                                              ; preds = %165
  %180 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @debugl1(%struct.IsdnCardState* %180, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0), i32 %181)
  br label %183

183:                                              ; preds = %179, %165
  br label %184

184:                                              ; preds = %183, %132
  br label %197

185:                                              ; preds = %115
  %186 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %187 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @L1_DEB_HSCX, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %196

192:                                              ; preds = %185
  %193 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %194 = load i32, i32* %5, align 4
  %195 = call i32 @debugl1(%struct.IsdnCardState* %193, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 %194)
  br label %196

196:                                              ; preds = %192, %185
  br label %197

197:                                              ; preds = %196, %184
  br label %198

198:                                              ; preds = %197, %111
  %199 = load i32, i32* %4, align 4
  %200 = and i32 %199, 4
  %201 = icmp ne i32 %200, 0
  br i1 %201, label %202, label %220

202:                                              ; preds = %198
  %203 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %204 = load i32, i32* @HSCX_ISTA, align 4
  %205 = call i32 @MemReadHSCX(%struct.IsdnCardState* %203, i32 0, i32 %204)
  store i32 %205, i32* %5, align 4
  %206 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %207 = getelementptr inbounds %struct.IsdnCardState, %struct.IsdnCardState* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 8
  %209 = load i32, i32* @L1_DEB_HSCX, align 4
  %210 = and i32 %208, %209
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %212, label %216

212:                                              ; preds = %202
  %213 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %214 = load i32, i32* %5, align 4
  %215 = call i32 @debugl1(%struct.IsdnCardState* %213, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0), i32 %214)
  br label %216

216:                                              ; preds = %212, %202
  %217 = load %struct.IsdnCardState*, %struct.IsdnCardState** %3, align 8
  %218 = load i32, i32* %5, align 4
  %219 = call i32 @Memhscx_interrupt(%struct.IsdnCardState* %217, i32 %218, i32 0)
  br label %220

220:                                              ; preds = %216, %198
  ret void
}

declare dso_local i32 @MemReadHSCX(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @Memhscx_fill_fifo(%struct.BCState*) #1

declare dso_local i32 @skb_push(i64, i64) #1

declare dso_local i32 @MemWriteHSCXCMDR(%struct.IsdnCardState*, i32, i32) #1

declare dso_local i32 @debugl1(%struct.IsdnCardState*, i8*, i32) #1

declare dso_local i32 @Memhscx_interrupt(%struct.IsdnCardState*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
