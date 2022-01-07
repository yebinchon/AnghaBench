; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_create.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/md/extr_dm-ioctl.c_dev_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dm_ioctl = type { i32, i64*, i32, i32 }
%struct.mapped_device = type { i32 }

@DM_ANY_MINOR = common dso_local global i32 0, align 4
@DM_PERSISTENT_DEV_FLAG = common dso_local global i32 0, align 4
@DM_INACTIVE_PRESENT_FLAG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dm_ioctl*, i64)* @dev_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dev_create(%struct.dm_ioctl* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.dm_ioctl*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.mapped_device*, align 8
  store %struct.dm_ioctl* %0, %struct.dm_ioctl** %4, align 8
  store i64 %1, i64* %5, align 8
  %9 = load i32, i32* @DM_ANY_MINOR, align 4
  store i32 %9, i32* %7, align 4
  %10 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %11 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %10, i32 0, i32 2
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @check_name(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %2
  %17 = load i32, i32* %6, align 4
  store i32 %17, i32* %3, align 4
  br label %76

18:                                               ; preds = %2
  %19 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %20 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @DM_PERSISTENT_DEV_FLAG, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %18
  %26 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %27 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @huge_decode_dev(i32 %28)
  %30 = call i32 @MINOR(i32 %29)
  store i32 %30, i32* %7, align 4
  br label %31

31:                                               ; preds = %25, %18
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @dm_create(i32 %32, %struct.mapped_device** %8)
  store i32 %33, i32* %6, align 4
  %34 = load i32, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* %6, align 4
  store i32 %37, i32* %3, align 4
  br label %76

38:                                               ; preds = %31
  %39 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %40 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %43 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %42, i32 0, i32 1
  %44 = load i64*, i64** %43, align 8
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %38
  %48 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %49 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %48, i32 0, i32 1
  %50 = load i64*, i64** %49, align 8
  br label %52

51:                                               ; preds = %38
  br label %52

52:                                               ; preds = %51, %47
  %53 = phi i64* [ %50, %47 ], [ null, %51 ]
  %54 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %55 = call i32 @dm_hash_insert(i32 %41, i64* %53, %struct.mapped_device* %54)
  store i32 %55, i32* %6, align 4
  %56 = load i32, i32* %6, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %60 = call i32 @dm_put(%struct.mapped_device* %59)
  %61 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %62 = call i32 @dm_destroy(%struct.mapped_device* %61)
  %63 = load i32, i32* %6, align 4
  store i32 %63, i32* %3, align 4
  br label %76

64:                                               ; preds = %52
  %65 = load i32, i32* @DM_INACTIVE_PRESENT_FLAG, align 4
  %66 = xor i32 %65, -1
  %67 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %68 = getelementptr inbounds %struct.dm_ioctl, %struct.dm_ioctl* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 8
  %71 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %72 = load %struct.dm_ioctl*, %struct.dm_ioctl** %4, align 8
  %73 = call i32 @__dev_status(%struct.mapped_device* %71, %struct.dm_ioctl* %72)
  %74 = load %struct.mapped_device*, %struct.mapped_device** %8, align 8
  %75 = call i32 @dm_put(%struct.mapped_device* %74)
  store i32 0, i32* %3, align 4
  br label %76

76:                                               ; preds = %64, %58, %36, %16
  %77 = load i32, i32* %3, align 4
  ret i32 %77
}

declare dso_local i32 @check_name(i32) #1

declare dso_local i32 @MINOR(i32) #1

declare dso_local i32 @huge_decode_dev(i32) #1

declare dso_local i32 @dm_create(i32, %struct.mapped_device**) #1

declare dso_local i32 @dm_hash_insert(i32, i64*, %struct.mapped_device*) #1

declare dso_local i32 @dm_put(%struct.mapped_device*) #1

declare dso_local i32 @dm_destroy(%struct.mapped_device*) #1

declare dso_local i32 @__dev_status(%struct.mapped_device*, %struct.dm_ioctl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
