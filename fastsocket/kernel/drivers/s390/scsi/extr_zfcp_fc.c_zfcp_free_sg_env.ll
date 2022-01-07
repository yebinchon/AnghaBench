; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_free_sg_env.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_free_sg_env.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.zfcp_gpn_ft = type { i32, %struct.scatterlist }
%struct.scatterlist = type { i32 }

@zfcp_data = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.zfcp_gpn_ft*, i32)* @zfcp_free_sg_env to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_free_sg_env(%struct.zfcp_gpn_ft* %0, i32 %1) #0 {
  %3 = alloca %struct.zfcp_gpn_ft*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.scatterlist*, align 8
  store %struct.zfcp_gpn_ft* %0, %struct.zfcp_gpn_ft** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %3, align 8
  %7 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %6, i32 0, i32 1
  store %struct.scatterlist* %7, %struct.scatterlist** %5, align 8
  %8 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @zfcp_data, i32 0, i32 0), align 4
  %9 = load %struct.scatterlist*, %struct.scatterlist** %5, align 8
  %10 = call i32 @sg_virt(%struct.scatterlist* %9)
  %11 = call i32 @kmem_cache_free(i32 %8, i32 %10)
  %12 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %3, align 8
  %13 = getelementptr inbounds %struct.zfcp_gpn_ft, %struct.zfcp_gpn_ft* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @zfcp_sg_free_table(i32 %14, i32 %15)
  %17 = load %struct.zfcp_gpn_ft*, %struct.zfcp_gpn_ft** %3, align 8
  %18 = call i32 @kfree(%struct.zfcp_gpn_ft* %17)
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, i32) #1

declare dso_local i32 @sg_virt(%struct.scatterlist*) #1

declare dso_local i32 @zfcp_sg_free_table(i32, i32) #1

declare dso_local i32 @kfree(%struct.zfcp_gpn_ft*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
