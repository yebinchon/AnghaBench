; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_reset.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop.c_flexcop_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.flexcop_device = type { i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)*, void (%struct.TYPE_12__*, %struct.flexcop_device*, i32)* }

@ctrl_208 = common dso_local global i32 0, align 4
@ibi_zero = common dso_local global %struct.TYPE_12__ zeroinitializer, align 8
@sw_reset_210 = common dso_local global i32 0, align 4
@misc_204 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.flexcop_device*)* @flexcop_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @flexcop_reset(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  %3 = alloca %struct.TYPE_12__, align 8
  %4 = alloca %struct.TYPE_12__, align 8
  %5 = alloca %struct.TYPE_12__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  %6 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %7 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %6, i32 0, i32 0
  %8 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)** %7, align 8
  %9 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %10 = load i32, i32* @ctrl_208, align 4
  %11 = call i32 %8(%struct.flexcop_device* %9, i32 %10, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 @ibi_zero)
  %12 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 2
  store i64 0, i64* %12, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %13, i32 0, i32 0
  store i32 1, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %15, i32 0, i32 1
  store i32 1, i32* %16, align 4
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 2
  store i32 1, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %19, i32 0, i32 3
  store i32 1, i32* %20, align 4
  %21 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 4
  store i32 1, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i32 0, i32 5
  store i32 1, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 6
  store i32 1, i32* %26, align 4
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 7
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %30 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %29, i32 0, i32 8
  store i32 178, i32* %30, align 4
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %3, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %31, i32 0, i32 9
  store i32 49753, i32* %32, align 4
  %33 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %34 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %33, i32 0, i32 0
  %35 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)** %34, align 8
  %36 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %37 = load i32, i32* @sw_reset_210, align 4
  %38 = call i32 %35(%struct.flexcop_device* %36, i32 %37, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %3)
  %39 = call i32 @msleep(i32 1)
  %40 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %41 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %40, i32 0, i32 1
  %42 = load void (%struct.TYPE_12__*, %struct.flexcop_device*, i32)*, void (%struct.TYPE_12__*, %struct.flexcop_device*, i32)** %41, align 8
  %43 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %44 = load i32, i32* @misc_204, align 4
  call void %42(%struct.TYPE_12__* sret %5, %struct.flexcop_device* %43, i32 %44)
  %45 = bitcast %struct.TYPE_12__* %4 to i8*
  %46 = bitcast %struct.TYPE_12__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %45, i8* align 8 %46, i64 56, i1 false)
  %47 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %47, i32 0, i32 0
  store i32 0, i32* %48, align 8
  %49 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %50 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %49, i32 0, i32 0
  %51 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)** %50, align 8
  %52 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %53 = load i32, i32* @misc_204, align 4
  %54 = call i32 %51(%struct.flexcop_device* %52, i32 %53, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %4)
  %55 = call i32 @msleep(i32 1)
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %4, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %56, i32 0, i32 0
  store i32 1, i32* %57, align 8
  %58 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %59 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %58, i32 0, i32 0
  %60 = load i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)*, i32 (%struct.flexcop_device*, i32, %struct.TYPE_12__*)** %59, align 8
  %61 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %62 = load i32, i32* @misc_204, align 4
  %63 = call i32 %60(%struct.flexcop_device* %61, i32 %62, %struct.TYPE_12__* byval(%struct.TYPE_12__) align 8 %4)
  ret void
}

declare dso_local i32 @msleep(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
