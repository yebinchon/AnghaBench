; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_setup_pioqueue_tx.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43/extr_pio.c_b43_setup_pioqueue_tx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43_pio_txqueue = type { i32, i32, i32, i32, %struct.b43_pio_txpacket*, i32, i64, %struct.b43_wldev* }
%struct.b43_pio_txpacket = type { i32, i32, %struct.b43_pio_txqueue* }
%struct.b43_wldev = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@B43_PIO_MAX_NR_TXPACKETS = common dso_local global i32 0, align 4
@B43_PIO_TXQBUFSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.b43_pio_txqueue* (%struct.b43_wldev*, i32)* @b43_setup_pioqueue_tx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.b43_pio_txqueue* @b43_setup_pioqueue_tx(%struct.b43_wldev* %0, i32 %1) #0 {
  %3 = alloca %struct.b43_pio_txqueue*, align 8
  %4 = alloca %struct.b43_wldev*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.b43_pio_txqueue*, align 8
  %7 = alloca %struct.b43_pio_txpacket*, align 8
  %8 = alloca i32, align 4
  store %struct.b43_wldev* %0, %struct.b43_wldev** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.b43_pio_txqueue* @kzalloc(i32 48, i32 %9)
  store %struct.b43_pio_txqueue* %10, %struct.b43_pio_txqueue** %6, align 8
  %11 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %12 = icmp ne %struct.b43_pio_txqueue* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store %struct.b43_pio_txqueue* null, %struct.b43_pio_txqueue** %3, align 8
  br label %93

14:                                               ; preds = %2
  %15 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %16 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %17 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %16, i32 0, i32 7
  store %struct.b43_wldev* %15, %struct.b43_wldev** %17, align 8
  %18 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %19 = getelementptr inbounds %struct.b43_wldev, %struct.b43_wldev* %18, i32 0, i32 0
  %20 = load %struct.TYPE_2__*, %struct.TYPE_2__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %24 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = call i64 @index_to_pioqueue_base(%struct.b43_wldev* %25, i32 %26)
  %28 = load %struct.b43_wldev*, %struct.b43_wldev** %4, align 8
  %29 = call i64 @pio_txqueue_offset(%struct.b43_wldev* %28)
  %30 = add nsw i64 %27, %29
  %31 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %32 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %31, i32 0, i32 6
  store i64 %30, i64* %32, align 8
  %33 = load i32, i32* %5, align 4
  %34 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %35 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %34, i32 0, i32 1
  store i32 %33, i32* %35, align 4
  %36 = load i32, i32* @B43_PIO_MAX_NR_TXPACKETS, align 4
  %37 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %38 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %37, i32 0, i32 5
  store i32 %36, i32* %38, align 8
  %39 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %40 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %41, 8
  br i1 %42, label %43, label %46

43:                                               ; preds = %14
  %44 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %45 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %44, i32 0, i32 2
  store i32 1920, i32* %45, align 8
  br label %56

46:                                               ; preds = %14
  %47 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %48 = load i32, i32* @B43_PIO_TXQBUFSIZE, align 4
  %49 = call i32 @b43_piotx_read16(%struct.b43_pio_txqueue* %47, i32 %48)
  %50 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %51 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %50, i32 0, i32 2
  store i32 %49, i32* %51, align 8
  %52 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %53 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = sub nsw i32 %54, 80
  store i32 %55, i32* %53, align 8
  br label %56

56:                                               ; preds = %46, %43
  %57 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %58 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %57, i32 0, i32 3
  %59 = call i32 @INIT_LIST_HEAD(i32* %58)
  store i32 0, i32* %8, align 4
  br label %60

60:                                               ; preds = %88, %56
  %61 = load i32, i32* %8, align 4
  %62 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %63 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %62, i32 0, i32 4
  %64 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %63, align 8
  %65 = call i32 @ARRAY_SIZE(%struct.b43_pio_txpacket* %64)
  %66 = icmp ult i32 %61, %65
  br i1 %66, label %67, label %91

67:                                               ; preds = %60
  %68 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %69 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %68, i32 0, i32 4
  %70 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %69, align 8
  %71 = load i32, i32* %8, align 4
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %70, i64 %72
  store %struct.b43_pio_txpacket* %73, %struct.b43_pio_txpacket** %7, align 8
  %74 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %7, align 8
  %75 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %74, i32 0, i32 1
  %76 = call i32 @INIT_LIST_HEAD(i32* %75)
  %77 = load i32, i32* %8, align 4
  %78 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %7, align 8
  %79 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %78, i32 0, i32 0
  store i32 %77, i32* %79, align 8
  %80 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %81 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %7, align 8
  %82 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %81, i32 0, i32 2
  store %struct.b43_pio_txqueue* %80, %struct.b43_pio_txqueue** %82, align 8
  %83 = load %struct.b43_pio_txpacket*, %struct.b43_pio_txpacket** %7, align 8
  %84 = getelementptr inbounds %struct.b43_pio_txpacket, %struct.b43_pio_txpacket* %83, i32 0, i32 1
  %85 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  %86 = getelementptr inbounds %struct.b43_pio_txqueue, %struct.b43_pio_txqueue* %85, i32 0, i32 3
  %87 = call i32 @list_add(i32* %84, i32* %86)
  br label %88

88:                                               ; preds = %67
  %89 = load i32, i32* %8, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %60

91:                                               ; preds = %60
  %92 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %6, align 8
  store %struct.b43_pio_txqueue* %92, %struct.b43_pio_txqueue** %3, align 8
  br label %93

93:                                               ; preds = %91, %13
  %94 = load %struct.b43_pio_txqueue*, %struct.b43_pio_txqueue** %3, align 8
  ret %struct.b43_pio_txqueue* %94
}

declare dso_local %struct.b43_pio_txqueue* @kzalloc(i32, i32) #1

declare dso_local i64 @index_to_pioqueue_base(%struct.b43_wldev*, i32) #1

declare dso_local i64 @pio_txqueue_offset(%struct.b43_wldev*) #1

declare dso_local i32 @b43_piotx_read16(%struct.b43_pio_txqueue*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ARRAY_SIZE(%struct.b43_pio_txpacket*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
