; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_register.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/scsi/cxgbi/extr_libcxgbi.c_cxgbi_device_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cxgbi_device = type { i8*, i32, %struct.TYPE_2__, %struct.cxgbi_hba**, %struct.net_device** }
%struct.TYPE_2__ = type { i32 }
%struct.cxgbi_hba = type { i32 }
%struct.net_device = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"nport %d, OOM.\0A\00", align 1
@cdev_mutex = common dso_local global i32 0, align 4
@cdev_list = common dso_local global i32 0, align 4
@CXGBI_DBG_DEV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"cdev 0x%p, p# %u.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cxgbi_device* @cxgbi_device_register(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cxgbi_device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cxgbi_device*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = zext i32 %7 to i64
  %9 = add i64 32, %8
  %10 = load i32, i32* %5, align 4
  %11 = zext i32 %10 to i64
  %12 = mul i64 %11, 16
  %13 = add i64 %9, %12
  %14 = trunc i64 %13 to i32
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.cxgbi_device* @kzalloc(i32 %14, i32 %15)
  store %struct.cxgbi_device* %16, %struct.cxgbi_device** %6, align 8
  %17 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %18 = icmp ne %struct.cxgbi_device* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = call i32 @pr_warn(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i32 %20)
  store %struct.cxgbi_device* null, %struct.cxgbi_device** %3, align 8
  br label %68

22:                                               ; preds = %2
  %23 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %24 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %23, i64 1
  %25 = bitcast %struct.cxgbi_device* %24 to %struct.net_device**
  %26 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %27 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %26, i32 0, i32 4
  store %struct.net_device** %25, %struct.net_device*** %27, align 8
  %28 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %29 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %28, i32 0, i32 4
  %30 = load %struct.net_device**, %struct.net_device*** %29, align 8
  %31 = bitcast %struct.net_device** %30 to i8*
  %32 = load i32, i32* %5, align 4
  %33 = zext i32 %32 to i64
  %34 = mul i64 %33, 8
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = bitcast i8* %35 to %struct.cxgbi_hba**
  %37 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %38 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %37, i32 0, i32 3
  store %struct.cxgbi_hba** %36, %struct.cxgbi_hba*** %38, align 8
  %39 = load i32, i32* %4, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %52

41:                                               ; preds = %22
  %42 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %43 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %42, i32 0, i32 3
  %44 = load %struct.cxgbi_hba**, %struct.cxgbi_hba*** %43, align 8
  %45 = bitcast %struct.cxgbi_hba** %44 to i8*
  %46 = load i32, i32* %5, align 4
  %47 = zext i32 %46 to i64
  %48 = mul i64 %47, 8
  %49 = getelementptr inbounds i8, i8* %45, i64 %48
  %50 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %51 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %50, i32 0, i32 0
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %41, %22
  %53 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %54 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %53, i32 0, i32 2
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  %56 = call i32 @spin_lock_init(i32* %55)
  %57 = call i32 @mutex_lock(i32* @cdev_mutex)
  %58 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %59 = getelementptr inbounds %struct.cxgbi_device, %struct.cxgbi_device* %58, i32 0, i32 1
  %60 = call i32 @list_add_tail(i32* %59, i32* @cdev_list)
  %61 = call i32 @mutex_unlock(i32* @cdev_mutex)
  %62 = load i32, i32* @CXGBI_DBG_DEV, align 4
  %63 = shl i32 1, %62
  %64 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @log_debug(i32 %63, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), %struct.cxgbi_device* %64, i32 %65)
  %67 = load %struct.cxgbi_device*, %struct.cxgbi_device** %6, align 8
  store %struct.cxgbi_device* %67, %struct.cxgbi_device** %3, align 8
  br label %68

68:                                               ; preds = %52, %19
  %69 = load %struct.cxgbi_device*, %struct.cxgbi_device** %3, align 8
  ret %struct.cxgbi_device* %69
}

declare dso_local %struct.cxgbi_device* @kzalloc(i32, i32) #1

declare dso_local i32 @pr_warn(i8*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @log_debug(i32, i8*, %struct.cxgbi_device*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
