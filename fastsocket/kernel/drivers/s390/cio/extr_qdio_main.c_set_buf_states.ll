; ModuleID = '/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_set_buf_states.c'
source_filename = "/home/carl/AnghaBench/fastsocket/kernel/drivers/s390/cio/extr_qdio_main.c_set_buf_states.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qdio_q = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@QDIO_MAX_BUFFERS_MASK = common dso_local global i32 0, align 4
@QDIO_MAX_BUFFERS_PER_Q = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.qdio_q*, i32, i8, i32)* @set_buf_states to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_buf_states(%struct.qdio_q* %0, i32 %1, i8 zeroext %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.qdio_q*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8, align 1
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.qdio_q* %0, %struct.qdio_q** %6, align 8
  store i32 %1, i32* %7, align 4
  store i8 %2, i8* %8, align 1
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %7, align 4
  %12 = load i32, i32* @QDIO_MAX_BUFFERS_MASK, align 4
  %13 = icmp sgt i32 %11, %12
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @QDIO_MAX_BUFFERS_PER_Q, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @BUG_ON(i32 %19)
  %21 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %22 = call i64 @is_qebsm(%struct.qdio_q* %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %4
  %25 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %26 = load i8, i8* %8, align 1
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call i32 @qdio_do_sqbs(%struct.qdio_q* %25, i8 zeroext %26, i32 %27, i32 %28)
  store i32 %29, i32* %5, align 4
  br label %52

30:                                               ; preds = %4
  store i32 0, i32* %10, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = icmp slt i32 %32, %33
  br i1 %34, label %35, label %50

35:                                               ; preds = %31
  %36 = load %struct.qdio_q*, %struct.qdio_q** %6, align 8
  %37 = getelementptr inbounds %struct.qdio_q, %struct.qdio_q* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i8, i8* %8, align 1
  %44 = call i32 @xchg(i32* %42, i8 zeroext %43)
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @next_buf(i32 %45)
  store i32 %46, i32* %7, align 4
  br label %47

47:                                               ; preds = %35
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %10, align 4
  br label %31

50:                                               ; preds = %31
  %51 = load i32, i32* %9, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %24
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i64 @is_qebsm(%struct.qdio_q*) #1

declare dso_local i32 @qdio_do_sqbs(%struct.qdio_q*, i8 zeroext, i32, i32) #1

declare dso_local i32 @xchg(i32*, i8 zeroext) #1

declare dso_local i32 @next_buf(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
