; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_get_nic_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/benet/extr_be_cmds.c_be_get_nic_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.be_nic_res_desc = type { i32 }
%struct.be_res_desc_hdr = type { i64, i32 }

@NIC_RESOURCE_DESC_TYPE_V0 = common dso_local global i64 0, align 8
@NIC_RESOURCE_DESC_TYPE_V1 = common dso_local global i64 0, align 8
@RESOURCE_DESC_SIZE_V0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.be_nic_res_desc* (i32*, i32)* @be_get_nic_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.be_nic_res_desc* @be_get_nic_desc(i32* %0, i32 %1) #0 {
  %3 = alloca %struct.be_nic_res_desc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.be_res_desc_hdr*, align 8
  %7 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32*, i32** %4, align 8
  %9 = bitcast i32* %8 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %9, %struct.be_res_desc_hdr** %6, align 8
  store i32 0, i32* %7, align 4
  br label %10

10:                                               ; preds = %49, %2
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %11, %12
  br i1 %13, label %14, label %52

14:                                               ; preds = %10
  %15 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %16 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @NIC_RESOURCE_DESC_TYPE_V0, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %26, label %20

20:                                               ; preds = %14
  %21 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %22 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @NIC_RESOURCE_DESC_TYPE_V1, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %29

26:                                               ; preds = %20, %14
  %27 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %28 = bitcast %struct.be_res_desc_hdr* %27 to %struct.be_nic_res_desc*
  store %struct.be_nic_res_desc* %28, %struct.be_nic_res_desc** %3, align 8
  br label %53

29:                                               ; preds = %20
  %30 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %31 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %37

35:                                               ; preds = %29
  %36 = load i32, i32* @RESOURCE_DESC_SIZE_V0, align 4
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ %32, %34 ], [ %36, %35 ]
  %39 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %40 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %42 = bitcast %struct.be_res_desc_hdr* %41 to i8*
  %43 = load %struct.be_res_desc_hdr*, %struct.be_res_desc_hdr** %6, align 8
  %44 = getelementptr inbounds %struct.be_res_desc_hdr, %struct.be_res_desc_hdr* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = sext i32 %45 to i64
  %47 = getelementptr i8, i8* %42, i64 %46
  %48 = bitcast i8* %47 to %struct.be_res_desc_hdr*
  store %struct.be_res_desc_hdr* %48, %struct.be_res_desc_hdr** %6, align 8
  br label %49

49:                                               ; preds = %37
  %50 = load i32, i32* %7, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %7, align 4
  br label %10

52:                                               ; preds = %10
  store %struct.be_nic_res_desc* null, %struct.be_nic_res_desc** %3, align 8
  br label %53

53:                                               ; preds = %52, %26
  %54 = load %struct.be_nic_res_desc*, %struct.be_nic_res_desc** %3, align 8
  ret %struct.be_nic_res_desc* %54
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
