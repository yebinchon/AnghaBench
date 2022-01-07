; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_make_raw_data.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hisax/extr_netjet.c_make_raw_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.BCState = type { %struct.TYPE_7__, %struct.TYPE_5__*, i32, %struct.TYPE_8__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32*, i64, i32* }
%struct.TYPE_5__ = type { i64, i32* }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"tiger make_raw: NULL skb\00", align 1
@HDLC_FLAG_VALUE = common dso_local global i8* null, align 8
@PPP_INITFCS = common dso_local global i64 0, align 8
@MAKE_RAW_BYTE = common dso_local global i32 0, align 4
@L1_DEB_HSCX = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [33 x i8] c"tiger make_raw: in %ld out %d.%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.BCState*)* @make_raw_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @make_raw_data(%struct.BCState* %0) #0 {
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
  %20 = call i32 (%struct.TYPE_8__*, i8*, ...) @debugl1(%struct.TYPE_8__* %19, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store i32 1, i32* %2, align 4
  br label %185

21:                                               ; preds = %1
  %22 = load i8*, i8** @HDLC_FLAG_VALUE, align 8
  %23 = ptrtoint i8* %22 to i32
  %24 = load %struct.BCState*, %struct.BCState** %3, align 8
  %25 = getelementptr inbounds %struct.BCState, %struct.BCState* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* %5, align 8
  %30 = add i64 %29, 1
  store i64 %30, i64* %5, align 8
  %31 = getelementptr inbounds i32, i32* %28, i64 %29
  store i32 %23, i32* %31, align 4
  %32 = load i64, i64* @PPP_INITFCS, align 8
  store i64 %32, i64* %11, align 8
  store i64 0, i64* %4, align 8
  br label %33

33:                                               ; preds = %54, %21
  %34 = load i64, i64* %4, align 8
  %35 = load %struct.BCState*, %struct.BCState** %3, align 8
  %36 = getelementptr inbounds %struct.BCState, %struct.BCState* %35, i32 0, i32 1
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp ult i64 %34, %39
  br i1 %40, label %41, label %57

41:                                               ; preds = %33
  %42 = load %struct.BCState*, %struct.BCState** %3, align 8
  %43 = getelementptr inbounds %struct.BCState, %struct.BCState* %42, i32 0, i32 1
  %44 = load %struct.TYPE_5__*, %struct.TYPE_5__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i64, i64* %4, align 8
  %48 = getelementptr inbounds i32, i32* %46, i64 %47
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %7, align 4
  %50 = load i64, i64* %11, align 8
  %51 = load i32, i32* %7, align 4
  %52 = call i64 @PPP_FCS(i64 %50, i32 %51)
  store i64 %52, i64* %11, align 8
  %53 = load i32, i32* @MAKE_RAW_BYTE, align 4
  br label %54

54:                                               ; preds = %41
  %55 = load i64, i64* %4, align 8
  %56 = add i64 %55, 1
  store i64 %56, i64* %4, align 8
  br label %33

57:                                               ; preds = %33
  %58 = load i64, i64* %11, align 8
  %59 = xor i64 %58, 65535
  store i64 %59, i64* %11, align 8
  %60 = load i64, i64* %11, align 8
  %61 = and i64 %60, 255
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %7, align 4
  %63 = load i32, i32* @MAKE_RAW_BYTE, align 4
  %64 = load i64, i64* %11, align 8
  %65 = lshr i64 %64, 8
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %7, align 4
  %68 = load i32, i32* @MAKE_RAW_BYTE, align 4
  %69 = load i8*, i8** @HDLC_FLAG_VALUE, align 8
  %70 = ptrtoint i8* %69 to i32
  store i32 %70, i32* %7, align 4
  store i32 0, i32* %6, align 4
  br label %71

71:                                               ; preds = %104, %57
  %72 = load i32, i32* %6, align 4
  %73 = icmp slt i32 %72, 8
  br i1 %73, label %74, label %107

74:                                               ; preds = %71
  %75 = load i32, i32* %10, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %10, align 4
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 1
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %7, align 4
  %80 = and i32 %79, 1
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %74
  %83 = load i32, i32* %9, align 4
  %84 = or i32 %83, 128
  store i32 %84, i32* %9, align 4
  br label %88

85:                                               ; preds = %74
  %86 = load i32, i32* %9, align 4
  %87 = and i32 %86, 127
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %85, %82
  %89 = load i32, i32* %10, align 4
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load i32, i32* %9, align 4
  %93 = load %struct.BCState*, %struct.BCState** %3, align 8
  %94 = getelementptr inbounds %struct.BCState, %struct.BCState* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i64, i64* %5, align 8
  %99 = add i64 %98, 1
  store i64 %99, i64* %5, align 8
  %100 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32 %92, i32* %100, align 4
  store i32 0, i32* %10, align 4
  br label %101

101:                                              ; preds = %91, %88
  %102 = load i32, i32* %7, align 4
  %103 = ashr i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %101
  %105 = load i32, i32* %6, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %6, align 4
  br label %71

107:                                              ; preds = %71
  %108 = load %struct.BCState*, %struct.BCState** %3, align 8
  %109 = getelementptr inbounds %struct.BCState, %struct.BCState* %108, i32 0, i32 3
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %109, align 8
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @L1_DEB_HSCX, align 4
  %114 = and i32 %112, %113
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %128

116:                                              ; preds = %107
  %117 = load %struct.BCState*, %struct.BCState** %3, align 8
  %118 = getelementptr inbounds %struct.BCState, %struct.BCState* %117, i32 0, i32 3
  %119 = load %struct.TYPE_8__*, %struct.TYPE_8__** %118, align 8
  %120 = load %struct.BCState*, %struct.BCState** %3, align 8
  %121 = getelementptr inbounds %struct.BCState, %struct.BCState* %120, i32 0, i32 1
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %121, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* %5, align 8
  %126 = load i32, i32* %10, align 4
  %127 = call i32 (%struct.TYPE_8__*, i8*, ...) @debugl1(%struct.TYPE_8__* %119, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %124, i64 %125, i32 %126)
  br label %128

128:                                              ; preds = %116, %107
  %129 = load i32, i32* %10, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %159

131:                                              ; preds = %128
  br label %132

132:                                              ; preds = %136, %131
  %133 = load i32, i32* %10, align 4
  %134 = add nsw i32 %133, 1
  store i32 %134, i32* %10, align 4
  %135 = icmp sgt i32 8, %133
  br i1 %135, label %136, label %141

136:                                              ; preds = %132
  %137 = load i32, i32* %9, align 4
  %138 = ashr i32 %137, 1
  store i32 %138, i32* %9, align 4
  %139 = load i32, i32* %9, align 4
  %140 = or i32 %139, 128
  store i32 %140, i32* %9, align 4
  br label %132

141:                                              ; preds = %132
  %142 = load i32, i32* %9, align 4
  %143 = load %struct.BCState*, %struct.BCState** %3, align 8
  %144 = getelementptr inbounds %struct.BCState, %struct.BCState* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  %146 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i32 0, i32 0
  %147 = load i32*, i32** %146, align 8
  %148 = load i64, i64* %5, align 8
  %149 = add i64 %148, 1
  store i64 %149, i64* %5, align 8
  %150 = getelementptr inbounds i32, i32* %147, i64 %148
  store i32 %142, i32* %150, align 4
  %151 = load %struct.BCState*, %struct.BCState** %3, align 8
  %152 = getelementptr inbounds %struct.BCState, %struct.BCState* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* %5, align 8
  %157 = add i64 %156, 1
  store i64 %157, i64* %5, align 8
  %158 = getelementptr inbounds i32, i32* %155, i64 %156
  store i32 255, i32* %158, align 4
  br label %159

159:                                              ; preds = %141, %128
  %160 = load i64, i64* %5, align 8
  %161 = load %struct.BCState*, %struct.BCState** %3, align 8
  %162 = getelementptr inbounds %struct.BCState, %struct.BCState* %161, i32 0, i32 0
  %163 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %162, i32 0, i32 0
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 1
  store i64 %160, i64* %164, align 8
  %165 = load %struct.BCState*, %struct.BCState** %3, align 8
  %166 = getelementptr inbounds %struct.BCState, %struct.BCState* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.BCState*, %struct.BCState** %3, align 8
  %171 = getelementptr inbounds %struct.BCState, %struct.BCState* %170, i32 0, i32 2
  %172 = load i32, i32* %171, align 8
  %173 = sext i32 %172 to i64
  %174 = sub i64 %173, %169
  %175 = trunc i64 %174 to i32
  store i32 %175, i32* %171, align 8
  %176 = load %struct.BCState*, %struct.BCState** %3, align 8
  %177 = getelementptr inbounds %struct.BCState, %struct.BCState* %176, i32 0, i32 0
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 0
  %179 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %178, i32 0, i32 0
  %180 = load i32*, i32** %179, align 8
  %181 = load %struct.BCState*, %struct.BCState** %3, align 8
  %182 = getelementptr inbounds %struct.BCState, %struct.BCState* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 2
  store i32* %180, i32** %184, align 8
  store i32 0, i32* %2, align 4
  br label %185

185:                                              ; preds = %159, %16
  %186 = load i32, i32* %2, align 4
  ret i32 %186
}

declare dso_local i32 @debugl1(%struct.TYPE_8__*, i8*, ...) #1

declare dso_local i64 @PPP_FCS(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
