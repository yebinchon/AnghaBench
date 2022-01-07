; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_alloc_sg_env.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_alloc_sg_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.zfcp_gpn_ft = type { i32, i32 }
%struct.ct_iu_gpn_ft_req = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.zfcp_gpn_ft* (i32)* @zfcp_alloc_sg_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.zfcp_gpn_ft* @zfcp_alloc_sg_env(i32 %0) #0 {
  %2 = alloca %struct.zfcp_gpn_ft*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.zfcp_gpn_ft*, align 8
  %5 = alloca %struct.ct_iu_gpn_ft_req*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* @GFP_KERNEL, align 4
  %7 = call %struct.zfcp_gpn_ft* @kzalloc(i32 8, i32 %6)
  store %struct.zfcp_gpn_ft* %7, %struct.zfcp_gpn_ft** %4, align 8
  %8 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %9 = icmp ne %struct.zfcp_gpn_ft* %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  store %struct.zfcp_gpn_ft* null, %struct.zfcp_gpn_ft** %2, align 8
  br label %38

11:                                               ; preds = %1
  %12 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call %struct.ct_iu_gpn_ft_req* @kmem_cache_zalloc(i32 %12, i32 %13)
  store %struct.ct_iu_gpn_ft_req* %14, %struct.ct_iu_gpn_ft_req** %5, align 8
  %15 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %5, align 8
  %16 = icmp ne %struct.ct_iu_gpn_ft_req* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %11
  %18 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %19 = call i32 @kfree(%struct.zfcp_gpn_ft* %18)
  store %struct.zfcp_gpn_ft* null, %struct.zfcp_gpn_ft** %4, align 8
  br label %36

20:                                               ; preds = %11
  %21 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %22 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %21, i32 0, i32 1
  %23 = load %struct.ct_iu_gpn_ft_req*, %struct.ct_iu_gpn_ft_req** %5, align 8
  %24 = call i32 @sg_init_one(i32* %22, %struct.ct_iu_gpn_ft_req* %23, i32 4)
  %25 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %26 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %3, align 4
  %29 = call i64 @zfcp_sg_setup_table(i32 %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %20
  %32 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  %33 = load i32, i32* %3, align 4
  %34 = call i32 @zfcp_free_sg_env(%struct.zfcp_gpn_ft* %32, i32 %33)
  store %struct.zfcp_gpn_ft* null, %struct.zfcp_gpn_ft** %4, align 8
  br label %35

35:                                               ; preds = %31, %20
  br label %36

36:                                               ; preds = %35, %17
  %37 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %4, align 8
  store %struct.zfcp_gpn_ft* %37, %struct.zfcp_gpn_ft** %2, align 8
  br label %38

38:                                               ; preds = %36, %10
  %39 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %2, align 8
  ret %struct.zfcp_gpn_ft* %39
}

declare dso_local %struct.zfcp_gpn_ft* @kzalloc(i32, i32) #1

declare dso_local %struct.ct_iu_gpn_ft_req* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.zfcp_gpn_ft*) #1

declare dso_local i32 @sg_init_one(i32*, %struct.ct_iu_gpn_ft_req*, i32) #1

declare dso_local i64 @zfcp_sg_setup_table(i32, i32) #1

declare dso_local i32 @zfcp_free_sg_env(%struct.zfcp_gpn_ft*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
