; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_update_mc_addr_list_vf.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/igbvf/extr_vf.c_e1000_update_mc_addr_list_vf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.e1000_mbx_info }
%struct.e1000_mbx_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 (%struct.e1000_hw.0*, i32*, i32)* }
%struct.e1000_hw.0 = type opaque

@E1000_VFMAILBOX_SIZE = common dso_local global i32 0, align 4
@E1000_VF_SET_MULTICAST = common dso_local global i32 0, align 4
@E1000_VT_MSGINFO_SHIFT = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.e1000_hw*, i32*, i32, i32, i32)* @e1000_update_mc_addr_list_vf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @e1000_update_mc_addr_list_vf(%struct.e1000_hw* %0, i32* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.e1000_mbx_info*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %19 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %18, i32 0, i32 0
  store %struct.e1000_mbx_info* %19, %struct.e1000_mbx_info** %11, align 8
  %20 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %12, align 8
  %23 = alloca i32, i64 %21, align 16
  store i64 %21, i64* %13, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32* %24, i32** %14, align 8
  %25 = load i32, i32* %8, align 4
  %26 = icmp sgt i32 %25, 30
  br i1 %26, label %27, label %28

27:                                               ; preds = %5
  br label %30

28:                                               ; preds = %5
  %29 = load i32, i32* %8, align 4
  br label %30

30:                                               ; preds = %28, %27
  %31 = phi i32 [ 30, %27 ], [ %29, %28 ]
  store i32 %31, i32* %16, align 4
  %32 = load i32, i32* @E1000_VF_SET_MULTICAST, align 4
  %33 = getelementptr inbounds i32, i32* %23, i64 0
  store i32 %32, i32* %33, align 16
  %34 = load i32, i32* %16, align 4
  %35 = load i32, i32* @E1000_VT_MSGINFO_SHIFT, align 4
  %36 = shl i32 %34, %35
  %37 = getelementptr inbounds i32, i32* %23, i64 0
  %38 = load i32, i32* %37, align 16
  %39 = or i32 %38, %36
  store i32 %39, i32* %37, align 16
  store i32 0, i32* %17, align 4
  br label %40

40:                                               ; preds = %58, %30
  %41 = load i32, i32* %17, align 4
  %42 = load i32, i32* %16, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %46 = load i32*, i32** %7, align 8
  %47 = call i32 @e1000_hash_mc_addr_vf(%struct.e1000_hw* %45, i32* %46)
  store i32 %47, i32* %15, align 4
  %48 = load i32, i32* %15, align 4
  %49 = and i32 %48, 65535
  %50 = load i32*, i32** %14, align 8
  %51 = load i32, i32* %17, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i32, i32* %50, i64 %52
  store i32 %49, i32* %53, align 4
  %54 = load i32, i32* @ETH_ALEN, align 4
  %55 = load i32*, i32** %7, align 8
  %56 = sext i32 %54 to i64
  %57 = getelementptr inbounds i32, i32* %55, i64 %56
  store i32* %57, i32** %7, align 8
  br label %58

58:                                               ; preds = %44
  %59 = load i32, i32* %17, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %17, align 4
  br label %40

61:                                               ; preds = %40
  %62 = load %struct.e1000_mbx_info*, %struct.e1000_mbx_info** %11, align 8
  %63 = getelementptr inbounds %struct.e1000_mbx_info, %struct.e1000_mbx_info* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32 (%struct.e1000_hw.0*, i32*, i32)*, i32 (%struct.e1000_hw.0*, i32*, i32)** %64, align 8
  %66 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %67 = bitcast %struct.e1000_hw* %66 to %struct.e1000_hw.0*
  %68 = load i32, i32* @E1000_VFMAILBOX_SIZE, align 4
  %69 = call i32 %65(%struct.e1000_hw.0* %67, i32* %23, i32 %68)
  %70 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %70)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @e1000_hash_mc_addr_vf(%struct.e1000_hw*, i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
