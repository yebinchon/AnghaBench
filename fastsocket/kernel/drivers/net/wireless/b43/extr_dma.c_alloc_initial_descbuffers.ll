; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_alloc_initial_descbuffers.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_dma.c_alloc_initial_descbuffers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_dmaring = type { i32, i32, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)* }
%struct.b43_dmadesc_generic = type { i32 }
%struct.b43_dmadesc_meta = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Failed to allocate initial descbuffers\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43_dmaring*)* @alloc_initial_descbuffers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alloc_initial_descbuffers(%struct.b43_dmaring* %0) #0 {
  %2 = alloca %struct.b43_dmaring*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.b43_dmadesc_generic*, align 8
  %6 = alloca %struct.b43_dmadesc_meta*, align 8
  store %struct.b43_dmaring* %0, %struct.b43_dmaring** %2, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %4, align 4
  store i32 0, i32* %3, align 4
  br label %9

9:                                                ; preds = %39, %1
  %10 = load i32, i32* %3, align 4
  %11 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %12 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = icmp slt i32 %10, %13
  br i1 %14, label %15, label %42

15:                                               ; preds = %9
  %16 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %17 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %16, i32 0, i32 3
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %19, align 8
  %21 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %22 = load i32, i32* %3, align 4
  %23 = call %struct.b43_dmadesc_generic* %20(%struct.b43_dmaring* %21, i32 %22, %struct.b43_dmadesc_meta** %6)
  store %struct.b43_dmadesc_generic* %23, %struct.b43_dmadesc_generic** %5, align 8
  %24 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %25 = load %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_generic** %5, align 8
  %26 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %6, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @setup_rx_descbuffer(%struct.b43_dmaring* %24, %struct.b43_dmadesc_generic* %25, %struct.b43_dmadesc_meta* %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %15
  %32 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %33 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %32, i32 0, i32 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @b43err(i32 %36, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %51

38:                                               ; preds = %15
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %3, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %3, align 4
  br label %9

42:                                               ; preds = %9
  %43 = call i32 (...) @mb()
  %44 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %45 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %48 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %4, align 4
  br label %49

49:                                               ; preds = %81, %42
  %50 = load i32, i32* %4, align 4
  ret i32 %50

51:                                               ; preds = %31
  %52 = load i32, i32* %3, align 4
  %53 = add nsw i32 %52, -1
  store i32 %53, i32* %3, align 4
  br label %54

54:                                               ; preds = %78, %51
  %55 = load i32, i32* %3, align 4
  %56 = icmp sge i32 %55, 0
  br i1 %56, label %57, label %81

57:                                               ; preds = %54
  %58 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %59 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %58, i32 0, i32 3
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)*, %struct.b43_dmadesc_generic* (%struct.b43_dmaring*, i32, %struct.b43_dmadesc_meta**)** %61, align 8
  %63 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %64 = load i32, i32* %3, align 4
  %65 = call %struct.b43_dmadesc_generic* %62(%struct.b43_dmaring* %63, i32 %64, %struct.b43_dmadesc_meta** %6)
  store %struct.b43_dmadesc_generic* %65, %struct.b43_dmadesc_generic** %5, align 8
  %66 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %67 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %6, align 8
  %68 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.b43_dmaring*, %struct.b43_dmaring** %2, align 8
  %71 = getelementptr inbounds %struct.b43_dmaring, %struct.b43_dmaring* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @unmap_descbuffer(%struct.b43_dmaring* %66, i32 %69, i32 %72, i32 0)
  %74 = load %struct.b43_dmadesc_meta*, %struct.b43_dmadesc_meta** %6, align 8
  %75 = getelementptr inbounds %struct.b43_dmadesc_meta, %struct.b43_dmadesc_meta* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @dev_kfree_skb(i32 %76)
  br label %78

78:                                               ; preds = %57
  %79 = load i32, i32* %3, align 4
  %80 = add nsw i32 %79, -1
  store i32 %80, i32* %3, align 4
  br label %54

81:                                               ; preds = %54
  br label %49
}

declare dso_local i32 @setup_rx_descbuffer(%struct.b43_dmaring*, %struct.b43_dmadesc_generic*, %struct.b43_dmadesc_meta*, i32) #1

declare dso_local i32 @b43err(i32, i8*) #1

declare dso_local i32 @mb(...) #1

declare dso_local i32 @unmap_descbuffer(%struct.b43_dmaring*, i32, i32, i32) #1

declare dso_local i32 @dev_kfree_skb(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
