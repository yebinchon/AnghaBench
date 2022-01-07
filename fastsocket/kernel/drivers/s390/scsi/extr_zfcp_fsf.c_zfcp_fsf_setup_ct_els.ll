; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/scsi/extr_zfcp_fsf.c_zfcp_fsf_setup_ct_els.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.zfcp_fsf_req = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.scatterlist = type { i32 }

@FSF_CLASS_3 = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.zfcp_fsf_req*, %struct.scatterlist*, %struct.scatterlist*, i32, i32)* @zfcp_fsf_setup_ct_els to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @zfcp_fsf_setup_ct_els(%struct.zfcp_fsf_req* %0, %struct.scatterlist* %1, %struct.scatterlist* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.zfcp_fsf_req*, align 8
  %8 = alloca %struct.scatterlist*, align 8
  %9 = alloca %struct.scatterlist*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.zfcp_fsf_req* %0, %struct.zfcp_fsf_req** %7, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %8, align 8
  store %struct.scatterlist* %2, %struct.scatterlist** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %13 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %14 = load %struct.scatterlist*, %struct.scatterlist** %8, align 8
  %15 = load %struct.scatterlist*, %struct.scatterlist** %9, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @zfcp_fsf_setup_ct_els_sbals(%struct.zfcp_fsf_req* %13, %struct.scatterlist* %14, %struct.scatterlist* %15, i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load i32, i32* %12, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %5
  %21 = load i32, i32* %12, align 4
  store i32 %21, i32* %6, align 4
  br label %47

22:                                               ; preds = %5
  %23 = load i32, i32* @FSF_CLASS_3, align 4
  %24 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %25 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %24, i32 0, i32 0
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 1
  store i32 %23, i32* %29, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ugt i32 %30, 255
  br i1 %31, label %32, label %33

32:                                               ; preds = %22
  store i32 255, i32* %11, align 4
  br label %33

33:                                               ; preds = %32, %22
  %34 = load i32, i32* %11, align 4
  %35 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %36 = getelementptr inbounds %struct.zfcp_fsf_req, %struct.zfcp_fsf_req* %35, i32 0, i32 0
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  store i32 %34, i32* %40, align 4
  %41 = load %struct.zfcp_fsf_req*, %struct.zfcp_fsf_req** %7, align 8
  %42 = load i32, i32* %11, align 4
  %43 = add i32 %42, 10
  %44 = load i32, i32* @HZ, align 4
  %45 = mul i32 %43, %44
  %46 = call i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req* %41, i32 %45)
  store i32 0, i32* %6, align 4
  br label %47

47:                                               ; preds = %33, %20
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @zfcp_fsf_setup_ct_els_sbals(%struct.zfcp_fsf_req*, %struct.scatterlist*, %struct.scatterlist*, i32) #1

declare dso_local i32 @zfcp_fsf_start_timer(%struct.zfcp_fsf_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
