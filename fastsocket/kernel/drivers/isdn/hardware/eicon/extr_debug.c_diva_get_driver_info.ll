; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_get_driver_info.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/isdn/hardware/eicon/extr_debug.c_diva_get_driver_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i64* }
%struct.TYPE_4__ = type { i64* }

@clients = common dso_local global %struct.TYPE_5__* null, align 8
@dbg_q_lock = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"driver info\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @diva_get_driver_info(i64 %0, i8** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i8** %1, i8*** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load i8**, i8*** %6, align 8
  store i8** %11, i8*** %9, align 8
  %12 = load i8**, i8*** %6, align 8
  %13 = icmp ne i8** %12, null
  br i1 %13, label %14, label %25

14:                                               ; preds = %3
  %15 = load i64, i64* %5, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %14
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 17
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i64, i64* %5, align 8
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %23 = call i64 @ARRAY_SIZE(%struct.TYPE_5__* %22)
  %24 = icmp uge i64 %21, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %20, %17, %14, %3
  store i32 -1, i32* %4, align 4
  br label %219

26:                                               ; preds = %20
  %27 = call i32 @diva_os_enter_spin_lock(i32* @dbg_q_lock, i32* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %29 = load i64, i64* %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 2
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %208

34:                                               ; preds = %26
  %35 = load i8**, i8*** %9, align 8
  %36 = getelementptr inbounds i8*, i8** %35, i32 1
  store i8** %36, i8*** %9, align 8
  store i8* inttoptr (i64 1 to i8*), i8** %35, align 8
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %38 = load i64, i64* %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = sext i32 %41 to i64
  %43 = inttoptr i64 %42 to i8*
  %44 = load i8**, i8*** %9, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i32 1
  store i8** %45, i8*** %9, align 8
  store i8* %43, i8** %44, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %47 = load i64, i64* %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = ashr i32 %50, 8
  %52 = sext i32 %51 to i64
  %53 = inttoptr i64 %52 to i8*
  %54 = load i8**, i8*** %9, align 8
  %55 = getelementptr inbounds i8*, i8** %54, i32 1
  store i8** %55, i8*** %9, align 8
  store i8* %53, i8** %54, align 8
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %57 = load i64, i64* %5, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = ashr i32 %60, 16
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load i8**, i8*** %9, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i32 1
  store i8** %65, i8*** %9, align 8
  store i8* %63, i8** %64, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %67 = load i64, i64* %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = ashr i32 %70, 24
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load i8**, i8*** %9, align 8
  %75 = getelementptr inbounds i8*, i8** %74, i32 1
  store i8** %75, i8*** %9, align 8
  store i8* %73, i8** %74, align 8
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %77 = load i64, i64* %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = sdiv i32 %80, 1000
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load i8**, i8*** %9, align 8
  %85 = getelementptr inbounds i8*, i8** %84, i32 1
  store i8** %85, i8*** %9, align 8
  store i8* %83, i8** %84, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %87 = load i64, i64* %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 4
  %91 = sdiv i32 %90, 1000
  %92 = ashr i32 %91, 8
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load i8**, i8*** %9, align 8
  %96 = getelementptr inbounds i8*, i8** %95, i32 1
  store i8** %96, i8*** %9, align 8
  store i8* %94, i8** %95, align 8
  %97 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %98 = load i64, i64* %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = sdiv i32 %101, 1000
  %103 = ashr i32 %102, 16
  %104 = sext i32 %103 to i64
  %105 = inttoptr i64 %104 to i8*
  %106 = load i8**, i8*** %9, align 8
  %107 = getelementptr inbounds i8*, i8** %106, i32 1
  store i8** %107, i8*** %9, align 8
  store i8* %105, i8** %106, align 8
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %109 = load i64, i64* %5, align 8
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 1
  %112 = load i32, i32* %111, align 4
  %113 = sdiv i32 %112, 1000
  %114 = ashr i32 %113, 24
  %115 = sext i32 %114 to i64
  %116 = inttoptr i64 %115 to i8*
  %117 = load i8**, i8*** %9, align 8
  %118 = getelementptr inbounds i8*, i8** %117, i32 1
  store i8** %118, i8*** %9, align 8
  store i8* %116, i8** %117, align 8
  %119 = load i32, i32* %7, align 4
  %120 = sub nsw i32 %119, 9
  store i32 %120, i32* %7, align 4
  %121 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %122 = load i64, i64* %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %121, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %123, i32 0, i32 3
  %125 = load i64*, i64** %124, align 8
  %126 = call i32 @strlen(i64* %125)
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, 1
  %129 = sext i32 %128 to i64
  %130 = call i32 @min(i32 %126, i64 %129)
  store i32 %130, i32* %10, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %207

132:                                              ; preds = %34
  %133 = load i8**, i8*** %9, align 8
  %134 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %135 = load i64, i64* %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %134, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 3
  %138 = load i64*, i64** %137, align 8
  %139 = load i32, i32* %10, align 4
  %140 = call i32 @memcpy(i8** %133, i64* %138, i32 %139)
  %141 = load i32, i32* %10, align 4
  %142 = load i8**, i8*** %9, align 8
  %143 = sext i32 %141 to i64
  %144 = getelementptr inbounds i8*, i8** %142, i64 %143
  store i8** %144, i8*** %9, align 8
  %145 = load i32, i32* %10, align 4
  %146 = load i32, i32* %7, align 4
  %147 = sub nsw i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i32, i32* %7, align 4
  %149 = icmp sge i32 %148, 4
  br i1 %149, label %150, label %206

150:                                              ; preds = %132
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %152 = load i64, i64* %5, align 8
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %151, i64 %152
  %154 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %153, i32 0, i32 2
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i32 0, i32 0
  %157 = load i64*, i64** %156, align 8
  %158 = getelementptr inbounds i64, i64* %157, i64 0
  %159 = load i64, i64* %158, align 8
  %160 = icmp ne i64 %159, 0
  br i1 %160, label %161, label %206

161:                                              ; preds = %150
  %162 = load i8**, i8*** %9, align 8
  %163 = getelementptr inbounds i8*, i8** %162, i32 1
  store i8** %163, i8*** %9, align 8
  store i8* inttoptr (i64 40 to i8*), i8** %162, align 8
  %164 = load i32, i32* %7, align 4
  %165 = sub nsw i32 %164, 1
  store i32 %165, i32* %7, align 4
  %166 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %167 = load i64, i64* %5, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %166, i64 %167
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 2
  %170 = load %struct.TYPE_4__*, %struct.TYPE_4__** %169, align 8
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 0
  %172 = load i64*, i64** %171, align 8
  %173 = call i32 @strlen(i64* %172)
  %174 = load i32, i32* %7, align 4
  %175 = sub nsw i32 %174, 2
  %176 = sext i32 %175 to i64
  %177 = call i32 @min(i32 %173, i64 %176)
  store i32 %177, i32* %10, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %205

179:                                              ; preds = %161
  %180 = load i8**, i8*** %9, align 8
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** @clients, align 8
  %182 = load i64, i64* %5, align 8
  %183 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i64 %182
  %184 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %183, i32 0, i32 2
  %185 = load %struct.TYPE_4__*, %struct.TYPE_4__** %184, align 8
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  %187 = load i64*, i64** %186, align 8
  %188 = load i32, i32* %10, align 4
  %189 = call i32 @memcpy(i8** %180, i64* %187, i32 %188)
  %190 = load i32, i32* %10, align 4
  %191 = load i8**, i8*** %9, align 8
  %192 = sext i32 %190 to i64
  %193 = getelementptr inbounds i8*, i8** %191, i64 %192
  store i8** %193, i8*** %9, align 8
  %194 = load i32, i32* %10, align 4
  %195 = load i32, i32* %7, align 4
  %196 = sub nsw i32 %195, %194
  store i32 %196, i32* %7, align 4
  %197 = load i32, i32* %7, align 4
  %198 = icmp sge i32 %197, 2
  br i1 %198, label %199, label %204

199:                                              ; preds = %179
  %200 = load i8**, i8*** %9, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i32 1
  store i8** %201, i8*** %9, align 8
  store i8* inttoptr (i64 41 to i8*), i8** %200, align 8
  %202 = load i32, i32* %7, align 4
  %203 = add nsw i32 %202, -1
  store i32 %203, i32* %7, align 4
  br label %204

204:                                              ; preds = %199, %179
  br label %205

205:                                              ; preds = %204, %161
  br label %206

206:                                              ; preds = %205, %150, %132
  br label %207

207:                                              ; preds = %206, %34
  br label %208

208:                                              ; preds = %207, %26
  %209 = load i8**, i8*** %9, align 8
  %210 = getelementptr inbounds i8*, i8** %209, i32 1
  store i8** %210, i8*** %9, align 8
  store i8* null, i8** %209, align 8
  %211 = call i32 @diva_os_leave_spin_lock(i32* @dbg_q_lock, i32* %8, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %212 = load i8**, i8*** %9, align 8
  %213 = load i8**, i8*** %6, align 8
  %214 = ptrtoint i8** %212 to i64
  %215 = ptrtoint i8** %213 to i64
  %216 = sub i64 %214, %215
  %217 = sdiv exact i64 %216, 8
  %218 = trunc i64 %217 to i32
  store i32 %218, i32* %4, align 4
  br label %219

219:                                              ; preds = %208, %25
  %220 = load i32, i32* %4, align 4
  ret i32 %220
}

declare dso_local i64 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @diva_os_enter_spin_lock(i32*, i32*, i8*) #1

declare dso_local i32 @min(i32, i64) #1

declare dso_local i32 @strlen(i64*) #1

declare dso_local i32 @memcpy(i8**, i64*, i32) #1

declare dso_local i32 @diva_os_leave_spin_lock(i32*, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
