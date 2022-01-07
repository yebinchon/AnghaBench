; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_queue_get_desc.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wan/extr_ixp4xx_hss.c_queue_get_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.port = type { i32 }
%struct.desc = type { i32 }

@TX_DESCS = common dso_local global i32 0, align 4
@RX_DESCS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.port*, i32)* @queue_get_desc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @queue_get_desc(i32 %0, %struct.port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.desc*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.port* %1, %struct.port** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @qmgr_get_entry(i32 %12)
  store i32 %13, i32* %8, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %72

16:                                               ; preds = %3
  %17 = load i32, i32* %8, align 4
  %18 = and i32 %17, 31
  %19 = call i32 @BUG_ON(i32 %18)
  %20 = load i32, i32* %7, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load %struct.port*, %struct.port** %6, align 8
  %24 = call i32 @tx_desc_phys(%struct.port* %23, i32 0)
  br label %28

25:                                               ; preds = %16
  %26 = load %struct.port*, %struct.port** %6, align 8
  %27 = call i32 @rx_desc_phys(%struct.port* %26, i32 0)
  br label %28

28:                                               ; preds = %25, %22
  %29 = phi i32 [ %24, %22 ], [ %27, %25 ]
  store i32 %29, i32* %9, align 4
  %30 = load i32, i32* %7, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %28
  %33 = load %struct.port*, %struct.port** %6, align 8
  %34 = call %struct.desc* @tx_desc_ptr(%struct.port* %33, i32 0)
  br label %38

35:                                               ; preds = %28
  %36 = load %struct.port*, %struct.port** %6, align 8
  %37 = call %struct.desc* @rx_desc_ptr(%struct.port* %36, i32 0)
  br label %38

38:                                               ; preds = %35, %32
  %39 = phi %struct.desc* [ %34, %32 ], [ %37, %35 ]
  store %struct.desc* %39, %struct.desc** %11, align 8
  %40 = load i32, i32* %8, align 4
  %41 = load i32, i32* %9, align 4
  %42 = sub nsw i32 %40, %41
  %43 = sext i32 %42 to i64
  %44 = udiv i64 %43, 4
  %45 = trunc i64 %44 to i32
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %10, align 4
  %47 = load i32, i32* %7, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %38
  %50 = load i32, i32* @TX_DESCS, align 4
  br label %53

51:                                               ; preds = %38
  %52 = load i32, i32* @RX_DESCS, align 4
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %55 = icmp sge i32 %46, %54
  %56 = zext i1 %55 to i32
  %57 = call i32 @BUG_ON(i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load %struct.desc*, %struct.desc** %11, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.desc, %struct.desc* %59, i64 %61
  %63 = call i32 @debug_desc(i32 %58, %struct.desc* %62)
  %64 = load %struct.desc*, %struct.desc** %11, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.desc, %struct.desc* %64, i64 %66
  %68 = getelementptr inbounds %struct.desc, %struct.desc* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @BUG_ON(i32 %69)
  %71 = load i32, i32* %10, align 4
  store i32 %71, i32* %4, align 4
  br label %72

72:                                               ; preds = %53, %15
  %73 = load i32, i32* %4, align 4
  ret i32 %73
}

declare dso_local i32 @qmgr_get_entry(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @tx_desc_phys(%struct.port*, i32) #1

declare dso_local i32 @rx_desc_phys(%struct.port*, i32) #1

declare dso_local %struct.desc* @tx_desc_ptr(%struct.port*, i32) #1

declare dso_local %struct.desc* @rx_desc_ptr(%struct.port*, i32) #1

declare dso_local i32 @debug_desc(i32, %struct.desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
