; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_pio_tx_packet.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/wireless/b43legacy/extr_pio.c_pio_tx_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.b43legacy_pio_txpacket = type { i32, %struct.sk_buff*, %struct.b43legacy_pioqueue* }
%struct.sk_buff = type { i64 }
%struct.b43legacy_pioqueue = type { i64, i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"PIO queue too small. Dropping packet.\0A\00", align 1
@B43legacy_PIO_MAXTXDEVQPACKETS = common dso_local global i64 0, align 8
@EBUSY = common dso_local global i32 0, align 4
@ENOKEY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.b43legacy_pio_txpacket*)* @pio_tx_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pio_tx_packet(%struct.b43legacy_pio_txpacket* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.b43legacy_pio_txpacket*, align 8
  %4 = alloca %struct.b43legacy_pioqueue*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.b43legacy_pio_txpacket* %0, %struct.b43legacy_pio_txpacket** %3, align 8
  %8 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %9 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %8, i32 0, i32 2
  %10 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %9, align 8
  store %struct.b43legacy_pioqueue* %10, %struct.b43legacy_pioqueue** %4, align 8
  %11 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %12 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %11, i32 0, i32 1
  %13 = load %struct.sk_buff*, %struct.sk_buff** %12, align 8
  store %struct.sk_buff* %13, %struct.sk_buff** %5, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = add i64 %16, 4
  store i64 %17, i64* %6, align 8
  %18 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %19 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = icmp slt i64 %20, %21
  br i1 %22, label %23, label %32

23:                                               ; preds = %1
  %24 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %25 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %24, i32 0, i32 4
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @b43legacywarn(i32 %28, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %30 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %31 = call i32 @free_txpacket(%struct.b43legacy_pio_txpacket* %30, i32 1)
  store i32 0, i32* %2, align 4
  br label %100

32:                                               ; preds = %1
  %33 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %34 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @B43legacy_PIO_MAXTXDEVQPACKETS, align 8
  %37 = icmp sgt i64 %35, %36
  %38 = zext i1 %37 to i32
  %39 = call i32 @B43legacy_WARN_ON(i32 %38)
  %40 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %41 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %44 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %42, %45
  %47 = zext i1 %46 to i32
  %48 = call i32 @B43legacy_WARN_ON(i32 %47)
  %49 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %50 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @B43legacy_PIO_MAXTXDEVQPACKETS, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %32
  %55 = load i32, i32* @EBUSY, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %100

57:                                               ; preds = %32
  %58 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %59 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %58, i32 0, i32 2
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* %6, align 8
  %62 = add nsw i64 %60, %61
  %63 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %64 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %62, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %57
  %68 = load i32, i32* @EBUSY, align 4
  %69 = sub nsw i32 0, %68
  store i32 %69, i32* %2, align 4
  br label %100

70:                                               ; preds = %57
  %71 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %74 = call i32 @pio_tx_write_fragment(%struct.b43legacy_pioqueue* %71, %struct.sk_buff* %72, %struct.b43legacy_pio_txpacket* %73, i32 4)
  store i32 %74, i32* %7, align 4
  %75 = load i32, i32* %7, align 4
  %76 = load i32, i32* @ENOKEY, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp eq i32 %75, %77
  %79 = zext i1 %78 to i32
  %80 = call i64 @unlikely(i32 %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %85

82:                                               ; preds = %70
  %83 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %84 = call i32 @free_txpacket(%struct.b43legacy_pio_txpacket* %83, i32 1)
  store i32 0, i32* %2, align 4
  br label %100

85:                                               ; preds = %70
  %86 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %87 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %87, align 8
  %90 = load i64, i64* %6, align 8
  %91 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %92 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %90
  store i64 %94, i64* %92, align 8
  %95 = load %struct.b43legacy_pio_txpacket*, %struct.b43legacy_pio_txpacket** %3, align 8
  %96 = getelementptr inbounds %struct.b43legacy_pio_txpacket, %struct.b43legacy_pio_txpacket* %95, i32 0, i32 0
  %97 = load %struct.b43legacy_pioqueue*, %struct.b43legacy_pioqueue** %4, align 8
  %98 = getelementptr inbounds %struct.b43legacy_pioqueue, %struct.b43legacy_pioqueue* %97, i32 0, i32 3
  %99 = call i32 @list_move_tail(i32* %96, i32* %98)
  store i32 0, i32* %2, align 4
  br label %100

100:                                              ; preds = %85, %82, %67, %54, %23
  %101 = load i32, i32* %2, align 4
  ret i32 %101
}

declare dso_local i32 @b43legacywarn(i32, i8*) #1

declare dso_local i32 @free_txpacket(%struct.b43legacy_pio_txpacket*, i32) #1

declare dso_local i32 @B43legacy_WARN_ON(i32) #1

declare dso_local i32 @pio_tx_write_fragment(%struct.b43legacy_pioqueue*, %struct.sk_buff*, %struct.b43legacy_pio_txpacket*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @list_move_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
