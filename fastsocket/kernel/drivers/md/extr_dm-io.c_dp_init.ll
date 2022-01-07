; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dp_init.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-io.c_dp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_io_request = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }
%struct.dpages = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_io_request*, %struct.dpages*)* @dp_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dp_init(%struct.dm_io_request* %0, %struct.dpages* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_io_request*, align 8
  %5 = alloca %struct.dpages*, align 8
  store %struct.dm_io_request* %0, %struct.dm_io_request** %4, align 8
  store %struct.dpages* %1, %struct.dpages** %5, align 8
  %6 = load %struct.dm_io_request*, %struct.dm_io_request** %4, align 8
  %7 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %46 [
    i32 129, label %10
    i32 131, label %22
    i32 128, label %30
    i32 130, label %38
  ]

10:                                               ; preds = %2
  %11 = load %struct.dpages*, %struct.dpages** %5, align 8
  %12 = load %struct.dm_io_request*, %struct.dm_io_request** %4, align 8
  %13 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.dm_io_request*, %struct.dm_io_request** %4, align 8
  %18 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @list_dp_init(%struct.dpages* %11, i32 %16, i32 %20)
  br label %49

22:                                               ; preds = %2
  %23 = load %struct.dpages*, %struct.dpages** %5, align 8
  %24 = load %struct.dm_io_request*, %struct.dm_io_request** %4, align 8
  %25 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bvec_dp_init(%struct.dpages* %23, i32 %28)
  br label %49

30:                                               ; preds = %2
  %31 = load %struct.dpages*, %struct.dpages** %5, align 8
  %32 = load %struct.dm_io_request*, %struct.dm_io_request** %4, align 8
  %33 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @vm_dp_init(%struct.dpages* %31, i32 %36)
  br label %49

38:                                               ; preds = %2
  %39 = load %struct.dpages*, %struct.dpages** %5, align 8
  %40 = load %struct.dm_io_request*, %struct.dm_io_request** %4, align 8
  %41 = getelementptr inbounds %struct.dm_io_request, %struct.dm_io_request* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @km_dp_init(%struct.dpages* %39, i32 %44)
  br label %49

46:                                               ; preds = %2
  %47 = load i32, i32* @EINVAL, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %50

49:                                               ; preds = %38, %30, %22, %10
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local i32 @list_dp_init(%struct.dpages*, i32, i32) #1

declare dso_local i32 @bvec_dp_init(%struct.dpages*, i32) #1

declare dso_local i32 @vm_dp_init(%struct.dpages*, i32) #1

declare dso_local i32 @km_dp_init(%struct.dpages*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
