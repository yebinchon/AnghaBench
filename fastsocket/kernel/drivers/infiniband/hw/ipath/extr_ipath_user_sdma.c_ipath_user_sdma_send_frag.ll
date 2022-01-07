; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_send_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/infiniband/hw/ipath/extr_ipath_user_sdma.c_ipath_user_sdma_send_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipath_devdata = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32* }
%struct.ipath_user_sdma_pkt = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ipath_devdata*, %struct.ipath_user_sdma_pkt*, i32, i32, i64)* @ipath_user_sdma_send_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ipath_user_sdma_send_frag(%struct.ipath_devdata* %0, %struct.ipath_user_sdma_pkt* %1, i32 %2, i32 %3, i64 %4) #0 {
  %6 = alloca %struct.ipath_devdata*, align 8
  %7 = alloca %struct.ipath_user_sdma_pkt*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store %struct.ipath_devdata* %0, %struct.ipath_devdata** %6, align 8
  store %struct.ipath_user_sdma_pkt* %1, %struct.ipath_user_sdma_pkt** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i64 %4, i64* %10, align 8
  %15 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %16 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %15, i32 0, i32 1
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = load i32, i32* %8, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %25 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %24, i32 0, i32 1
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = load i32, i32* %8, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = trunc i64 %31 to i32
  %33 = add nsw i32 %23, %32
  store i32 %33, i32* %11, align 4
  %34 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %35 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %8, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = trunc i64 %41 to i32
  %43 = sdiv i32 %42, 4
  store i32 %43, i32* %12, align 4
  %44 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %45 = getelementptr inbounds %struct.ipath_devdata, %struct.ipath_devdata* %44, i32 0, i32 0
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i64, i64* %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 0
  store i32* %51, i32** %13, align 8
  %52 = load %struct.ipath_devdata*, %struct.ipath_devdata** %6, align 8
  %53 = load i32, i32* %11, align 4
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %9, align 4
  %56 = call i32 @ipath_sdma_make_desc0(%struct.ipath_devdata* %52, i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %14, align 4
  %57 = load i32, i32* %8, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %5
  %60 = load i32, i32* %14, align 4
  %61 = call i32 @ipath_sdma_make_first_desc0(i32 %60)
  store i32 %61, i32* %14, align 4
  br label %62

62:                                               ; preds = %59, %5
  %63 = load i32, i32* %8, align 4
  %64 = load %struct.ipath_user_sdma_pkt*, %struct.ipath_user_sdma_pkt** %7, align 8
  %65 = getelementptr inbounds %struct.ipath_user_sdma_pkt, %struct.ipath_user_sdma_pkt* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 8
  %67 = sub nsw i32 %66, 1
  %68 = icmp eq i32 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %14, align 4
  %71 = call i32 @ipath_sdma_make_last_desc0(i32 %70)
  store i32 %71, i32* %14, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = load i32, i32* %14, align 4
  %74 = load i32*, i32** %13, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  store i32 %73, i32* %75, align 4
  %76 = load i32, i32* %11, align 4
  %77 = call i32 @ipath_sdma_make_desc1(i32 %76)
  %78 = load i32*, i32** %13, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  store i32 %77, i32* %79, align 4
  ret void
}

declare dso_local i32 @ipath_sdma_make_desc0(%struct.ipath_devdata*, i32, i32, i32) #1

declare dso_local i32 @ipath_sdma_make_first_desc0(i32) #1

declare dso_local i32 @ipath_sdma_make_last_desc0(i32) #1

declare dso_local i32 @ipath_sdma_make_desc1(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
