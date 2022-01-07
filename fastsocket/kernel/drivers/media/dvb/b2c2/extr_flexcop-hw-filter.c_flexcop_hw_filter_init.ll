; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_hw_filter_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/media/dvb/b2c2/extr_flexcop-hw-filter.c_flexcop_hw_filter_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.flexcop_device = type { i32, i32 (%struct.flexcop_device*, i32, i32, i64)*, { i32, i64 } (%struct.flexcop_device*, i32)* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i64 }

@pid_filter_308 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @flexcop_hw_filter_init(%struct.flexcop_device* %0) #0 {
  %2 = alloca %struct.flexcop_device*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__, align 8
  %5 = alloca %struct.TYPE_6__, align 8
  store %struct.flexcop_device* %0, %struct.flexcop_device** %2, align 8
  store i32 0, i32* %3, align 4
  br label %6

6:                                                ; preds = %18, %1
  %7 = load i32, i32* %3, align 4
  %8 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %9 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = mul nsw i32 32, %10
  %12 = add nsw i32 6, %11
  %13 = icmp slt i32 %7, %12
  br i1 %13, label %14, label %21

14:                                               ; preds = %6
  %15 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @flexcop_pid_control(%struct.flexcop_device* %15, i32 %16, i32 8191, i32 0)
  br label %18

18:                                               ; preds = %14
  %19 = load i32, i32* %3, align 4
  %20 = add nsw i32 %19, 1
  store i32 %20, i32* %3, align 4
  br label %6

21:                                               ; preds = %6
  %22 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %23 = call i32 @flexcop_pid_group_filter(%struct.flexcop_device* %22, i32 0, i32 8160)
  %24 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %25 = call i32 @flexcop_pid_group_filter_ctrl(%struct.flexcop_device* %24, i32 0)
  %26 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %27 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %26, i32 0, i32 2
  %28 = load { i32, i64 } (%struct.flexcop_device*, i32)*, { i32, i64 } (%struct.flexcop_device*, i32)** %27, align 8
  %29 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %30 = load i32, i32* @pid_filter_308, align 4
  %31 = call { i32, i64 } %28(%struct.flexcop_device* %29, i32 %30)
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %5, i32 0, i32 0
  %33 = bitcast %struct.TYPE_5__* %32 to { i32, i64 }*
  %34 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 0
  %35 = extractvalue { i32, i64 } %31, 0
  store i32 %35, i32* %34, align 8
  %36 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %33, i32 0, i32 1
  %37 = extractvalue { i32, i64 } %31, 1
  store i64 %37, i64* %36, align 8
  %38 = bitcast %struct.TYPE_6__* %4 to i8*
  %39 = bitcast %struct.TYPE_6__* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  store i32 1, i32* %41, align 8
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 1
  store i64 0, i64* %43, align 8
  %44 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %45 = getelementptr inbounds %struct.flexcop_device, %struct.flexcop_device* %44, i32 0, i32 1
  %46 = load i32 (%struct.flexcop_device*, i32, i32, i64)*, i32 (%struct.flexcop_device*, i32, i32, i64)** %45, align 8
  %47 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %48 = load i32, i32* @pid_filter_308, align 4
  %49 = bitcast %struct.TYPE_6__* %4 to { i32, i64 }*
  %50 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = getelementptr inbounds { i32, i64 }, { i32, i64 }* %49, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 %46(%struct.flexcop_device* %47, i32 %48, i32 %51, i64 %53)
  %55 = load %struct.flexcop_device*, %struct.flexcop_device** %2, align 8
  %56 = call i32 @flexcop_null_filter_ctrl(%struct.flexcop_device* %55, i32 1)
  ret void
}

declare dso_local i32 @flexcop_pid_control(%struct.flexcop_device*, i32, i32, i32) #1

declare dso_local i32 @flexcop_pid_group_filter(%struct.flexcop_device*, i32, i32) #1

declare dso_local i32 @flexcop_pid_group_filter_ctrl(%struct.flexcop_device*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @flexcop_null_filter_ctrl(%struct.flexcop_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
