; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_DisplayDescRing.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/arm/mach-bcmring/csp/dmac/extr_dmacHw_extra.c_DisplayDescRing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__*, %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_5__, i64, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@.str = private unnamed_addr constant [6 x i8] c"Head\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"Tail\0A\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Prog\0A\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"End\0A\00", align 1
@.str.4 = private unnamed_addr constant [6 x i8] c"Free\0A\00", align 1
@.str.5 = private unnamed_addr constant [7 x i8] c"0x%X:\0A\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"sar    0x%0X\0A\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"dar    0x%0X\0A\00", align 1
@.str.8 = private unnamed_addr constant [14 x i8] c"llp    0x%0X\0A\00", align 1
@.str.9 = private unnamed_addr constant [14 x i8] c"ctl.lo 0x%0X\0A\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"ctl.hi 0x%0X\0A\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"sstat  0x%0X\0A\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"dstat  0x%0X\0A\00", align 1
@.str.13 = private unnamed_addr constant [14 x i8] c"devCtl 0x%0X\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32 (i8*, ...)*)* @DisplayDescRing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @DisplayDescRing(i8* %0, i32 (i8*, ...)* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32 (i8*, ...)*, align 8
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  store i8* %0, i8** %3, align 8
  store i32 (i8*, ...)* %1, i32 (i8*, ...)** %4, align 8
  %7 = load i8*, i8** %3, align 8
  %8 = call %struct.TYPE_7__* @dmacHw_GET_DESC_RING(i8* %7)
  store %struct.TYPE_7__* %8, %struct.TYPE_7__** %5, align 8
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %2
  br label %215

14:                                               ; preds = %2
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 4
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %6, align 8
  br label %18

18:                                               ; preds = %72, %14
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.TYPE_6__*
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %24, align 8
  %26 = icmp ne %struct.TYPE_6__* %22, %25
  br i1 %26, label %27, label %123

27:                                               ; preds = %18
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = icmp eq %struct.TYPE_6__* %28, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %35 = call i32 (i8*, ...) %34(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %27
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 3
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %39, align 8
  %41 = icmp eq %struct.TYPE_6__* %37, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %44 = call i32 (i8*, ...) %43(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %45

45:                                               ; preds = %42, %36
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %47 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %48, align 8
  %50 = icmp eq %struct.TYPE_6__* %46, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %53 = call i32 (i8*, ...) %52(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %54

54:                                               ; preds = %51, %45
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %56 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 1
  %58 = load %struct.TYPE_6__*, %struct.TYPE_6__** %57, align 8
  %59 = icmp eq %struct.TYPE_6__* %55, %58
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %62 = call i32 (i8*, ...) %61(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %63

63:                                               ; preds = %60, %54
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = icmp eq %struct.TYPE_6__* %64, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %63
  %70 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %71 = call i32 (i8*, ...) %70(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %72

72:                                               ; preds = %69, %63
  %73 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = ptrtoint %struct.TYPE_6__* %74 to i32
  %76 = call i32 (i8*, ...) %73(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %75)
  %77 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 6
  %80 = load i32, i32* %79, align 4
  %81 = call i32 (i8*, ...) %77(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %80)
  %82 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %83 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 5
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i8*, ...) %82(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %85)
  %87 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 4
  %90 = load i64, i64* %89, align 8
  %91 = call i32 (i8*, ...) %87(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 %90)
  %92 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %93 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %94 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 (i8*, ...) %92(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %96)
  %98 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i32 (i8*, ...) %98(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %102)
  %104 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 8
  %108 = call i32 (i8*, ...) %104(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %107)
  %109 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = call i32 (i8*, ...) %109(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %112)
  %114 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 (i8*, ...) %114(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %117)
  %119 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %119, i32 0, i32 4
  %121 = load i64, i64* %120, align 8
  %122 = inttoptr i64 %121 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %122, %struct.TYPE_6__** %6, align 8
  br label %18

123:                                              ; preds = %18
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %125 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %125, i32 0, i32 4
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %126, align 8
  %128 = icmp eq %struct.TYPE_6__* %124, %127
  br i1 %128, label %129, label %132

129:                                              ; preds = %123
  %130 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %131 = call i32 (i8*, ...) %130(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %132

132:                                              ; preds = %129, %123
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %134 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %134, i32 0, i32 3
  %136 = load %struct.TYPE_6__*, %struct.TYPE_6__** %135, align 8
  %137 = icmp eq %struct.TYPE_6__* %133, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %132
  %139 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %140 = call i32 (i8*, ...) %139(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  br label %141

141:                                              ; preds = %138, %132
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %143 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 2
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = icmp eq %struct.TYPE_6__* %142, %145
  br i1 %146, label %147, label %150

147:                                              ; preds = %141
  %148 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %149 = call i32 (i8*, ...) %148(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  br label %150

150:                                              ; preds = %147, %141
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load %struct.TYPE_6__*, %struct.TYPE_6__** %153, align 8
  %155 = icmp eq %struct.TYPE_6__* %151, %154
  br i1 %155, label %156, label %159

156:                                              ; preds = %150
  %157 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %158 = call i32 (i8*, ...) %157(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0))
  br label %159

159:                                              ; preds = %156, %150
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 0
  %163 = load %struct.TYPE_6__*, %struct.TYPE_6__** %162, align 8
  %164 = icmp eq %struct.TYPE_6__* %160, %163
  br i1 %164, label %165, label %168

165:                                              ; preds = %159
  %166 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %167 = call i32 (i8*, ...) %166(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %159
  %169 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %170 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %171 = ptrtoint %struct.TYPE_6__* %170 to i32
  %172 = call i32 (i8*, ...) %169(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.5, i64 0, i64 0), i32 %171)
  %173 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %174 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %175 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %174, i32 0, i32 6
  %176 = load i32, i32* %175, align 4
  %177 = call i32 (i8*, ...) %173(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0), i32 %176)
  %178 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %179 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 5
  %181 = load i32, i32* %180, align 8
  %182 = call i32 (i8*, ...) %178(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %181)
  %183 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %184 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %185 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %184, i32 0, i32 4
  %186 = load i64, i64* %185, align 8
  %187 = call i32 (i8*, ...) %183(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.8, i64 0, i64 0), i64 %186)
  %188 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %189 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 3
  %191 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i32 (i8*, ...) %188(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.9, i64 0, i64 0), i32 %192)
  %194 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 3
  %197 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %196, i32 0, i32 0
  %198 = load i32, i32* %197, align 4
  %199 = call i32 (i8*, ...) %194(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0), i32 %198)
  %200 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 8
  %204 = call i32 (i8*, ...) %200(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %203)
  %205 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %207 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %206, i32 0, i32 1
  %208 = load i32, i32* %207, align 4
  %209 = call i32 (i8*, ...) %205(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0), i32 %208)
  %210 = load i32 (i8*, ...)*, i32 (i8*, ...)** %4, align 8
  %211 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %212 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %211, i32 0, i32 0
  %213 = load i32, i32* %212, align 8
  %214 = call i32 (i8*, ...) %210(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.13, i64 0, i64 0), i32 %213)
  br label %215

215:                                              ; preds = %168, %13
  ret void
}

declare dso_local %struct.TYPE_7__* @dmacHw_GET_DESC_RING(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
