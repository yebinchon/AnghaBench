; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_sz_push_full_space.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/rc/extr_streamzap.c_sz_push_full_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.streamzap_ir = type { i32 }

@rawir = common dso_local global %struct.TYPE_4__ zeroinitializer, align 4
@SZ_RESOLUTION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.streamzap_ir*, i8)* @sz_push_full_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sz_push_full_space(%struct.streamzap_ir* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.streamzap_ir*, align 8
  %4 = alloca i8, align 1
  store %struct.streamzap_ir* %0, %struct.streamzap_ir** %3, align 8
  store i8 %1, i8* %4, align 1
  %5 = load i64, i64* bitcast (%struct.TYPE_4__* @rawir to i64*), align 4
  %6 = call i32 @DEFINE_IR_RAW_EVENT(i64 %5)
  store i32 0, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 0), align 4
  %7 = load i8, i8* %4, align 1
  %8 = zext i8 %7 to i32
  %9 = load i32, i32* @SZ_RESOLUTION, align 4
  %10 = mul nsw i32 %8, %9
  store i32 %10, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %11 = load i32, i32* @SZ_RESOLUTION, align 4
  %12 = sdiv i32 %11, 2
  %13 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %14 = add nsw i32 %13, %12
  store i32 %14, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %15 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %16 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %17 = getelementptr inbounds %struct.streamzap_ir, %struct.streamzap_ir* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = add nsw i32 %18, %15
  store i32 %19, i32* %17, align 4
  %20 = load i32, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %21 = call i32 @US_TO_NS(i32 %20)
  store i32 %21, i32* getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @rawir, i32 0, i32 1), align 4
  %22 = load %struct.streamzap_ir*, %struct.streamzap_ir** %3, align 8
  %23 = load i64, i64* bitcast (%struct.TYPE_4__* @rawir to i64*), align 4
  %24 = call i32 @sz_push(%struct.streamzap_ir* %22, i64 %23)
  ret void
}

declare dso_local i32 @DEFINE_IR_RAW_EVENT(i64) #1

declare dso_local i32 @US_TO_NS(i32) #1

declare dso_local i32 @sz_push(%struct.streamzap_ir*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
