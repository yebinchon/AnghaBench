; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c___qeth_fill_buffer_frag.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/net/extr_qeth_core_main.c___qeth_fill_buffer_frag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32, i8* }
%struct.qdio_buffer = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i8*, i32, i8* }
%struct.skb_frag_struct = type { i64, i32, i32 }
%struct.TYPE_4__ = type { i32, %struct.skb_frag_struct* }

@SBAL_EFLAGS_MIDDLE_FRAG = common dso_local global i8* null, align 8
@SBAL_EFLAGS_FIRST_FRAG = common dso_local global i8* null, align 8
@PAGE_SHIFT = common dso_local global i64 0, align 8
@SBAL_EFLAGS_LAST_FRAG = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.qdio_buffer*, i32, i32*)* @__qeth_fill_buffer_frag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__qeth_fill_buffer_frag(%struct.sk_buff* %0, %struct.qdio_buffer* %1, i32 %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.qdio_buffer*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca %struct.skb_frag_struct*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.qdio_buffer* %1, %struct.qdio_buffer** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32* %3, i32** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %16 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %15)
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32*, i32** %8, align 8
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  store i32 0, i32* %14, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %32

23:                                               ; preds = %4
  %24 = load i8*, i8** @SBAL_EFLAGS_MIDDLE_FRAG, align 8
  %25 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %26 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %25, i32 0, i32 0
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i32 0, i32 2
  store i8* %24, i8** %31, align 8
  br label %41

32:                                               ; preds = %4
  %33 = load i8*, i8** @SBAL_EFLAGS_FIRST_FRAG, align 8
  %34 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %35 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %34, i32 0, i32 0
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 2
  store i8* %33, i8** %40, align 8
  br label %41

41:                                               ; preds = %32, %23
  %42 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %43 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = sub nsw i32 %44, %47
  store i32 %48, i32* %14, align 4
  %49 = load i32, i32* %14, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %72

51:                                               ; preds = %41
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %52, i32 0, i32 2
  %54 = load i8*, i8** %53, align 8
  %55 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %56 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %55, i32 0, i32 0
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load i32, i32* %12, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  store i8* %54, i8** %61, align 8
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %64 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %63, i32 0, i32 0
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %64, align 8
  %66 = load i32, i32* %12, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i64 %67
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store i32 %62, i32* %69, align 8
  %70 = load i32, i32* %12, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %12, align 4
  br label %72

72:                                               ; preds = %51, %41
  store i32 0, i32* %13, align 4
  br label %73

73:                                               ; preds = %139, %72
  %74 = load i32, i32* %13, align 4
  %75 = load i32, i32* %10, align 4
  %76 = icmp slt i32 %74, %75
  br i1 %76, label %77, label %142

77:                                               ; preds = %73
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = call %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff* %78)
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %80, align 8
  %82 = load i32, i32* %13, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %81, i64 %83
  store %struct.skb_frag_struct* %84, %struct.skb_frag_struct** %9, align 8
  %85 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %9, align 8
  %86 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %85, i32 0, i32 2
  %87 = load i32, i32* %86, align 4
  %88 = call i64 @page_to_pfn(i32 %87)
  %89 = load i64, i64* @PAGE_SHIFT, align 8
  %90 = shl i64 %88, %89
  %91 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %9, align 8
  %92 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = add i64 %90, %93
  store i64 %94, i64* %11, align 8
  %95 = load i64, i64* %11, align 8
  %96 = inttoptr i64 %95 to i8*
  %97 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %98 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %97, i32 0, i32 0
  %99 = load %struct.TYPE_3__*, %struct.TYPE_3__** %98, align 8
  %100 = load i32, i32* %12, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  store i8* %96, i8** %103, align 8
  %104 = load %struct.skb_frag_struct*, %struct.skb_frag_struct** %9, align 8
  %105 = getelementptr inbounds %struct.skb_frag_struct, %struct.skb_frag_struct* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %108 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %107, i32 0, i32 0
  %109 = load %struct.TYPE_3__*, %struct.TYPE_3__** %108, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %112, i32 0, i32 1
  store i32 %106, i32* %113, align 8
  %114 = load i32, i32* %13, align 4
  %115 = load i32, i32* %10, align 4
  %116 = sub nsw i32 %115, 1
  %117 = icmp slt i32 %114, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %77
  %119 = load i8*, i8** @SBAL_EFLAGS_MIDDLE_FRAG, align 8
  %120 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %121 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %120, i32 0, i32 0
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %121, align 8
  %123 = load i32, i32* %12, align 4
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i64 %124
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 2
  store i8* %119, i8** %126, align 8
  br label %136

127:                                              ; preds = %77
  %128 = load i8*, i8** @SBAL_EFLAGS_LAST_FRAG, align 8
  %129 = load %struct.qdio_buffer*, %struct.qdio_buffer** %6, align 8
  %130 = getelementptr inbounds %struct.qdio_buffer, %struct.qdio_buffer* %129, i32 0, i32 0
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %12, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 2
  store i8* %128, i8** %135, align 8
  br label %136

136:                                              ; preds = %127, %118
  %137 = load i32, i32* %12, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %12, align 4
  br label %139

139:                                              ; preds = %136
  %140 = load i32, i32* %13, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %13, align 4
  br label %73

142:                                              ; preds = %73
  %143 = load i32, i32* %12, align 4
  %144 = load i32*, i32** %8, align 8
  store i32 %143, i32* %144, align 4
  ret void
}

declare dso_local %struct.TYPE_4__* @skb_shinfo(%struct.sk_buff*) #1

declare dso_local i64 @page_to_pfn(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
