; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_make_raw_data_56k.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_make_raw_data_56k.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_7__, %struct.TYPE_5__*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i64, i32* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"tiger make_raw_56k: NULL skb\00", align 1
@HDLC_FLAG_VALUE = common dso_local global i32 0, align 4
@PPP_INITFCS = common dso_local global i64 0, align 8
@MAKE_RAW_BYTE_56K = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"tiger make_raw_56k: in %ld out %d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BCState*)* @make_raw_data_56k to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_raw_data_56k(%struct.BCState* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.BCState*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.BCState* %0, %struct.BCState** %3, align 8
  store i64 0, i64* %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load %struct.BCState*, %struct.BCState** %3, align 8
  %13 = getelementptr inbounds %struct.BCState, %struct.BCState* %12, i32 0, i32 1
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %13, align 8
  %15 = icmp ne %struct.TYPE_5__* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.BCState*, %struct.BCState** %3, align 8
  %18 = getelementptr inbounds %struct.BCState, %struct.BCState* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = call i32 (%struct.TYPE_8__*, i8*, ...) @debugl1(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %220

21:                                               ; preds = %1
  %22 = load i32, i32* @HDLC_FLAG_VALUE, align 4
  store i32 %22, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %23

23:                                               ; preds = %60, %21
  %24 = load i32, i32* %6, align 4
  %25 = icmp slt i32 %24, 8
  br i1 %25, label %26, label %63

26:                                               ; preds = %23
  %27 = load i32, i32* %10, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %10, align 4
  %29 = load i32, i32* %9, align 4
  %30 = ashr i32 %29, 1
  store i32 %30, i32* %9, align 4
  %31 = load i32, i32* %7, align 4
  %32 = and i32 %31, 1
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load i32, i32* %9, align 4
  %36 = or i32 %35, 128
  store i32 %36, i32* %9, align 4
  br label %40

37:                                               ; preds = %26
  %38 = load i32, i32* %9, align 4
  %39 = and i32 %38, 127
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %37, %34
  %41 = load i32, i32* %10, align 4
  %42 = icmp eq i32 %41, 7
  br i1 %42, label %43, label %57

43:                                               ; preds = %40
  %44 = load i32, i32* %9, align 4
  %45 = ashr i32 %44, 1
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = or i32 %46, 128
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = load %struct.BCState*, %struct.BCState** %3, align 8
  %50 = getelementptr inbounds %struct.BCState, %struct.BCState* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* %5, align 8
  %55 = add i64 %54, 1
  store i64 %55, i64* %5, align 8
  %56 = getelementptr inbounds i32, i32* %53, i64 %54
  store i32 %48, i32* %56, align 4
  store i32 0, i32* %10, align 4
  br label %57

57:                                               ; preds = %43, %40
  %58 = load i32, i32* %7, align 4
  %59 = ashr i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %6, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %6, align 4
  br label %23

63:                                               ; preds = %23
  %64 = load i64, i64* @PPP_INITFCS, align 8
  store i64 %64, i64* %11, align 8
  store i64 0, i64* %4, align 8
  br label %65

65:                                               ; preds = %86, %63
  %66 = load i64, i64* %4, align 8
  %67 = load %struct.BCState*, %struct.BCState** %3, align 8
  %68 = getelementptr inbounds %struct.BCState, %struct.BCState* %67, i32 0, i32 1
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %68, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %66, %71
  br i1 %72, label %73, label %89

73:                                               ; preds = %65
  %74 = load %struct.BCState*, %struct.BCState** %3, align 8
  %75 = getelementptr inbounds %struct.BCState, %struct.BCState* %74, i32 0, i32 1
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i64, i64* %4, align 8
  %80 = getelementptr inbounds i32, i32* %78, i64 %79
  %81 = load i32, i32* %80, align 4
  store i32 %81, i32* %7, align 4
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %7, align 4
  %84 = call i64 @PPP_FCS(i64 %82, i32 %83)
  store i64 %84, i64* %11, align 8
  %85 = load i32, i32* @MAKE_RAW_BYTE_56K, align 4
  br label %86

86:                                               ; preds = %73
  %87 = load i64, i64* %4, align 8
  %88 = add i64 %87, 1
  store i64 %88, i64* %4, align 8
  br label %65

89:                                               ; preds = %65
  %90 = load i64, i64* %11, align 8
  %91 = xor i64 %90, 65535
  store i64 %91, i64* %11, align 8
  %92 = load i64, i64* %11, align 8
  %93 = and i64 %92, 255
  %94 = trunc i64 %93 to i32
  store i32 %94, i32* %7, align 4
  %95 = load i32, i32* @MAKE_RAW_BYTE_56K, align 4
  %96 = load i64, i64* %11, align 8
  %97 = lshr i64 %96, 8
  %98 = and i64 %97, 255
  %99 = trunc i64 %98 to i32
  store i32 %99, i32* %7, align 4
  %100 = load i32, i32* @MAKE_RAW_BYTE_56K, align 4
  %101 = load i32, i32* @HDLC_FLAG_VALUE, align 4
  store i32 %101, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %102

102:                                              ; preds = %139, %89
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %103, 8
  br i1 %104, label %105, label %142

105:                                              ; preds = %102
  %106 = load i32, i32* %10, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %10, align 4
  %108 = load i32, i32* %9, align 4
  %109 = ashr i32 %108, 1
  store i32 %109, i32* %9, align 4
  %110 = load i32, i32* %7, align 4
  %111 = and i32 %110, 1
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %105
  %114 = load i32, i32* %9, align 4
  %115 = or i32 %114, 128
  store i32 %115, i32* %9, align 4
  br label %119

116:                                              ; preds = %105
  %117 = load i32, i32* %9, align 4
  %118 = and i32 %117, 127
  store i32 %118, i32* %9, align 4
  br label %119

119:                                              ; preds = %116, %113
  %120 = load i32, i32* %10, align 4
  %121 = icmp eq i32 %120, 7
  br i1 %121, label %122, label %136

122:                                              ; preds = %119
  %123 = load i32, i32* %9, align 4
  %124 = ashr i32 %123, 1
  store i32 %124, i32* %9, align 4
  %125 = load i32, i32* %9, align 4
  %126 = or i32 %125, 128
  store i32 %126, i32* %9, align 4
  %127 = load i32, i32* %9, align 4
  %128 = load %struct.BCState*, %struct.BCState** %3, align 8
  %129 = getelementptr inbounds %struct.BCState, %struct.BCState* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %130, i32 0, i32 0
  %132 = load i32*, i32** %131, align 8
  %133 = load i64, i64* %5, align 8
  %134 = add i64 %133, 1
  store i64 %134, i64* %5, align 8
  %135 = getelementptr inbounds i32, i32* %132, i64 %133
  store i32 %127, i32* %135, align 4
  store i32 0, i32* %10, align 4
  br label %136

136:                                              ; preds = %122, %119
  %137 = load i32, i32* %7, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %7, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %6, align 4
  br label %102

142:                                              ; preds = %102
  %143 = load %struct.BCState*, %struct.BCState** %3, align 8
  %144 = getelementptr inbounds %struct.BCState, %struct.BCState* %143, i32 0, i32 3
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @L1_DEB_HSCX, align 4
  %149 = and i32 %147, %148
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %151, label %163

151:                                              ; preds = %142
  %152 = load %struct.BCState*, %struct.BCState** %3, align 8
  %153 = getelementptr inbounds %struct.BCState, %struct.BCState* %152, i32 0, i32 3
  %154 = load %struct.TYPE_8__*, %struct.TYPE_8__** %153, align 8
  %155 = load %struct.BCState*, %struct.BCState** %3, align 8
  %156 = getelementptr inbounds %struct.BCState, %struct.BCState* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %5, align 8
  %161 = load i32, i32* %10, align 4
  %162 = call i32 (%struct.TYPE_8__*, i8*, ...) @debugl1(%struct.TYPE_8__* %154, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i64 %159, i64 %160, i32 %161)
  br label %163

163:                                              ; preds = %151, %142
  %164 = load i32, i32* %10, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %194

166:                                              ; preds = %163
  br label %167

167:                                              ; preds = %171, %166
  %168 = load i32, i32* %10, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %10, align 4
  %170 = icmp sgt i32 8, %168
  br i1 %170, label %171, label %176

171:                                              ; preds = %167
  %172 = load i32, i32* %9, align 4
  %173 = ashr i32 %172, 1
  store i32 %173, i32* %9, align 4
  %174 = load i32, i32* %9, align 4
  %175 = or i32 %174, 128
  store i32 %175, i32* %9, align 4
  br label %167

176:                                              ; preds = %167
  %177 = load i32, i32* %9, align 4
  %178 = load %struct.BCState*, %struct.BCState** %3, align 8
  %179 = getelementptr inbounds %struct.BCState, %struct.BCState* %178, i32 0, i32 0
  %180 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %180, i32 0, i32 0
  %182 = load i32*, i32** %181, align 8
  %183 = load i64, i64* %5, align 8
  %184 = add i64 %183, 1
  store i64 %184, i64* %5, align 8
  %185 = getelementptr inbounds i32, i32* %182, i64 %183
  store i32 %177, i32* %185, align 4
  %186 = load %struct.BCState*, %struct.BCState** %3, align 8
  %187 = getelementptr inbounds %struct.BCState, %struct.BCState* %186, i32 0, i32 0
  %188 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i64, i64* %5, align 8
  %192 = add i64 %191, 1
  store i64 %192, i64* %5, align 8
  %193 = getelementptr inbounds i32, i32* %190, i64 %191
  store i32 255, i32* %193, align 4
  br label %194

194:                                              ; preds = %176, %163
  %195 = load i64, i64* %5, align 8
  %196 = load %struct.BCState*, %struct.BCState** %3, align 8
  %197 = getelementptr inbounds %struct.BCState, %struct.BCState* %196, i32 0, i32 0
  %198 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %197, i32 0, i32 0
  %199 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i32 0, i32 1
  store i64 %195, i64* %199, align 8
  %200 = load %struct.BCState*, %struct.BCState** %3, align 8
  %201 = getelementptr inbounds %struct.BCState, %struct.BCState* %200, i32 0, i32 1
  %202 = load %struct.TYPE_5__*, %struct.TYPE_5__** %201, align 8
  %203 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %202, i32 0, i32 0
  %204 = load i64, i64* %203, align 8
  %205 = load %struct.BCState*, %struct.BCState** %3, align 8
  %206 = getelementptr inbounds %struct.BCState, %struct.BCState* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = sext i32 %207 to i64
  %209 = sub i64 %208, %204
  %210 = trunc i64 %209 to i32
  store i32 %210, i32* %206, align 8
  %211 = load %struct.BCState*, %struct.BCState** %3, align 8
  %212 = getelementptr inbounds %struct.BCState, %struct.BCState* %211, i32 0, i32 0
  %213 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %213, i32 0, i32 0
  %215 = load i32*, i32** %214, align 8
  %216 = load %struct.BCState*, %struct.BCState** %3, align 8
  %217 = getelementptr inbounds %struct.BCState, %struct.BCState* %216, i32 0, i32 0
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %218, i32 0, i32 2
  store i32* %215, i32** %219, align 8
  store i32 0, i32* %2, align 4
  br label %220

220:                                              ; preds = %194, %16
  %221 = load i32, i32* %2, align 4
  ret i32 %221
}

declare dso_local i32 @debugl1(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @PPP_FCS(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
