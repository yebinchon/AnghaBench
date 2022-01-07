; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_napi_del_all.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/vxge/extr_vxge-main.c_vxge_napi_del_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxgedev = type { i32, %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64 }

@MSI_X = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxgedev*)* @vxge_napi_del_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vxge_napi_del_all(%struct.vxgedev* %0) #0 {
  %2 = alloca %struct.vxgedev*, align 8
  %3 = alloca i32, align 4
  store %struct.vxgedev* %0, %struct.vxgedev** %2, align 8
  %4 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %5 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %4, i32 0, i32 3
  %6 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MSI_X, align 8
  %9 = icmp ne i64 %7, %8
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %12 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %11, i32 0, i32 2
  %13 = call i32 @netif_napi_del(i32* %12)
  br label %35

14:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %15

15:                                               ; preds = %31, %14
  %16 = load i32, i32* %3, align 4
  %17 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %18 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %15
  %22 = load %struct.vxgedev*, %struct.vxgedev** %2, align 8
  %23 = getelementptr inbounds %struct.vxgedev, %struct.vxgedev* %22, i32 0, i32 1
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i32, i32* %3, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %26
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = call i32 @netif_napi_del(i32* %29)
  br label %31

31:                                               ; preds = %21
  %32 = load i32, i32* %3, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %3, align 4
  br label %15

34:                                               ; preds = %15
  br label %35

35:                                               ; preds = %34, %10
  ret void
}

declare dso_local i32 @netif_napi_del(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
