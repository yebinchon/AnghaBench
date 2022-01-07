; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/frontends/extr_tda10023.c_tda10023_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dvb_frontend = type { %struct.TYPE_3__*, %struct.tda10023_state* }
%struct.TYPE_3__ = type { i32 }
%struct.tda10023_state = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }

@REG0_INIT_VAL = common dso_local global i32 0, align 4
@TDA10023_OUTPUT_MODE_PARALLEL_B = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"DVB: TDA10023(%d): init chip\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dvb_frontend*)* @tda10023_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tda10023_init(%struct.dvb_frontend* %0) #0 {
  %2 = alloca %struct.dvb_frontend*, align 8
  %3 = alloca %struct.tda10023_state*, align 8
  %4 = alloca [126 x i32], align 16
  store %struct.dvb_frontend* %0, %struct.dvb_frontend** %2, align 8
  %5 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %6 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %5, i32 0, i32 1
  %7 = load %struct.tda10023_state*, %struct.tda10023_state** %6, align 8
  store %struct.tda10023_state* %7, %struct.tda10023_state** %3, align 8
  %8 = getelementptr inbounds [126 x i32], [126 x i32]* %4, i64 0, i64 0
  store i32 42, i32* %8, align 4
  %9 = getelementptr inbounds i32, i32* %8, i64 1
  store i32 255, i32* %9, align 4
  %10 = getelementptr inbounds i32, i32* %9, i64 1
  store i32 2, i32* %10, align 4
  %11 = getelementptr inbounds i32, i32* %10, i64 1
  store i32 255, i32* %11, align 4
  %12 = getelementptr inbounds i32, i32* %11, i64 1
  store i32 100, i32* %12, align 4
  %13 = getelementptr inbounds i32, i32* %12, i64 1
  store i32 0, i32* %13, align 4
  %14 = getelementptr inbounds i32, i32* %13, i64 1
  store i32 42, i32* %14, align 4
  %15 = getelementptr inbounds i32, i32* %14, i64 1
  store i32 255, i32* %15, align 4
  %16 = getelementptr inbounds i32, i32* %15, i64 1
  store i32 3, i32* %16, align 4
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  store i32 255, i32* %17, align 4
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  store i32 100, i32* %18, align 4
  %19 = getelementptr inbounds i32, i32* %18, i64 1
  store i32 0, i32* %19, align 4
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 40, i32* %20, align 4
  %21 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 255, i32* %21, align 4
  %22 = getelementptr inbounds i32, i32* %21, i64 1
  %23 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %24 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %23, i32 0, i32 3
  %25 = load i32, i32* %24, align 8
  %26 = sub nsw i32 %25, 1
  store i32 %26, i32* %22, align 4
  %27 = getelementptr inbounds i32, i32* %22, i64 1
  store i32 41, i32* %27, align 4
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 255, i32* %28, align 4
  %29 = getelementptr inbounds i32, i32* %28, i64 1
  %30 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %31 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = sub nsw i32 %32, 1
  %34 = shl i32 %33, 6
  %35 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %36 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %37, 1
  %39 = or i32 %34, %38
  store i32 %39, i32* %29, align 4
  %40 = getelementptr inbounds i32, i32* %29, i64 1
  store i32 0, i32* %40, align 4
  %41 = getelementptr inbounds i32, i32* %40, i64 1
  store i32 255, i32* %41, align 4
  %42 = getelementptr inbounds i32, i32* %41, i64 1
  %43 = load i32, i32* @REG0_INIT_VAL, align 4
  store i32 %43, i32* %42, align 4
  %44 = getelementptr inbounds i32, i32* %42, i64 1
  store i32 42, i32* %44, align 4
  %45 = getelementptr inbounds i32, i32* %44, i64 1
  store i32 255, i32* %45, align 4
  %46 = getelementptr inbounds i32, i32* %45, i64 1
  store i32 8, i32* %46, align 4
  %47 = getelementptr inbounds i32, i32* %46, i64 1
  store i32 255, i32* %47, align 4
  %48 = getelementptr inbounds i32, i32* %47, i64 1
  store i32 100, i32* %48, align 4
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 0, i32* %49, align 4
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 31, i32* %50, align 4
  %51 = getelementptr inbounds i32, i32* %50, i64 1
  store i32 255, i32* %51, align 4
  %52 = getelementptr inbounds i32, i32* %51, i64 1
  store i32 0, i32* %52, align 4
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 255, i32* %53, align 4
  %54 = getelementptr inbounds i32, i32* %53, i64 1
  store i32 100, i32* %54, align 4
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  store i32 0, i32* %55, align 4
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  store i32 230, i32* %56, align 4
  %57 = getelementptr inbounds i32, i32* %56, i64 1
  store i32 12, i32* %57, align 4
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  store i32 4, i32* %58, align 4
  %59 = getelementptr inbounds i32, i32* %58, i64 1
  store i32 16, i32* %59, align 4
  %60 = getelementptr inbounds i32, i32* %59, i64 1
  store i32 192, i32* %60, align 4
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  store i32 128, i32* %61, align 4
  %62 = getelementptr inbounds i32, i32* %61, i64 1
  store i32 14, i32* %62, align 4
  %63 = getelementptr inbounds i32, i32* %62, i64 1
  store i32 255, i32* %63, align 4
  %64 = getelementptr inbounds i32, i32* %63, i64 1
  store i32 130, i32* %64, align 4
  %65 = getelementptr inbounds i32, i32* %64, i64 1
  store i32 3, i32* %65, align 4
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 8, i32* %66, align 4
  %67 = getelementptr inbounds i32, i32* %66, i64 1
  store i32 8, i32* %67, align 4
  %68 = getelementptr inbounds i32, i32* %67, i64 1
  store i32 46, i32* %68, align 4
  %69 = getelementptr inbounds i32, i32* %68, i64 1
  store i32 191, i32* %69, align 4
  %70 = getelementptr inbounds i32, i32* %69, i64 1
  store i32 48, i32* %70, align 4
  %71 = getelementptr inbounds i32, i32* %70, i64 1
  store i32 1, i32* %71, align 4
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 255, i32* %72, align 4
  %73 = getelementptr inbounds i32, i32* %72, i64 1
  store i32 48, i32* %73, align 4
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  store i32 30, i32* %74, align 4
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 132, i32* %75, align 4
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 132, i32* %76, align 4
  %77 = getelementptr inbounds i32, i32* %76, i64 1
  store i32 27, i32* %77, align 4
  %78 = getelementptr inbounds i32, i32* %77, i64 1
  store i32 255, i32* %78, align 4
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 200, i32* %79, align 4
  %80 = getelementptr inbounds i32, i32* %79, i64 1
  store i32 59, i32* %80, align 4
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32 255, i32* %81, align 4
  %82 = getelementptr inbounds i32, i32* %81, i64 1
  store i32 255, i32* %82, align 4
  %83 = getelementptr inbounds i32, i32* %82, i64 1
  store i32 60, i32* %83, align 4
  %84 = getelementptr inbounds i32, i32* %83, i64 1
  store i32 255, i32* %84, align 4
  %85 = getelementptr inbounds i32, i32* %84, i64 1
  store i32 0, i32* %85, align 4
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  store i32 52, i32* %86, align 4
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 255, i32* %87, align 4
  %88 = getelementptr inbounds i32, i32* %87, i64 1
  store i32 0, i32* %88, align 4
  %89 = getelementptr inbounds i32, i32* %88, i64 1
  store i32 53, i32* %89, align 4
  %90 = getelementptr inbounds i32, i32* %89, i64 1
  store i32 255, i32* %90, align 4
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  store i32 255, i32* %91, align 4
  %92 = getelementptr inbounds i32, i32* %91, i64 1
  store i32 54, i32* %92, align 4
  %93 = getelementptr inbounds i32, i32* %92, i64 1
  store i32 255, i32* %93, align 4
  %94 = getelementptr inbounds i32, i32* %93, i64 1
  store i32 0, i32* %94, align 4
  %95 = getelementptr inbounds i32, i32* %94, i64 1
  store i32 6, i32* %95, align 4
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 255, i32* %96, align 4
  %97 = getelementptr inbounds i32, i32* %96, i64 1
  store i32 127, i32* %97, align 4
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  store i32 28, i32* %98, align 4
  %99 = getelementptr inbounds i32, i32* %98, i64 1
  store i32 48, i32* %99, align 4
  %100 = getelementptr inbounds i32, i32* %99, i64 1
  store i32 48, i32* %100, align 4
  %101 = getelementptr inbounds i32, i32* %100, i64 1
  store i32 55, i32* %101, align 4
  %102 = getelementptr inbounds i32, i32* %101, i64 1
  store i32 255, i32* %102, align 4
  %103 = getelementptr inbounds i32, i32* %102, i64 1
  store i32 246, i32* %103, align 4
  %104 = getelementptr inbounds i32, i32* %103, i64 1
  store i32 56, i32* %104, align 4
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  store i32 255, i32* %105, align 4
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  store i32 255, i32* %106, align 4
  %107 = getelementptr inbounds i32, i32* %106, i64 1
  store i32 2, i32* %107, align 4
  %108 = getelementptr inbounds i32, i32* %107, i64 1
  store i32 255, i32* %108, align 4
  %109 = getelementptr inbounds i32, i32* %108, i64 1
  store i32 147, i32* %109, align 4
  %110 = getelementptr inbounds i32, i32* %109, i64 1
  store i32 45, i32* %110, align 4
  %111 = getelementptr inbounds i32, i32* %110, i64 1
  store i32 255, i32* %111, align 4
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  store i32 246, i32* %112, align 4
  %113 = getelementptr inbounds i32, i32* %112, i64 1
  store i32 4, i32* %113, align 4
  %114 = getelementptr inbounds i32, i32* %113, i64 1
  store i32 16, i32* %114, align 4
  %115 = getelementptr inbounds i32, i32* %114, i64 1
  store i32 0, i32* %115, align 4
  %116 = getelementptr inbounds i32, i32* %115, i64 1
  store i32 18, i32* %116, align 4
  %117 = getelementptr inbounds i32, i32* %116, i64 1
  store i32 255, i32* %117, align 4
  %118 = getelementptr inbounds i32, i32* %117, i64 1
  %119 = load i32, i32* @TDA10023_OUTPUT_MODE_PARALLEL_B, align 4
  store i32 %119, i32* %118, align 4
  %120 = getelementptr inbounds i32, i32* %118, i64 1
  store i32 43, i32* %120, align 4
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  store i32 1, i32* %121, align 4
  %122 = getelementptr inbounds i32, i32* %121, i64 1
  store i32 161, i32* %122, align 4
  %123 = getelementptr inbounds i32, i32* %122, i64 1
  store i32 32, i32* %123, align 4
  %124 = getelementptr inbounds i32, i32* %123, i64 1
  store i32 255, i32* %124, align 4
  %125 = getelementptr inbounds i32, i32* %124, i64 1
  store i32 4, i32* %125, align 4
  %126 = getelementptr inbounds i32, i32* %125, i64 1
  store i32 44, i32* %126, align 4
  %127 = getelementptr inbounds i32, i32* %126, i64 1
  store i32 255, i32* %127, align 4
  %128 = getelementptr inbounds i32, i32* %127, i64 1
  store i32 13, i32* %128, align 4
  %129 = getelementptr inbounds i32, i32* %128, i64 1
  store i32 196, i32* %129, align 4
  %130 = getelementptr inbounds i32, i32* %129, i64 1
  store i32 255, i32* %130, align 4
  %131 = getelementptr inbounds i32, i32* %130, i64 1
  store i32 0, i32* %131, align 4
  %132 = getelementptr inbounds i32, i32* %131, i64 1
  store i32 195, i32* %132, align 4
  %133 = getelementptr inbounds i32, i32* %132, i64 1
  store i32 48, i32* %133, align 4
  %134 = getelementptr inbounds i32, i32* %133, i64 1
  store i32 0, i32* %134, align 4
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  store i32 181, i32* %135, align 4
  %136 = getelementptr inbounds i32, i32* %135, i64 1
  store i32 255, i32* %136, align 4
  %137 = getelementptr inbounds i32, i32* %136, i64 1
  store i32 25, i32* %137, align 4
  %138 = getelementptr inbounds i32, i32* %137, i64 1
  store i32 0, i32* %138, align 4
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  store i32 3, i32* %139, align 4
  %140 = getelementptr inbounds i32, i32* %139, i64 1
  store i32 1, i32* %140, align 4
  %141 = getelementptr inbounds i32, i32* %140, i64 1
  store i32 0, i32* %141, align 4
  %142 = getelementptr inbounds i32, i32* %141, i64 1
  store i32 3, i32* %142, align 4
  %143 = getelementptr inbounds i32, i32* %142, i64 1
  store i32 3, i32* %143, align 4
  %144 = getelementptr inbounds i32, i32* %143, i64 1
  store i32 255, i32* %144, align 4
  %145 = getelementptr inbounds i32, i32* %144, i64 1
  store i32 100, i32* %145, align 4
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  store i32 0, i32* %146, align 4
  %147 = getelementptr inbounds i32, i32* %146, i64 1
  store i32 255, i32* %147, align 4
  %148 = getelementptr inbounds i32, i32* %147, i64 1
  store i32 255, i32* %148, align 4
  %149 = getelementptr inbounds i32, i32* %148, i64 1
  store i32 255, i32* %149, align 4
  %150 = load %struct.dvb_frontend*, %struct.dvb_frontend** %2, align 8
  %151 = getelementptr inbounds %struct.dvb_frontend, %struct.dvb_frontend* %150, i32 0, i32 0
  %152 = load %struct.TYPE_3__*, %struct.TYPE_3__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @dprintk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %154)
  %156 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %157 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %156, i32 0, i32 0
  %158 = load %struct.TYPE_4__*, %struct.TYPE_4__** %157, align 8
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  %160 = load i32, i32* %159, align 4
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %162, label %177

162:                                              ; preds = %1
  %163 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %164 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %163, i32 0, i32 0
  %165 = load %struct.TYPE_4__*, %struct.TYPE_4__** %164, align 8
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = and i32 %167, 255
  %169 = getelementptr inbounds [126 x i32], [126 x i32]* %4, i64 0, i64 80
  store i32 %168, i32* %169, align 16
  %170 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %171 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %170, i32 0, i32 0
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 0
  %174 = load i32, i32* %173, align 4
  %175 = ashr i32 %174, 8
  %176 = getelementptr inbounds [126 x i32], [126 x i32]* %4, i64 0, i64 83
  store i32 %175, i32* %176, align 4
  br label %177

177:                                              ; preds = %162, %1
  %178 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %179 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %178, i32 0, i32 0
  %180 = load %struct.TYPE_4__*, %struct.TYPE_4__** %179, align 8
  %181 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %184, label %191

184:                                              ; preds = %177
  %185 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %186 = getelementptr inbounds %struct.tda10023_state, %struct.tda10023_state* %185, i32 0, i32 0
  %187 = load %struct.TYPE_4__*, %struct.TYPE_4__** %186, align 8
  %188 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = getelementptr inbounds [126 x i32], [126 x i32]* %4, i64 0, i64 95
  store i32 %189, i32* %190, align 4
  br label %191

191:                                              ; preds = %184, %177
  %192 = load %struct.tda10023_state*, %struct.tda10023_state** %3, align 8
  %193 = getelementptr inbounds [126 x i32], [126 x i32]* %4, i64 0, i64 0
  %194 = call i32 @tda10023_writetab(%struct.tda10023_state* %192, i32* %193)
  ret i32 0
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32 @tda10023_writetab(%struct.tda10023_state*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
