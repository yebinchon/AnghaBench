; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_copy_frags.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/cxgb4/extr_sge.c_copy_frags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skb_shared_info = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64, i32 }
%struct.pkt_gl = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skb_shared_info*, %struct.pkt_gl*, i32)* @copy_frags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @copy_frags(%struct.skb_shared_info* %0, %struct.pkt_gl* %1, i32 %2) #0 {
  %4 = alloca %struct.skb_shared_info*, align 8
  %5 = alloca %struct.pkt_gl*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.skb_shared_info* %0, %struct.skb_shared_info** %4, align 8
  store %struct.pkt_gl* %1, %struct.pkt_gl** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %9 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %8, i32 0, i32 1
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i64 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %15 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %14, i32 0, i32 1
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  store i32 %13, i32* %18, align 8
  %19 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %20 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %19, i32 0, i32 1
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i64 0
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load i32, i32* %6, align 4
  %26 = zext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %29 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %28, i32 0, i32 1
  %30 = load %struct.TYPE_3__*, %struct.TYPE_3__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %30, i64 0
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 1
  store i64 %27, i64* %32, align 8
  %33 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %34 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %33, i32 0, i32 1
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i64 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i32, i32* %6, align 4
  %40 = zext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  %42 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %43 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %42, i32 0, i32 1
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 0
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 0
  store i64 %41, i64* %46, align 8
  %47 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %48 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %51 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %50, i32 0, i32 0
  store i32 %49, i32* %51, align 8
  %52 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %53 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 1
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %3
  %59 = load %struct.skb_shared_info*, %struct.skb_shared_info** %4, align 8
  %60 = getelementptr inbounds %struct.skb_shared_info, %struct.skb_shared_info* %59, i32 0, i32 1
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i64 1
  %63 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %64 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %63, i32 0, i32 1
  %65 = load %struct.TYPE_4__*, %struct.TYPE_4__** %64, align 8
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i64 1
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = mul i64 %68, 4
  %70 = trunc i64 %69 to i32
  %71 = call i32 @memcpy(%struct.TYPE_3__* %62, %struct.TYPE_4__* %66, i32 %70)
  br label %72

72:                                               ; preds = %58, %3
  %73 = load %struct.pkt_gl*, %struct.pkt_gl** %5, align 8
  %74 = getelementptr inbounds %struct.pkt_gl, %struct.pkt_gl* %73, i32 0, i32 1
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = load i32, i32* %7, align 4
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i64 %77
  %79 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = call i32 @get_page(i32 %80)
  ret void
}

declare dso_local i32 @memcpy(%struct.TYPE_3__*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @get_page(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
