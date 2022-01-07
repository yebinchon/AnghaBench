; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_chk_ssb.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/net/tokenring/extr_tms380tr.c_tms380tr_chk_ssb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i16, i16* }

@STS_IRQ_TRANSMIT_STATUS = common dso_local global i16 0, align 2
@STS_IRQ_RECEIVE_STATUS = common dso_local global i16 0, align 2
@STS_IRQ_COMMAND_STATUS = common dso_local global i16 0, align 2
@STS_IRQ_RING_STATUS = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (%struct.net_local*, i16)* @tms380tr_chk_ssb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i8 @tms380tr_chk_ssb(%struct.net_local* %0, i16 zeroext %1) #0 {
  %3 = alloca i8, align 1
  %4 = alloca %struct.net_local*, align 8
  %5 = alloca i16, align 2
  %6 = alloca %struct.TYPE_2__*, align 8
  store %struct.net_local* %0, %struct.net_local** %4, align 8
  store i16 %1, i16* %5, align 2
  %7 = load %struct.net_local*, %struct.net_local** %4, align 8
  %8 = getelementptr inbounds %struct.net_local, %struct.net_local* %7, i32 0, i32 0
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load i16, i16* %5, align 2
  %10 = zext i16 %9 to i32
  %11 = load i16, i16* @STS_IRQ_TRANSMIT_STATUS, align 2
  %12 = zext i16 %11 to i32
  %13 = icmp ne i32 %10, %12
  br i1 %13, label %14, label %33

14:                                               ; preds = %2
  %15 = load i16, i16* %5, align 2
  %16 = zext i16 %15 to i32
  %17 = load i16, i16* @STS_IRQ_RECEIVE_STATUS, align 2
  %18 = zext i16 %17 to i32
  %19 = icmp ne i32 %16, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %14
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @STS_IRQ_COMMAND_STATUS, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp ne i32 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %20
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @STS_IRQ_RING_STATUS, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp ne i32 %28, %30
  br i1 %31, label %32, label %33

32:                                               ; preds = %26
  store i8 1, i8* %3, align 1
  br label %82

33:                                               ; preds = %26, %20, %14, %2
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i16, i16* %35, align 8
  %37 = zext i16 %36 to i32
  %38 = icmp eq i32 %37, 65535
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  store i8 0, i8* %3, align 1
  br label %82

40:                                               ; preds = %33
  %41 = load i16, i16* %5, align 2
  %42 = zext i16 %41 to i32
  %43 = load i16, i16* @STS_IRQ_COMMAND_STATUS, align 2
  %44 = zext i16 %43 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  store i8 1, i8* %3, align 1
  br label %82

47:                                               ; preds = %40
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i16*, i16** %49, align 8
  %51 = getelementptr inbounds i16, i16* %50, i64 0
  %52 = load i16, i16* %51, align 2
  %53 = zext i16 %52 to i32
  %54 = icmp eq i32 %53, 65535
  br i1 %54, label %55, label %56

55:                                               ; preds = %47
  store i8 0, i8* %3, align 1
  br label %82

56:                                               ; preds = %47
  %57 = load i16, i16* %5, align 2
  %58 = zext i16 %57 to i32
  %59 = load i16, i16* @STS_IRQ_RING_STATUS, align 2
  %60 = zext i16 %59 to i32
  %61 = icmp eq i32 %58, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  store i8 1, i8* %3, align 1
  br label %82

63:                                               ; preds = %56
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i16*, i16** %65, align 8
  %67 = getelementptr inbounds i16, i16* %66, i64 1
  %68 = load i16, i16* %67, align 2
  %69 = zext i16 %68 to i32
  %70 = icmp eq i32 %69, 65535
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i8 0, i8* %3, align 1
  br label %82

72:                                               ; preds = %63
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i16*, i16** %74, align 8
  %76 = getelementptr inbounds i16, i16* %75, i64 2
  %77 = load i16, i16* %76, align 2
  %78 = zext i16 %77 to i32
  %79 = icmp eq i32 %78, 65535
  br i1 %79, label %80, label %81

80:                                               ; preds = %72
  store i8 0, i8* %3, align 1
  br label %82

81:                                               ; preds = %72
  store i8 1, i8* %3, align 1
  br label %82

82:                                               ; preds = %81, %80, %71, %62, %55, %46, %39, %32
  %83 = load i8, i8* %3, align 1
  ret i8 %83
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
