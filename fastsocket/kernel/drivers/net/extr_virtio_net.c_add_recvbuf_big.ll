; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_add_recvbuf_big.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_virtio_net.c_add_recvbuf_big.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.virtnet_info = type { i32 }
%struct.page = type { i64 }
%struct.scatterlist = type { i32 }

@MAX_SKB_FRAGS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.virtnet_info*, i32)* @add_recvbuf_big to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @add_recvbuf_big(%struct.virtnet_info* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.virtnet_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.page*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.virtnet_info* %0, %struct.virtnet_info** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %16 = add nsw i32 %15, 2
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %6, align 8
  %19 = alloca %struct.scatterlist, i64 %17, align 16
  store i64 %17, i64* %7, align 8
  store %struct.page* null, %struct.page** %9, align 8
  %20 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %21 = add nsw i32 %20, 1
  store i32 %21, i32* %11, align 4
  br label %22

22:                                               ; preds = %54, %2
  %23 = load i32, i32* %11, align 4
  %24 = icmp sgt i32 %23, 1
  br i1 %24, label %25, label %57

25:                                               ; preds = %22
  %26 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call %struct.page* @get_a_page(%struct.virtnet_info* %26, i32 %27)
  store %struct.page* %28, %struct.page** %8, align 8
  %29 = load %struct.page*, %struct.page** %8, align 8
  %30 = icmp ne %struct.page* %29, null
  br i1 %30, label %41, label %31

31:                                               ; preds = %25
  %32 = load %struct.page*, %struct.page** %9, align 8
  %33 = icmp ne %struct.page* %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %36 = load %struct.page*, %struct.page** %9, align 8
  %37 = call i32 @give_pages(%struct.virtnet_info* %35, %struct.page* %36)
  br label %38

38:                                               ; preds = %34, %31
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %103

41:                                               ; preds = %25
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 %43
  %45 = load %struct.page*, %struct.page** %8, align 8
  %46 = call i8* @page_address(%struct.page* %45)
  %47 = load i32, i32* @PAGE_SIZE, align 4
  %48 = call i32 @sg_set_buf(%struct.scatterlist* %44, i8* %46, i32 %47)
  %49 = load %struct.page*, %struct.page** %9, align 8
  %50 = ptrtoint %struct.page* %49 to i64
  %51 = load %struct.page*, %struct.page** %8, align 8
  %52 = getelementptr inbounds %struct.page, %struct.page* %51, i32 0, i32 0
  store i64 %50, i64* %52, align 8
  %53 = load %struct.page*, %struct.page** %8, align 8
  store %struct.page* %53, %struct.page** %9, align 8
  br label %54

54:                                               ; preds = %41
  %55 = load i32, i32* %11, align 4
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %11, align 4
  br label %22

57:                                               ; preds = %22
  %58 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = call %struct.page* @get_a_page(%struct.virtnet_info* %58, i32 %59)
  store %struct.page* %60, %struct.page** %8, align 8
  %61 = load %struct.page*, %struct.page** %8, align 8
  %62 = icmp ne %struct.page* %61, null
  br i1 %62, label %69, label %63

63:                                               ; preds = %57
  %64 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %65 = load %struct.page*, %struct.page** %9, align 8
  %66 = call i32 @give_pages(%struct.virtnet_info* %64, %struct.page* %65)
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %103

69:                                               ; preds = %57
  %70 = load %struct.page*, %struct.page** %8, align 8
  %71 = call i8* @page_address(%struct.page* %70)
  store i8* %71, i8** %10, align 8
  %72 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 0
  %73 = load i8*, i8** %10, align 8
  %74 = call i32 @sg_set_buf(%struct.scatterlist* %72, i8* %73, i32 4)
  store i32 4, i32* %13, align 4
  %75 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %19, i64 1
  %76 = load i8*, i8** %10, align 8
  %77 = load i32, i32* %13, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i8, i8* %76, i64 %78
  %80 = load i32, i32* @PAGE_SIZE, align 4
  %81 = load i32, i32* %13, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @sg_set_buf(%struct.scatterlist* %75, i8* %79, i32 %82)
  %84 = load %struct.page*, %struct.page** %9, align 8
  %85 = ptrtoint %struct.page* %84 to i64
  %86 = load %struct.page*, %struct.page** %8, align 8
  %87 = getelementptr inbounds %struct.page, %struct.page* %86, i32 0, i32 0
  store i64 %85, i64* %87, align 8
  %88 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %89 = getelementptr inbounds %struct.virtnet_info, %struct.virtnet_info* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = load i32, i32* @MAX_SKB_FRAGS, align 4
  %92 = add nsw i32 %91, 2
  %93 = load %struct.page*, %struct.page** %8, align 8
  %94 = call i32 @virtqueue_add_buf(i32 %90, %struct.scatterlist* %19, i32 0, i32 %92, %struct.page* %93)
  store i32 %94, i32* %12, align 4
  %95 = load i32, i32* %12, align 4
  %96 = icmp slt i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %69
  %98 = load %struct.virtnet_info*, %struct.virtnet_info** %4, align 8
  %99 = load %struct.page*, %struct.page** %8, align 8
  %100 = call i32 @give_pages(%struct.virtnet_info* %98, %struct.page* %99)
  br label %101

101:                                              ; preds = %97, %69
  %102 = load i32, i32* %12, align 4
  store i32 %102, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %103

103:                                              ; preds = %101, %63, %38
  %104 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %104)
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.page* @get_a_page(%struct.virtnet_info*, i32) #2

declare dso_local i32 @give_pages(%struct.virtnet_info*, %struct.page*) #2

declare dso_local i32 @sg_set_buf(%struct.scatterlist*, i8*, i32) #2

declare dso_local i8* @page_address(%struct.page*) #2

declare dso_local i32 @virtqueue_add_buf(i32, %struct.scatterlist*, i32, i32, %struct.page*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
