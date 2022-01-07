; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rbr_refill.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/extr_niu.c_niu_rbr_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.niu = type { i32 }
%struct.rx_ring_info = type { i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.niu*, %struct.rx_ring_info*, i32)* @niu_rbr_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @niu_rbr_refill(%struct.niu* %0, %struct.rx_ring_info* %1, i32 %2) #0 {
  %4 = alloca %struct.niu*, align 8
  %5 = alloca %struct.rx_ring_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.niu* %0, %struct.niu** %4, align 8
  store %struct.rx_ring_info* %1, %struct.rx_ring_info** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %10 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %7, align 4
  %12 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %13 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = add nsw i32 %14, 1
  store i32 %15, i32* %13, align 4
  %16 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %17 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %20 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = srem i32 %18, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %85

24:                                               ; preds = %3
  %25 = load %struct.niu*, %struct.niu** %4, align 8
  %26 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @niu_rbr_add_page(%struct.niu* %25, %struct.rx_ring_info* %26, i32 %27, i32 %28)
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %8, align 4
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %35 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %36, -1
  store i32 %37, i32* %35, align 4
  br label %85

38:                                               ; preds = %24
  %39 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %40 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %43 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, %41
  store i32 %45, i32* %43, align 4
  %46 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %47 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %50 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = icmp sgt i32 %48, %51
  %53 = zext i1 %52 to i32
  %54 = call i32 @BUG_ON(i32 %53)
  %55 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %56 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %59 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = icmp eq i32 %57, %60
  br i1 %61, label %62, label %65

62:                                               ; preds = %38
  %63 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %64 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %63, i32 0, i32 0
  store i32 0, i32* %64, align 4
  br label %65

65:                                               ; preds = %62, %38
  %66 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %67 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %70 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %69, i32 0, i32 4
  %71 = load i32, i32* %70, align 4
  %72 = icmp sge i32 %68, %71
  br i1 %72, label %73, label %84

73:                                               ; preds = %65
  %74 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %75 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @RBR_KICK(i32 %76)
  %78 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %79 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @nw64(i32 %77, i32 %80)
  %82 = load %struct.rx_ring_info*, %struct.rx_ring_info** %5, align 8
  %83 = getelementptr inbounds %struct.rx_ring_info, %struct.rx_ring_info* %82, i32 0, i32 1
  store i32 0, i32* %83, align 4
  br label %84

84:                                               ; preds = %73, %65
  br label %85

85:                                               ; preds = %33, %84, %3
  ret void
}

declare dso_local i32 @niu_rbr_add_page(%struct.niu*, %struct.rx_ring_info*, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @nw64(i32, i32) #1

declare dso_local i32 @RBR_KICK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
