; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_sz_push_full_pulse.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_sz_push_full_pulse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.streamzap_ir = type { i32, i64, %struct.TYPE_6__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64 }

@rawir = common dso_local global %struct.TYPE_5__ zeroinitializer, align 4
@IR_MAX_DURATION = common dso_local global i32 0, align 4
@SZ_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streamzap_ir*, i8)* @sz_push_full_pulse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sz_push_full_pulse(%struct.streamzap_ir* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  store i8 %1, i8* %4, align 1
  %6 = load i64, i64* bitcast (%struct.TYPE_5__* @rawir to i64*), align 4
  %7 = call i32 @DEFINE_IR_RAW_EVENT(i64 %6)
  %8 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %9 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %70

12:                                               ; preds = %2
  %13 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %14 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %13, i32 0, i32 2
  %15 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %16 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %15, i32 0, i32 3
  %17 = bitcast %struct.TYPE_6__* %14 to i8*
  %18 = bitcast %struct.TYPE_6__* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 16, i1 false)
  %19 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %20 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %19, i32 0, i32 3
  %21 = call i32 @do_gettimeofday(%struct.TYPE_6__* %20)
  %22 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %23 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %27 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %26, i32 0, i32 2
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = sub nsw i64 %25, %29
  store i64 %30, i64* %5, align 8
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 0), align 4
  %31 = load i64, i64* %5, align 8
  %32 = icmp sgt i64 %31, 15
  br i1 %32, label %33, label %35

33:                                               ; preds = %12
  %34 = load i32, i32* @IR_MAX_DURATION, align 4
  store i32 %34, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  br label %62

35:                                               ; preds = %12
  %36 = load i64, i64* %5, align 8
  %37 = mul nsw i64 %36, 1000000
  %38 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %39 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %38, i32 0, i32 3
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = add nsw i64 %37, %41
  %43 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %44 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = sub nsw i64 %42, %46
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %49 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %50 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %53 = sext i32 %52 to i64
  %54 = sub nsw i64 %53, %51
  %55 = trunc i64 %54 to i32
  store i32 %55, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %57 = call i8* @US_TO_NS(i32 %56)
  %58 = ptrtoint i8* %57 to i32
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %59 = load i32, i32* @IR_MAX_DURATION, align 4
  %60 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %61 = and i32 %60, %59
  store i32 %61, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  br label %62

62:                                               ; preds = %35, %33
  %63 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %64 = load i64, i64* bitcast (%struct.TYPE_5__* @rawir to i64*), align 4
  %65 = call i32 @sz_push(%struct.streamzap_ir* %63, i64 %64)
  %66 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %67 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %66, i32 0, i32 0
  store i32 0, i32* %67, align 8
  %68 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %69 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %68, i32 0, i32 1
  store i64 0, i64* %69, align 8
  br label %70

70:                                               ; preds = %62, %2
  store i32 1, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 0), align 4
  %71 = load i8, i8* %4, align 1
  %72 = zext i8 %71 to i32
  %73 = load i32, i32* @SZ_RESOLUTION, align 4
  %74 = mul nsw i32 %72, %73
  store i32 %74, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %75 = load i32, i32* @SZ_RESOLUTION, align 4
  %76 = sdiv i32 %75, 2
  %77 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %78 = add nsw i32 %77, %76
  store i32 %78, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %82 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = add nsw i64 %83, %80
  store i64 %84, i64* %82, align 8
  %85 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %86 = call i8* @US_TO_NS(i32 %85)
  %87 = ptrtoint i8* %86 to i32
  store i32 %87, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %88 = load i32, i32* @IR_MAX_DURATION, align 4
  %89 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %90 = and i32 %89, %88
  store i32 %90, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rawir, i32 0, i32 1), align 4
  %91 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %92 = load i64, i64* bitcast (%struct.TYPE_5__* @rawir to i64*), align 4
  %93 = call i32 @sz_push(%struct.streamzap_ir* %91, i64 %92)
  ret void
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @do_gettimeofday(%struct.TYPE_6__*) #1

declare dso_local i8* @US_TO_NS(i32) #1

declare dso_local i32 @sz_push(%struct.streamzap_ir*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
