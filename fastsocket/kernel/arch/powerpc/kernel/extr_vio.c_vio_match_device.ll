; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vio.c_vio_match_device.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/arch/powerpc/kernel/extr_vio.c_vio_match_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vio_device_id = type { i8*, i32 }
%struct.vio_dev = type { %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.vio_device_id* (%struct.vio_device_id*, %struct.vio_dev*)* @vio_match_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.vio_device_id* @vio_match_device(%struct.vio_device_id* %0, %struct.vio_dev* %1) #0 {
  %3 = alloca %struct.vio_device_id*, align 8
  %4 = alloca %struct.vio_device_id*, align 8
  %5 = alloca %struct.vio_dev*, align 8
  store %struct.vio_device_id* %0, %struct.vio_device_id** %4, align 8
  store %struct.vio_dev* %1, %struct.vio_dev** %5, align 8
  br label %6

6:                                                ; preds = %40, %2
  %7 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %8 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %7, i32 0, i32 0
  %9 = load i8*, i8** %8, align 8
  %10 = getelementptr inbounds i8, i8* %9, i64 0
  %11 = load i8, i8* %10, align 1
  %12 = sext i8 %11 to i32
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %43

14:                                               ; preds = %6
  %15 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %16 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %19 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %18, i32 0, i32 0
  %20 = load i8*, i8** %19, align 8
  %21 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %22 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %21, i32 0, i32 0
  %23 = load i8*, i8** %22, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = call i64 @strncmp(i32 %17, i8* %20, i32 %24)
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %40

27:                                               ; preds = %14
  %28 = load %struct.vio_dev*, %struct.vio_dev** %5, align 8
  %29 = getelementptr inbounds %struct.vio_dev, %struct.vio_dev* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %34 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i64 @of_device_is_compatible(i32 %32, i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %27
  %39 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  store %struct.vio_device_id* %39, %struct.vio_device_id** %3, align 8
  br label %44

40:                                               ; preds = %27, %14
  %41 = load %struct.vio_device_id*, %struct.vio_device_id** %4, align 8
  %42 = getelementptr inbounds %struct.vio_device_id, %struct.vio_device_id* %41, i32 1
  store %struct.vio_device_id* %42, %struct.vio_device_id** %4, align 8
  br label %6

43:                                               ; preds = %6
  store %struct.vio_device_id* null, %struct.vio_device_id** %3, align 8
  br label %44

44:                                               ; preds = %43, %38
  %45 = load %struct.vio_device_id*, %struct.vio_device_id** %3, align 8
  ret %struct.vio_device_id* %45
}

declare dso_local i64 @strncmp(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @of_device_is_compatible(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
