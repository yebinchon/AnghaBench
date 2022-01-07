; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_remove_one.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/core/extr_user_mad.c_ib_umad_remove_one.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_device = type { i32 }
%struct.ib_umad_device = type { i32, i32, i32, i32* }

@umad_client = common dso_local global i32 0, align 4
@ib_umad_release_dev = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ib_device*)* @ib_umad_remove_one to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ib_umad_remove_one(%struct.ib_device* %0) #0 {
  %2 = alloca %struct.ib_device*, align 8
  %3 = alloca %struct.ib_umad_device*, align 8
  %4 = alloca i32, align 4
  store %struct.ib_device* %0, %struct.ib_device** %2, align 8
  %5 = load %struct.ib_device*, %struct.ib_device** %2, align 8
  %6 = call %struct.ib_umad_device* @ib_get_client_data(%struct.ib_device* %5, i32* @umad_client)
  store %struct.ib_umad_device* %6, %struct.ib_umad_device** %3, align 8
  %7 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %8 = icmp ne %struct.ib_umad_device* %7, null
  br i1 %8, label %10, label %9

9:                                                ; preds = %1
  br label %37

10:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %11

11:                                               ; preds = %29, %10
  %12 = load i32, i32* %4, align 4
  %13 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %14 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %17 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = sub nsw i32 %15, %18
  %20 = icmp sle i32 %12, %19
  br i1 %20, label %21, label %32

21:                                               ; preds = %11
  %22 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %23 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %22, i32 0, i32 3
  %24 = load i32*, i32** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, i32* %24, i64 %26
  %28 = call i32 @ib_umad_kill_port(i32* %27)
  br label %29

29:                                               ; preds = %21
  %30 = load i32, i32* %4, align 4
  %31 = add nsw i32 %30, 1
  store i32 %31, i32* %4, align 4
  br label %11

32:                                               ; preds = %11
  %33 = load %struct.ib_umad_device*, %struct.ib_umad_device** %3, align 8
  %34 = getelementptr inbounds %struct.ib_umad_device, %struct.ib_umad_device* %33, i32 0, i32 2
  %35 = load i32, i32* @ib_umad_release_dev, align 4
  %36 = call i32 @kref_put(i32* %34, i32 %35)
  br label %37

37:                                               ; preds = %32, %9
  ret void
}

declare dso_local %struct.ib_umad_device* @ib_get_client_data(%struct.ib_device*, i32*) #1

declare dso_local i32 @ib_umad_kill_port(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
